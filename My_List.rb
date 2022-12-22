require_relative 'My_Enumerable'

class MyList
  include My_Enumerable

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
