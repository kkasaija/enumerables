module MyEnumerable
  def all?
    output = true
    each { |i| output = false unless yield i }
    print 'all method: ', "\n", output, "\n"
  end

  def any?
    output = false
    each do |i| output = true if yield i
    end
    print 'any method: ', "\n", output, "\n"
  end

  def filter
    outputArr = []
    each do |i| outputArr.push i if yield i
    end
    print 'filter method: ', "\n", outputArr
  end
end
