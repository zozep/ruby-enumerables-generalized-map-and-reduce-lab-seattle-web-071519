# Your Code Here
def map(sourceArray)
  i = 0
  newArray = []
  
  while i < sourceArray.length
    newArray.push(yield(sourceArray[i]))
    i += 1
  end
  
  newArray
end

def reduce(sourceArray, startingValue=nil)
  
  if startingValue
    i = 0
    accumValue = startingValue
  else
    accumValue = sourceArray[0]
    i = 1
  end
  
  while i < sourceArray.length
    accumValue = yield(accumValue, sourceArray[i])
    i += 1
  end
  
  accumValue
end
