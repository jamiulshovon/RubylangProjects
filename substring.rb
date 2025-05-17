def substrings (string, dictionary )
  hash ={}
   dictionary.select do |item|
    count=0
    if string.downcase.include?(item.downcase)
      count=string.downcase.scan(item.downcase).length
      hash[item]=count
    end
     
   end
   hash
end