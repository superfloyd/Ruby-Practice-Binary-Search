module BinarySearch
  
  def self.chop(myArray, key, min, max)
      #puts "first line meth" + myArray.to_s
      if max < min
         puts 'KEY_NOT_FOUND'
      else
         mid = midpoint(min, max) 
         if myArray[mid] > key
            chop(myArray, key, min, mid-1)
         elsif myArray[mid] < key
              chop(myArray, key, mid+1, max)
         else
             puts mid
         end
      end
  end
  
  def self.midpoint(min, max)
     total = (min + max)/2
     return total
  end
end

 ary = [1,34,445,566,777,888,999,1000,10000,20000]
 #ary =*(1..10)
 BinarySearch.chop(ary, 23, ary.rindex(ary.min), ary.rindex(ary.max))

