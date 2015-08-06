class String
  define_method(:anagrams) do |letters|
    split_word = self.split("")
    if split_word.sort().eql?(letters[0].split("").sort())
      letters
    else
      "No anagrams found"
    end
  end
end
