class HikesController < ApplicationController

def show
    if params["q"]
      city = params["q"]
      headers = {
       "
         "Accept" => "text/plain"}
          results = HTTParty.get(
        #"https://trailapi-trailapi.p.mashape.com/?lat&limit=25&lon&q[activities_activity_name_cont]&q[city_cont]&q[country_cont]&q[state_cont]=#{params["q"]}",
        #"https://trailapi-trailapi.p.mashape.com/?limit=25&q[city_cont]=#{city}",
        "https://trailapi-trailapi.p.mashape.com/?&q[city_cont]=#{city}",
        :headers => headers
       )
        @response = results["places"]


    end
  end



end
