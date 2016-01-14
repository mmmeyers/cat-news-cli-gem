class CatNews::CLI

  def call
    puts "Today's cat stories:"
    list_stories
    menu
    goodbye
  end

  def list_stories
    puts <<-DOC
    Cat Lovers Feed Hundreds of Strays On Freezing Snowy Turkish Beach
    So Many Adoptions Cat Cafe Runs Out of Cats
    DOC
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the story you'd like to read:"
      input = gets.strip.downcase

      case input
      when "1"
        puts "Here is story 1"
      when "2"
        puts "Here is story 2"
      when "list"
        list_stories
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more cat stories!"
  end

end