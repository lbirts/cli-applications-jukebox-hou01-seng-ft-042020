# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  array.each.with_index(1) { |song, index| puts "#{index}. #{song}" }
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.strip
  if array.include?(input)
    puts "Playing #{input}"
  elsif (1..array.length).to_a.include?(input.to_i)
    puts "Playing #{array[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  puts "Please enter a command:"
  command = gets.strip
  if command == "exit"
    exit_jukebox
    
end