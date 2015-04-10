require_relative '../../db/config'


class Story < ActiveRecord::Base

  validates :sentence, length: { maximum: 140 }


  def finished?(sentence)
    sentence.include?("the end")
  end

  def end_word(sentence)
    array = sentence.split.each_slice(1).map{|a|a.join ' '}
    array = array.drop(2)
    array.join(' ')
  end

end
