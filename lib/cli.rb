

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
            puts "If you want to hear a joke type 'joke' "
            puts "Type 'exit' to exit"
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
            puts "Please type the number you're interested in!".yellow
            categories.each.with_index(1) {|category, index| puts "#{index}. #{category}"}
            input = gets.chomp.to_i

            if input <= data.size && input > 0
                index = input-1
                puts "You selected #{categories[index]}"
                print_setup(data)
                print_delivery(data)
            else
                invalid_entry
                call
                menu
            end
        end

        def print_setup(data)
            setups = data.map{ |d| d["setup"]}
            setups.each { |setup| puts "#{setup}"}
            puts " "
        end

        def print_delivery(data)
            deliveries = data.map{ |d| d["delivery"]}
            deliveries.each { |delivery| puts "#{delivery}"}
            puts " "
            menu
        end

        def invalid_entry
            puts " "
            puts "Invalid entry, try again".red
            puts " "
            menu
        end

        def goodbye
            puts "Goodbye!".green
            exit
        end

    end
end



