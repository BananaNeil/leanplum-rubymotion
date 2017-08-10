class String
  # Leanplum relies on String#count
  # This monkey patch is inplace to get leanplum working
  # I've opend an issue via rubymotion here:
  # http://community.rubymotion.com/t/cant-call-count-on-a-string-that-has-been-cast-as-an-nsarray/2145
  def count
    length
  end
end

class NSString
  # Leanplum relies on String#count
  # This monkey patch is inplace to get leanplum working
  # I've opend an issue via rubymotion here:
  # http://community.rubymotion.com/t/cant-call-count-on-a-string-that-has-been-cast-as-an-nsarray/2145
  def count
    length
  end
end

