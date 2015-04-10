require_relative '../../db/config'


class Story < ActiveRecord::Base
  attr_reader :finished

  # validates :sentence, length: { maximum: 140 }


  def finished?(sentence)
    if sentence.include?("the end")
      @finished = true
    end
  end

  def end_word(sentence)
    array = sentence.split
    last_words = "#{array[-2]} #{array[-1]}"
    array.pop(2)
    array = array.join(' ')
    final_sentence = array.gsub(/[a-zA-Z]/, "*")
    final_sentence + ' ' << last_words
  end

end
