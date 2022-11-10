# ruby main.rb

def main
    exit_option = 99
    loop do
        option_selected = select_option_menu
        if option_selected == exit_option
            break
        end
        execute_selected_operation option_selected
    end
end

def select_option_menu
    menu_options
    selected_item = gets.chomp.to_i
    selected_item
end

def menu_options
    puts "Choose only one option"
    puts "(1) One operation"
    puts "(2) All simple operations between two numbers"
    puts "(99) Exit"
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

def addition(number1, number2)
    puts "(#{number1} + #{number2}) = #{number1+number2}"
end

def substraction(number1, number2)
    puts "(#{number1} - #{number2}) = #{number1-number2}"
end

def multiplication(number1, number2)
    puts "(#{number1} * #{number2}) = #{number1*number2}"
end

def division(number1, number2)
    puts "(#{number1} / #{number2}) = #{number1/number2}"
end

def all_operations
    number1 = enter_one_number
    number2 = enter_one_number
    print_result_all_operations(number1, number2)
end

def print_result_all_operations(number1, number2)
    puts "=========================="
    puts "RESULT ALL MATH OPERATIONS"
    puts "--------------------------"
    puts "ADD (#{number1} + #{number2}) = #{number1+number2}"
    puts "SUB (#{number1} - #{number2}) = #{number1-number2}"
    puts "MULT (#{number1} * #{number2}) = #{number1*number2}"
    puts "DIV (#{number1} / #{number2}) = #{number1/number2}"
    puts "==========================="
    puts "\n\n"
end

main