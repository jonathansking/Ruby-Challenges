def translate(str)
  vowels = ["a", "e", "i", "o", "u"]
  words = str.split(" ")
  words.map! do |word|
    if vowels.include?(word[0]) # starts with a vowel
      word += "ay"
    else    # starts with a consonant
      if vowels.include?(word[1])   # consonant + vowel
        if word[0..1] == "qu"
          word[2..-1] += word[0..1] + "ay"
        else
          word[1..-1] += word[0] + "ay"
        end
      else      # starts with at least 2 consonants
        if vowels.include?(word[2])  # consonant + consonant + vowel
          if word[1..2] == "qu"
            word[3..-1] += word[0..2] + "ay"
          else
            word[2..-1] += word[0..1] + "ay"
          end
        else    # starts with 3 consonants
          word[3..-1] += word[0..2] + "ay"
        end
      end
    end
  end
  return words.join(" ")
end