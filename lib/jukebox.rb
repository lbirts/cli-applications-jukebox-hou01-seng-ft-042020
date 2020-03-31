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

  if (1..9).to_a.include?(song_choice.to_i)
    puts "Playing #{songs[song_choice.to_i - 1]}"
  elsif songs.include?(song_choice)
    puts "Playing #{song_choice}"
  else
    puts "Invalid input, please try again"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.strip
  if array.include?(input)
    puts "Playing #{"
  array.each.with_index(1) { |song, index|
  if input == song || input.to_i == index.to_i
    puts "Playing #{song}"
    break
  else
    puts "Invalid input, please try again"
    break
  end
  }
end