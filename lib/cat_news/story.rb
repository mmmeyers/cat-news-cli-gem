class CatNews::Story

  attr_accessor :name

  def self.today
    # I should return a bunch of instances of Story.

    story_1 = self.new 
    story_1.name = "Cat Lovers Feed Hundreds of Strays On Freezing Snowy Turkish Beach"

    story_2 = self.new
    story_2.name = "So Many Adoptions Cat Cafe Runs Out of Cats"

    [story_1, story_2]

  end

end