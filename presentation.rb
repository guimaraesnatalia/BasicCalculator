def menu_options
    puts "Choose only one option"
    puts "(1) One operation"
    puts "(2) All simple operations between two numbers"
    puts "(99) Exit"
end

def print_result_all_operations(number1, number2)
    puts "=========================="
    puts "RESULT ALL MATH OPERATIONS"
    puts "--------------------------"
    addition(number1, number2)
    substraction(number1, number2)
    multiplication(number1, number2)
    division(number1, number2)
    puts "==========================="
    puts "\n\n"
end