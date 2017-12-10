class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_mame = req.path.split(/items/).last
      item = Item.all.detect {|instance| instance.name == item_name}
      rep.write item.prics
  end
end
