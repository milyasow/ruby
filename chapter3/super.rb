class Person

  def greeting
    puts "Hello!"
  end

  def greet_by_name(name)
    "Hello, #{name}!"
  end

end


class Friend < Person

  def greeting
    super
    puts "Glad to see you!"
  end

  def greet_by_name(name)
    basic_greeting = super(name)
    "#{basic_greeting} Glad to see you!"
  end


end

Friend.new.greeting

puts Friend.new.greet_by_name("Maximka")
