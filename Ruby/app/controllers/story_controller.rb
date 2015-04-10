require_relative '../../config/application'
require_relative '../views/story_view.rb'

class StoryController

  def initialize
    @view = StoryView.new
    @model = Story.new
    @view.render_instructions
    @view.render_start
    get_sentence until @model.finished?
    @view.render_story
  end

  def get_sentence
    input = gets.chomp
    @model.add_sentence(input)
    @model.finished?(input)
    @view.render_prompt(@model.end_word)
  end
end