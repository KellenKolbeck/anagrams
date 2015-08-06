class String
  define_method(:anagrams) do |words_string|
    split_word = self.split("").sort()
    words_list = words_string.split(",")
    anagram_list = []
    words_list.each() do |words|
      if split_word.eql?(words.split("").sort())
        anagram_list.push(words)
      end
    end
    if !anagram_list
      "No anagrams found"
    end
    anagram_list
  end
end
