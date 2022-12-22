module MyEnumerable
  def all?
    output = true
    each { |i| output = false unless yield i }
    print 'all method: ', "\n", output, "\n"
  end

end
