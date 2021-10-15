@students = []

def input_students
    puts "Please enter the name of the student"
    puts "To finish just presss enter twice"
    name = gets.chomp
    #a loop that repeats as long name is not empty
    until name.empty? do
        @students << {name: name, cohort: :november}
        puts "Now we have #{@students.count} students"
        name = gets.chomp
    end
    # return the array of students
    @students
end

def save_students
    # open the file for writing
    file = File.open("students.csv", "w")
    # iterate over the array of students
    @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv_line = student_data.join(",")
      file.puts csv_line
    end
    file.close
end

    
def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end

def print_student_list
    @students.each {|student| puts "#{student[:name]} (#{student[:cohort]} cohort)"}
end   

def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end

def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "9. Exit" # 9 because we'll be adding more items  
end

def show_students
    print_header
    print_student_list
    print_footer(@students)
end

def proccess(selection)
    case selection
    when "1"
        input_students
    when "2"
        show_students
    when "3"
        save_students
    when "9"
        exit
      else
        puts "I don't know what you mean, try again"
    end
end

def interactive_menu
    loop do
        print_menu
        proccess(gets.chomp)
    end
end


interactive_menu