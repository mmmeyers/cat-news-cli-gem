class CatNews::Story

  attr_accessor :name, :content

  def self.today
    # I should return a bunch of instances of Story.
    self.scrape_stories
  end

  def self.scrape_stories
    stories = []

    stories << self.scrape_first_story
    stories << self.scrape_second_story
    stories
  end

  def self.scrape_first_story
    mechanize = Mechanize.new
    page = mechanize.get('http://www.pussingtonpost.com')
    doc = Nokogiri::HTML(open("http://pussingtonpost.com/"))
    story = self.new
    story.name = doc.search("h2 a")[0].text
    read_more = page.link_with(:text => /Read More/)
    read_more = read_more.click
    story.content = read_more.search("div.entry p").text
    story
  end

  def self.scrape_second_story
    doc = Nokogiri::HTML(open("http://pussingtonpost.com/"))
    story = self.new
    story.name = doc.search("h2 a")[1].text
    story.content = doc.search("p")[3].text
    story
  end  

end