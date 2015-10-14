module ApplicationHelper
    
    def my_name
        @name = name
        @name = gets.chomp
        name.to_s
    end
    
    my_name
end
