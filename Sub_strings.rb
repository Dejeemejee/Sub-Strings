dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
  # Initialize a new hash to store word counts
  new_hash = Hash.new(0)
    # Split the input string into individual words
    # This creates an array of words from the input string
   new_str = string.split(" ")

   # Iterate through each word in the input string
    new_str.each do |item|

      # For each input word, check against every dictionary word
       dictionary.each do |word|

         # Check if the current word contains the dictionary word
         # Note: This will match substrings within words
        if (item.include?(word))

            # Increment the count for this word in our hash
          new_hash[word] += 1
          
        end
       end
    end
    # Print and return the resulting hash of word frequencies
    puts new_hash
end

# Test case: Complex sentence with multiple dictionary words
substring("Howdy partner, sit down! How's it going?", dictionary)
#substring("below")