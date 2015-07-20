class Book
  attr_reader :title

  def title=(newTitle)
    articles = ["the", "a", "an", "and", "in", "the", "of"]
    words = newTitle.split(" ")
    wordNum = 0
    t = words.map do |word|
      if articles.include?(word) && wordNum != 0
        word
      else
        wordNum += 1
        word.capitalize
      end
    end
    @title = t.join(" ")
  end
end