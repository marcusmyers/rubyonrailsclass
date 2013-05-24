

class AlcoholicBeverage
  
  def initialize(name, abv, remaining_drinks = 10)
    @name = name
    @abv = abv
    @remaining_drinks = remaining_drinks
  end 
end

class Wine <AlcoholicBeverage
  def initialize(name, abv, remaining_drinks, color)
    super name, abv, remaining_drinks
    @color = color
  end
  if @color == :red
    puts :warm
  else @color == :white
    puts :cold
  end
end

too_too = Wine.new("poop", 8, 8, :red)
puts too_too

class Beer < AlcoholicBeverage

  def initialize(name, abv, remaining_drinks)
    super name, abv, remaining_drinks
  end  
  def best_served
    return :cold
  end
  def drink
    @remaining_drinks -= 1
  end
  def empty
    if @remaining_drinks == 0
      puts "Get a new beer fast!"
    elsif @remaining_drinks == 10
      puts "GAAAAY"
    else
      puts "Keep drinking champ"
    end 
  end
end

yum = Beer.new("crap", 5, 7)
puts yum.empty


