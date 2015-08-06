require('rspec')
require('anagrams')

describe('String#anagrams') do
  it("takes the input and returns if it is an anagram") do
    expect(("fox").anagrams("xof")).to(eq(["xof"]))
  end

  it("takes the inputs and returns which ones are anagrams") do
    expect(("fox").anagrams("xof,xfo,oxf,ofx,fxo,dog,burrito")).to(eq(["xof", "xfo", "oxf", "ofx", "fxo"]))  
  end
end
