class Refrigerator
    attr_reader :capacity, :drinks

    def initialize(drinks = [], capacity = 12)
	@capacity = capacity
	@drinks = drinks
    end

    def count
	@drinks.count
    end

    def is_full?
	@capacity == self.count
    end

    def is_empty?
	0 == self.count
    end

    def remove
	drinks.delete_at(drinks.count-1)
    end 

    def add(item)
	drinks << item
    end

end
