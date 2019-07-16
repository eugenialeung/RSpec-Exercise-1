def hipsterfy(word)
    vowels = "aeiou"
    i = word.length - 1
    while i >= 0
        if vowels.include?(word[i])
            return word[0...i] + word[i+1..-1]
        end
        i -= 1
    end
    word
end


def vowel_counts(string)
    vowels = "aeiou"
    counts = Hash.new(0)
    string.each_char do |char|
        if vowels.include?(char.downcase)
            counts[char.downcase] += 1
        end
    end
    counts
end


def caesar_cipher(message, n)
    alphabet = ("a".."z").to_a
    new_message = ""
    message.each_char do |char|
        if alphabet.include?(char)
            old_idx = alphabet.index(char)
            new_idx = old_idx + n
            new_message += alphabet[new_idx % 26]
        else
            new_message += char
        end
    end
    new_message

end