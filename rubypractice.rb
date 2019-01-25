def menu
    puts "****Song List Menu****"
    puts "1) View all music"
    puts "2) Add Song"
    puts "3) Edit Song"
    puts "4) Remove Song"
    puts "5) Exit"
    puts "**********************"
    
    @user_choice = gets.to_i
    puts @user_choice
    choice
end

def choice
    case @user_choice
    when 1
        puts "****Here are your Songs!****"
        puts index
    when 2
        puts "****Please Add A Song****"
        add
    when 3
        puts "****What song would you like to edit?****"
    when 4
        puts "****What song do you want to remove?****"
        delete
    when 5
        puts "****Good Bye!****"
        exit
    else
        puts "****Invalid Choice, Choose again****"
        menu
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
    puts "****Song Removed****"
    menu
end

def add
    @list << gets.to_s
    puts "****Song Added!****"
    menu
end

def edit
    puts index
    edit_song =gets.to_i - 1
    puts @list[edit_song]
    @lists.insert(edit_song, gets)
    @list.delete_at(edit_song + 1)
    menu
end


menu
