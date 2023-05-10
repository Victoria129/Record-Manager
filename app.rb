class App
    def initialize
        @listings = Listings.new
        @creations = Creations.new
    end
    def start
        puts 'Welcome to Our Catalogue'
        puts #blank
        @menu_choice = ''
        menu until @menu_choice.upcase == 'X'
    end

    def menu
        sleep(1)
        puts 'Please input a number or [X] to exit'
        puts '[1] List all Books', '[2] List all Music Albums', '[3] List all Movies', '[4] List all Games','[5] List all Genres',
        '[6] List all Labels','[7] List all Authors','[8] List all Sources','[9] Add a Book','[10] Add a Music Album','[11] Add a Movie',
        '[12] Add a Game','[X] Exit'
        puts #blank
        @menu_choice = gets.chomp
        puts #blank
        if @menu_choice.upcase == 'X'
            puts 'Goodbye'
            puts #blank
        elsif @menu_choice.to_i !=0 && @menu_choice.to_i.between?(1,12)
            puts "OPTION CHOSEN [#{@menu_choice}]"
            puts #blank
            enter_menu
        else
            puts 'Please ENter a valid choice from the Menu'
            puts #blank
        end

    end
end