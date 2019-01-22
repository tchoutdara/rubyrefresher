def menu
    puts "****Song List Menu****"
    puts "1) View all music"
    puts "2) Add Song"
    puts "3) Remove Song"
    puts "4) Exit"
    puts "**********************"
    
    @user_choice = gets.to_i
    puts @user_choice
    choice
end

def choice
    case @user_choice
    when 1
        puts "Here are your Songs!"
        puts index
    when 2
        puts "Please add song"
        @list << gets.to_s
        menu
    when 3
        puts "What song do you want to remove?"
        delete
    when 4
        puts "Good Bye!"
        exit
    end
end
        
@list = ["Song1", "Song2"]

def index
    @list.each_with_index.map do |name, i|
        puts "#{i + 1}) #{name}"
    end
    menu
end

def delete
    @list.each_with_index.map do |name, i|
        puts "#{i + 1}) #{name}"
    end
    choice2 = gets.to_i - 1
    @list.delete_at(choice2)
    menu
end

def add_music
    puts"****Please Add A Song****"
    @list << gets.to_s
end


menu
