module SuperFunny
    class CLI

    def call
       # APIService.new.make_jokes
        puts "Welcome to Super Funny!"
        input = nil
        while input != "exit"
            puts "Type 'general' for a general joke or type 'programming' for a programming joke"
            puts "Type 'exit' to exit"
            input = gets.chomp.downcase
            case input
            when "general"
                general_joke
            when "programming"
                programming_joke
            when "exit"
                puts "Goodbye!"
            else
                puts "Sorry, don't understand".red
            end
        end

    end

    def general_joke
        puts "Here you go!"
        Joke
    end

    def programming_joke
        puts "Here you go!"
    end



end
end
