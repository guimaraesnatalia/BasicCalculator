require_relative 'presentation'
require_relative 'operations'

def select_option_menu
    menu_options
    selected_item = gets.chomp.to_i
    selected_item
end

def execute_selected_operation(operation)
    case operation
    when 1
        one_operation
    when 2
        all_operations
    else
        puts "Invalid number"
    end
end

def one_operation
    do_math_operation
    puts "\n\n"
end

def enter_one_number
    print "Enter one number: "
    number = gets.chomp.to_i
    number
end

def do_math_operation
    operation = select_math_operation
    number1 = enter_one_number
    number2 = enter_one_number

    case operation
    when 1
        addition(number1, number2)
    when 2
        substraction(number1, number2)
    when 3
        multiplication(number1, number2)
    when 4
        division(number1, number2)
    else
        "Invalid operation"
    end
end

def select_math_operation
    puts "(1) Addition || (2) Subtraction || (3) Multiplication || (4) Division"
    print "Choose only one: "
    math_operation = gets.chomp.to_i
    math_operation
end