require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("takes the input and returns if it is an anagram") do
    expect(("fox").anagrams(["xof"])).to(eq(["xof"]))
  end
end
