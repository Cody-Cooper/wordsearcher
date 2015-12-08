def get_str
  text = gets.chomp
end

def frequencies
  puts
  puts "Enter a string: "
  words = get_str.split
  puts "Counting word frequency....."
  frequencies = Hash.new(0)
  words.each { |word| frequencies[word] += 1 }
  # Sorts by word frequency and reverses it, so highest frequency is at the top.
  frequencies = frequencies.sort_by { |word, frequency| frequency }.reverse!
  frequencies.each { |word, frequency| puts word + ' ' + frequency.to_s }
  start
end

def sort
  puts
  puts "Enter words you would like to sort, seperated by comma."
  words = get_str.gsub!(/ /, '').split(',') # Removes spaces and splits.
  puts 'Sorting words.....'
  words.sort!
  puts words.join(', ')
  start
end

def start
  puts
  puts "Would you like to get word FREQUENCY,"
  puts "SORT a list of words alphabetically,"
  puts "or EXIT the program?"
  user_input = gets.chomp

  if user_input.downcase == "frequency"
   frequencies
  elsif user_input.downcase == "sort"
    sort
  elsif user_input.downcase == "exit"
    exit
  else
    puts "Please enter 'frequency', 'sort', or 'exit'"
    start
  end
end

start
