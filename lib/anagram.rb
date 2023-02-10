class Anagram
    attr_accessor :word
  
    def initialize (word)
      @word = word
    end
  
    def match array
      matches = []
      array.each do |item|
        if item.chars.sort == @word.chars.sort
          matches << item
        end
      end
      return matches    
    end  
  end  
  
  listen = Anagram.new("rescue")
  puts listen.match(%w[enlists secure google inlets banana])
  