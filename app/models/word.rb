class Word < ActiveRecord::Base

  def self.anagram(in_word)
      this_array = []
      this_array << 1
      this_array << Word.first.word_name + " #{in_word}"
      this_array << 2
  end


end
