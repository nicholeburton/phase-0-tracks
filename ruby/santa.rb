class Santa

  def initialize
    @name = "Barry"
    @gender = "gender non-conforming"
  end

  def speak
    puts "#{@name} says, 'Ho, ho ho! Haaaaaapy holidays!''"
  end

  def eat_milk_and_cookies (cookie_type)
    puts "#{@name} says, 'That was a good #{cookie_type}!''"
  end

end
