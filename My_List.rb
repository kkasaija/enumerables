require_relative 'my_Enumerable'

class myList
  include my_Enumerable

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
