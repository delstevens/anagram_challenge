
  wordfile = File.open("./db/fixtures/words")
  wordfile.each do |line|
    Word.create(:word_name => line.chomp)
  end
