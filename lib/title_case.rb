class String
  define_method(:title_case) do
    output_array = []
    non_caps = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or", "nor"]
    word_array = self.split(" ")
    word_array.each_with_index() do |word,index|
      if non_caps.include?(word.downcase()).&(index.!=(0))
        output_array.push(word.downcase())
      else
        output_array.push(word.capitalize())
      end
    end
    output_array.join(" ")
  end
end
