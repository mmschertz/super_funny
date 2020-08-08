module SuperFunny
    class Joke
        attr_accessor :setup, :delivery, :category, :id, :type, :flags, :lang
        @@all = []

        def initialize(attributes)
            attributes.each { |k, v| send("#{k}=", v)}
            @@all << self
        end
        
        # def self.find_by_category(category)
        #     self.all.select do |category|
        #         joke.category == category
        #     end
        # end

        def self.all
            @@all
        end

        def self.find_by_index(index)
            @@all[index]
        end
    end
end
