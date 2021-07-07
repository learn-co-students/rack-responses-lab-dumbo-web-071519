class Application

  def call(env)
    resp = Rack::Response.new
    if Time.now.hour > 10
        resp.write "Good Afternoon!"
    else 
        resp.write "Good Morning!"
    end
    resp.finish
  end

end