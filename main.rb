# ruby main.rb
require_relative 'menu'

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

main