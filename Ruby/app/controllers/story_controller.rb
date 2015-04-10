require_relative '../../config/application'
require_relative '../views/story_view.rb'
require 'io/console'

class StoryController

  def initialize
    @view = StoryView
    @model = Story.new
    Story.destroy_all
    @view.render_instructions
    @view.render_start
    get_sentence until @model.finished
    @view.render_story(Story.all)
  end

  def get_sentence
    input = STDIN.noecho(&:gets)
    input = input.chomp
    Story.create(sentence: input)
    @model.finished?(input)
    puts "\e[H\e[2J"
    @view.render_prompt(@model.end_word(input))
  end
end
