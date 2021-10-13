
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


students = input_students
print_header
print(students)
print_footer(students)