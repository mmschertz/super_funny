module SuperFunny
    class APIService
        def get_data
            response = RestClient.get("https://sv443.net/jokeapi/v2/joke/Programming,Miscellaneous,Pun?blacklistFlags=nsfw,religious,political,racist,sexist&type=twopart&amount=10")
            jokes = JSON.parse(response.body)["jokes"]
            jokes.each do |joke|
                Joke.new(joke)

            end
        end    
    end
end  







