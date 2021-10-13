
def input_students
    puts "Please enter the name of the student"
    puts "To finish just presss enter twice"
    #below we create an empty array
    students = []
    name = gets.chomp
    #a loop that repeats as long name is not empty
    until name.empty? do
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        name = gets.chomp
    end
    # return the array of students
    students
end

    
def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end

def print(students)
    students.each {|student| puts "#{student[:name]} (#{student[:cohort]} cohort)"}
end   

def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end

def interactive_menu
    students = []
    loop do
        # 1. print the menu and ask the user what to
        puts "1. Input the students"
        puts "2. Show the students"
        puts "9. Exit"
        # 2. puts input into selection input variable
        input = gets.chomp
        case input
        when "1"
          students = input_students
        when "2"
          print_header
          print(students)
          print_footer(students)
        when "9"
          exit # this will cause the program to terminate
        else
          puts "I don't know what you meant, try again"
        end
    end
end


interactive_menu