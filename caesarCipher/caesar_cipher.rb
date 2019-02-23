def caesar_cipher(string, shift)
    text = ''
    string.each_codepoint do |asc|
        text << case asc
        when 'a'.ord.. 'z'.ord
            'a'.ord + (asc - 'a'.ord + shift) % 26
        when 'A'.ord.. 'Z'.ord
            'A'.ord + (asc - 'A'.ord + shift) % 26
        else
            asc
        end
    end
    text

end
