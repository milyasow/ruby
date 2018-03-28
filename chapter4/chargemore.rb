class Employee

  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end 
      @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "Salary of #{salary} is not valid"
    end
    @salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format("%0.2f", pay_for_period)
    puts "Pay for this period: $#{formatted_pay}"
  end

end


lexa = Employee.new
lexa.name = "Lexa"
lexa.salary = 100000

lexa.print_pay_stub
