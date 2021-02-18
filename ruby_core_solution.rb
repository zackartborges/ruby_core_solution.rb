# Write your solution below

class Employee
  attr_reader :first_name, :last_name, :salary, :active, :email
  attr_writer :first_name, :last_name, :salary, :active , :email

  def initialize(input_options= {first_name: "First", last_name: "Last", salary: 0, active: true, email: "#{@first_name} #{@last_name}.gmail.com"})
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
    @email = input_options[:email]
    input_options ={first_name: "First", last_name: "Last", salary: 0, active: true, email: "#{@first_name}#{@last_name}@gmail.com"}
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year. Their email is #{@email}"
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def full_name 
    if @last_name[last_name.length-1] == "s"
      puts "#{first_name} #{last_name}, Esquire"
    elsif
      puts "#{@first_name} #{last_name}"
    end
    end

end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new({first_name: "Steve", last_name: "Campos", salary: 70000, active: true, email: "stevecampos@gmail.com"})
employee1.print_info
employee2.print_info
puts "-----------"
employee2.full_name

example = Employee.new.print_info

#close to figuring out why :email is not printing