module SuperFunny
    class Joke
        attr_accessor :setup, :delivery, :category
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
        
    end
end
