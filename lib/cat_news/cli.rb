class CatNews::CLI

  def call
    list_stories
    menu
  end

  def list_stories
    puts "Today's cat stories:"
    @stories = CatNews::Story.today
    @stories.each.with_index(1) do |story, i|
      puts "#{i}: #{story.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the story you'd like to read:"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i < 3
        the_story = @stories[input.to_i - 1]
        puts "#{the_story.name}"
      elsif input == "list"
        list_stories
      elsif input =="exit"
        goodbye
      else
        puts "Please type list or exit"
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more cat stories!"
  end

end