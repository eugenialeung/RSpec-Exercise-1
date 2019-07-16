def average(num1, num2)
    (num1 + num2) / 2.0
end


def average_array(nums)
    nums.sum / (nums.length * 1.0)
end


# def repeat(str, num)
#     new_str = ""
#     num.times {new_str += str}
#     new_str
# end
def repeat(str, num)
    str * num
end


def yell(str)
    str.upcase + "!"
end


def alternating_case(sentence)
    words = sentence.split(" ")
    new_words = words.map.with_index do |word, i|
        if i % 2 == 0
            word.upcase
        else
            word.downcase
        end
    end
    new_words.join(" ")
end