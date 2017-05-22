=begin
the program take a string and a list of strings (dictionary)and retrun a hash of each substring and times it found in the string
=end

def main string, dictionary
    string_words=string.split
    sub_hash=Hash.new
    dictionary.each do |sub|
        sub_count=0
        string_words.each do |word|
            if word.include? sub
                sub_count+=1
            end
        end
        if sub_count>0
            sub_hash[sub]=sub_count
        end
    end
    sub_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p main("below", dictionary)
p main("Howdy partner, sit down! How's it going?", dictionary)
