
require "pry"
class Application

    def call env
        resp = Rack::Response.new
        req = Rack::Request.new(env)
        binding.pry
        hour = Time.now.to_s.split(' ')[1].split(":")[0].to_i
        if hour > 0 && hour < 12
            resp.write "Good Morning!"
        elsif hour > 12 && hour < 24
            resp.write "Good Afternoon!"
        end 
        resp.finish
    end 

end 