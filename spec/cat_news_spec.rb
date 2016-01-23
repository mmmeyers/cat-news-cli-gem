require 'spec_helper'

describe CatNews do
  it 'has a version number' do
    expect(CatNews::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end
end

describe CatNews::Story do
  before :each do
    @story = CatNews::Story.new
  end

  describe "#new" do
    it 'takes two parameters and returns a Story object' do
      @story.should be_an_instance_of CatNews::Story
    end
  end

  describe ".scrape_stories" do
    it "returns an array of stories" do
      expect(CatNews::Story.scrape_stories).to be_an_instance_of(Array)
    end
  end

  describe ".scrape_first_story" do
    it "returns an instance of Story" do
      expect(CatNews::Story.scrape_first_story).to be_an_instance_of(CatNews::Story)
    end
  end
end
