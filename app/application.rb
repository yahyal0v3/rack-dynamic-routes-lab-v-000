class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split(/items/).last
      item = Item.all.detect {|instance| instance.name == item_name}
      resp.write item.price
    else
      resp.status = 404
    end
  end
end
