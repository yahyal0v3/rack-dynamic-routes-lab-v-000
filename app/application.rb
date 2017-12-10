class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      item = @@items.find {|i| i.name == item_name}
      if item != nil
        resp.write item.price
      else
        resp.write "Item not found"
        resp.status = 400
      end
    else
      resp.status = 404
    end
  end
end
