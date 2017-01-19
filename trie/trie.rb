class Trie < Hash

  def build(string)
    string.chars.inject(self) do |h, char|
      h[char] ||= { }
    end
  end

end

trie = Trie.new
trie.build('dogs')
trie.build('dig')
trie.build('cats')
puts trie.inspect