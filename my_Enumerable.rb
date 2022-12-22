module My_Enumerable
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
    output_Arr = []
    each do |i| 
      output_Arr.push i if yield i
    end
    print 'filter method: ', "\n", output_Arr
  end
end
