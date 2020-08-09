

module SuperFunny
    class CLI 

        def call
            puts "Welcome to Super Funny!"
            menu
        end

        def menu(data = nil)
            data = APIService.new.get_data
            categories = data.map{|d| d["category"]}.uniq
            puts " "
            puts "If you want to laugh type 'joke' ".yellow
            puts "Type 'exit' to exit".yellow
            puts " "
            input = gets.chomp.downcase
                if input == "joke"
                category_list(data)    
            elsif input == "exit"
                goodbye
            else
                invalid_entry
                menu
            end
        end

        def category_list(data) 
            categories = data.map{|d| d["category"]}.uniq
            puts " "
            puts "Please type the number of the type of jokes you would like to hear:".yellow
            categories.each.with_index(1) {|category, index| puts "#{index}. #{category}"}
            puts " "
            input = gets.chomp.to_i

            if input > 0
                index = input-1
                puts " "
                puts "You selected #{categories[index]}".yellow
                puts " "
                category_selection(data, categories[index])

            else
                invalid_entry
                menu
            end
        end

        def category_selection(data, input)
            data.select do |joke|
                if joke["category"] == input
                    puts joke["setup"].blue
                    puts joke["delivery"].magenta
                    puts " "
                    puts " "
                end
            end
            menu
        end


        def invalid_entry
            puts " "
            puts "Invalid entry, please try again".red
            puts " "
            menu
        end

        def goodbye
            puts "Goodbye!".green
            exit
        end
    end
end



