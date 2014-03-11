require "./lib/task"

@list = []


def main_menu
  puts "Press 'a' to add a task or 'l' to list all of your tasks."
  puts "Press 'c' to mark a completed task, or 'x' to exit."
  main_choice = gets.chomp
  if main_choice == "a"
    add_task
  elsif main_choice == "l"
    list_tasks
  elsif main_choice == "c"
    completed_task
  elsif main_choice == "x"
    puts "Good-bye!"
  else
    puts "Sorry, that wasn't a valid option."
  end
end


def add_task
  puts "Enter a description of the new task:"
  description = gets.chomp
  @list << Task.new(description)
  puts "Task added.\n\n"
  main_menu
end

def list_tasks
  puts "Here are all of your tasks:"
  @list.each do |task|
    puts task.description
  end
  main_menu
end

def completed_task
  puts "What task have you completed?"
   completed = gets.chomp
   if @list.include?(completed)
    puts "Completed!!"
    end
  main_menu
end

main_menu


















