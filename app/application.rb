class Application
  def call(env)
    res = Rack::Response.new
    reqs = Rack::Request.new(env)
  end
end
