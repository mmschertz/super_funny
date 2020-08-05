module SuperFunny
    class APIService


        
        def fetch_jokes
            uri = URI("https://official-joke-api.appspot.com/jokes/random")

            response = Net::HTTP.get_response(uri)
            parsed_response = JSON.parse(response.body)

        end

        def make_jokes
            Joke.new_from_api(fetch_jokes)
            puts parsed_response["type"]
            puts parsed_response["setup"]
            puts parsed_response["punchline"]
        end
    


    end
end

