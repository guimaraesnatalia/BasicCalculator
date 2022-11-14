def addition(number1, number2)
    puts "ADD (#{number1} + #{number2}) = #{number1+number2}"
end

def substraction(number1, number2)
    puts "SUB (#{number1} - #{number2}) = #{number1-number2}"
end

def multiplication(number1, number2)
    puts "MULT (#{number1} * #{number2}) = #{number1*number2}"
end

def division(number1, number2)
    puts "DIV (#{number1} / #{number2}) = #{number1/number2}"
end

def all_operations
    number1 = enter_one_number
    number2 = enter_one_number
    print_result_all_operations(number1, number2)
end