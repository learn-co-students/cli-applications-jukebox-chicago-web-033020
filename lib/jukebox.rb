# Add your code here
def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  innum = input.to_i
  if innum == 0 
    founds = songs.find {|x| x == input}
    if founds
      puts "Playing #{founds}"
    else
      puts "Invalid input, please try again"
    end
  elsif innum <= 9
    puts "Playing #{songs[innum - 1]}"
    else
    puts "Invalid input, please try again"
  end
    
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  puts "Please enter a command:"
  user_cmd = gets.strip
  case user_cmd
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "help"
    help
  when "exit"
    exit_jukebox
  else
    puts "invalid command"
  end
end