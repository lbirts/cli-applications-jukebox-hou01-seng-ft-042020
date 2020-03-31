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
#     puts "Please enter a song name or number:"
#   user_choice = gets.strip
#   if song_list.include?(user_choice)
#     puts "Playing #{user_choice}"
#   else
#     user_choice = user_choice.to_i
#     if (user_choice > 0 && user_choice < 10)
#       puts "Playing #{song_list[user_choice-1]}"
#     else
#       puts "Invalid input, please try again."
#     end 
#   end
# end
  puts "Please enter a song name or number:"
  input = gets.strip
  song_index = 0
  while song_index < array.length do
    if input == array[song_index]
      puts "Playing #{array[song_index]}"
    else
      if input.to_i == (song_index+1)
        puts "Playing #{array[song_index+1]}"
      else
        puts "Invalid input, please try again"
      end
    end
  end
  song_index += 1
end
  array.each.with_index(1) { |song, index|
  if input == song || input.to_i == index
    puts "Playing #{song}"
  elsif input != song && input.to_i != index
    puts "Invalid input, please try again"
  end
  }
end