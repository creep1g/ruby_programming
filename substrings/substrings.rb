def substrings(string, dictionary)
    str = string.downcase.split(" ")
    instances = Hash.new(0)

    str.each do |word|
        dictionary.each do |dictionary_word| 
            if word.include?(dictionary_word)
                instances[dictionary_word] += 1
            end
        end
    end
    instances
end