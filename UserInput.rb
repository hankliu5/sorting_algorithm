$LOAD_PATH << '.'
require "SortingMethods"

class UserInput
  input_ary = Array.new

  puts "Welcome to demostration of sorting methods"
  puts "Enter the integer array you want to sort: (use \"e\" to end, \"s\" to show"
  puts "and \"d\" to delete the last input)"
  loop do
    input = gets.chomp
    case input
    when "s"
      puts "Current array: #{input_ary.to_s}"
    when "d"
      input_ary.delete(input_ary.last)
      puts "Current array: #{input_ary.to_s}"
    when "e"
      break
    else
      begin
        number = Integer(input)
      rescue
        puts "please enter an integer"
      else
        if number.to_s != input
          puts "please enter an integer"
          next
        end
        input_ary << number
      end
    end
  end

  abort("you should put some integers into the array") if input_ary.empty?

  puts "The array you made is #{input_ary.to_s}"

  puts "Now I have three sorting methods to choose:"
  puts "1. bubble sort"
  puts "2. selection sort"
  puts "3. insertion sort"
  puts "which one do you want to use? (use \"e\" to exit)"

  input = gets.chomp

  loop do
    case input
    when "1"
      SortingMethods.bubble_sort(input_ary)
      break
    when "2"
      SortingMethods.selection_sort(input_ary)
      break
    when "3"
      SortingMethods.insertion_sort(input_ary)
      break
    when "e"
      puts "see you!"
      break
    else
      puts "I don't know what you want"
      input = gets.chomp
    end
  end
end
