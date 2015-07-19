def echo(word)
	return word
end

def shout(word)
  return word.upcase
end

def repeat(word, numTimes = 2)
  return ((word + " ") * numTimes).chop
end

def start_of_word(word, num)
  return word[0..(num-1)]
end

def first_word(words)
  return words[/\w*/]
end

def titleize(title)
  littleWords = ["and", "or", "the", "over", "to", "the", "a", "but"]
  newTitle = title.split(" ").map! do |word|
    if littleWords.include?(word)
      word
    else
      word.capitalize
    end
  end
  newTitle[0].capitalize!
  return newTitle.join(" ")
end