

class Application

  def call(env)
    resp = Rack::Response.new

    current_Time = Time.now.hour

    if current_Time > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
 
    resp.finish
  end

end