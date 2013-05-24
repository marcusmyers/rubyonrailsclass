class AlcoholicBeverage
    attr_accessor :name
    attr_accessor :abv
    attr_accessor :remaining_drinks

    def initialize(name, abv, remaining_drinks=10)
	@name = name
        @abv  = abv
 	@remaining_drinks = remaining_drinks
        @max_drinks = remaining_drinks
    end

    def drink
	@remaining_drinks -= 1
	puts 'You took a drink'
    end

    def empty?
	@remaining_drinks <= 0
    end

    def full?
	@remaining_drinks === @max_drinks
    end

end

class Beer < AlcoholicBeverage

    def best_served
	return :cold
    end

end


class Wine < AlcoholicBeverage
    attr_accessor :color

    def initialize(name, abv, color, remaining_drinks=5)
	super name, abv, remaining_drinks
      	if color.is_a? Symbol
	    @color = color
  	else 
	    puts 'Color must be a symbol'
	end
    end
        
    def best_served
	case @color
	when :white
	    return :cold
	when :red
	    return :warm
      	end
    end
end

b = Beer.new 'Coors', 8.9, 20
w = Wine.new 'Quary Red', 10, :red, 8

15.times { b.drink }

if b.empty?
    puts "Time for another round of #{b.name}"
else
    puts "Keep drinking your beer as its best served #{b.best_served}"
end


7.times { w.drink }

if w.empty?
    puts "Time for another glass of #{w.name}"
else
    puts "Enjoy your glass of wine as its best served #{w.best_served}"
end
