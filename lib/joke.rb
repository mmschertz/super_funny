module SuperFunny
    class Joke
        attr_accessor :setup, :delivery, :category, :id, :type, :flags, :lang
        @@all = []

        def initialize(attributes)
            @setup = setup
            @delivery = delivery
            @category = category
            @@all << self
        end

        def self.all
            @@all
        end

        def self.find_by_index(index)
            @@all[index]
        end

        # def self.pun_joke
        #     @@all.select do |joke|
        #         joke.category.include?("Pun")
        #     end
        # end

        # def self.dark_joke
        #     @@all.select do |joke|
        #         joke.category.include?("Dark")
        #     end
        # end

        # def self.programming_joke
        #     @@all.select do |joke|
        #         joke.category.include?("Programming")
    
        #     end
        # end

        # def self.miscellaneous_joke
        #     @@all.select do |joke|
        #         joke.category.include?("Miscellaneous")
        #     end
        # end

        
    end
end
