require_relative 'myEnumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    counter = 0
    while counter < @list.length
      yield @list[counter]
      counter += 1
    end
  end

end
