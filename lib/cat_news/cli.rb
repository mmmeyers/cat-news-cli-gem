class CatNews::CLI

  def call
    puts "Today's cat stories:"
    list_stories
    menu
  end

  def list_stories
    puts <<-DOC
    Cat Lovers Feed Hundreds of Strays On Freezing Snowy Turkish Beach
    So Many Adoptions Cat Cafe Runs Out of Cats
    DOC
  end

  def menu
    puts "Enter the number of the story you'd like to read:"
    input = gets.strip

    case input
    when "1"
      puts "Here is story 1"
    when "2"
      puts "Here is story 2"
    end
  end

end