class Dog 

attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    else 
      @name = value
    end
  end

  def age=(value)
    if value < 0
      raise "#{value} is not a valid age!"
    else 
      @age = value
    end
  end

  def talk 
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

#dog = Dog.new
#dog.make_up_name
#dog.move("yard")
#dog.make_up_age
#dog.report_age
