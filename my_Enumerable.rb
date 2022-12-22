module MyEnumerable
  def all?
    output = true
    each { |i|
      output = false unless yield i }
    print 'all method: ', "\n", output, "\n"
  end

  def any?
    output = false
    each do |i|
      output = true if yield i
    end
    print 'any method: ', "\n", output, "\n"
  end

  def filter
    output_arr = []
    each do |i| 
      output_arr.push i if yield i
    end
    print 'filter method: ', "\n", output_arr
  end

end
