module SuperFunny
    class Joke
        attr_accessor :type, :setup, :punchline
        @@all = []

        def initialize(attributes)
            @type = type
            @setup = setup
            @punchline = punchline
            @@all <<self
        end

        # def add_color
        #     case 
        # end

        def self.general
    
        end

        def self.all
            @@all
        end

        # def self.new_from_api(jokes)
        #     jokes.each { |joke| new(joke)}
        # end
    


    end
end
