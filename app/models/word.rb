class Word < ActiveRecord::Base

  def self.anagram(in_word)
  		ordered_word = in_word.split("").sort.join("")
  		return_array = []
  		this_array =  Word.where("length(word_name) = #{in_word.length}")
  		this_array.each do |item| 
  			if ordered_word == item.word_name.split("").sort.join("")
	  			return_array << item.word_name
	  		end
	  	end
	  	return_array

  end


end
