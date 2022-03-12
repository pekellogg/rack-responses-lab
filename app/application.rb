class Application

    # def call(env)
    #     resp = Rack::Response.new
    #     greeting = Time.new.hour

    #     if greeting >= 12 
    #         resp.write "Good Afternoon!"
    #     else
    #         resp.write "Good Morning!"
    #     end
    #     resp.finish
    # end

    def call(env)
        resp = Rack::Response.new
        now = Time.now # why 2015?

        if now.hour >=12
          resp.write "Good Afternoon"
        else
          resp.write "Good Morning"
        end
        resp.finish
    end

end