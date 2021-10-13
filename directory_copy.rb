
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
    index = 0
    while index < students.length
        puts "#{index +1 }. #{students[index][:name]} (#{students[index][:cohort]} cohort)"
        index += 1
    end

end

def print_letter(students)
    puts "Please enter the letter for names beginning with that letter that you want to filter for: "
    letter = gets.chomp
    students.each {|student| if student[:name][0] == letter
        puts "#{student[:name]}"
    end }
end

def print_select_length(students)
    puts "Please select the maximum length of character that you wish to filter for"
    length = gets.chomp.to_i
    students.each {|student| if student[:name].length <= length
        puts "#{student[:name]}"
    end }
end


def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end


students = input_students
print_header
print(students)
print_footer(students)

print_letter(students)
print_select_length(students)