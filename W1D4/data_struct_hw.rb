class Stack
  #stack is LAST IN FIRST OUT
  #imagine a stack of lunch trays
  #you load from the top,
  #and you take off from the top
  def initialize
    @stack = []
  end
  def add(el)
    @stack.push(el)
  end
  def remove
    @stack.pop
  end
  def show
    @stack.dup
  end
end

class Queue
  #queue is FIRST IN FIRST OUT
  #imagine a normal line
  #people get into the back
  #and leave from the front
  def initalize
    @queue = []
  end

  def add(el)
    @queue.push(el)
  end
  def remove
    @queue.unshift
  end
  def show
    @queue.dup
  end
end

class Map
#my version of a hash implemented with an array!
  def initialize
    @map = []
  end
  def add(key, val)
    @map.each_with_index do |kv_pair, idx|
      if @map[idx][0] == key
        @map[idx][1] = val
        return
      end
    end
    @map << [key,val]
  end
  def remove(key)
    @map.each_with_index do |kv_pair, idx|
      if @map[idx][0] == key
        @map.delete_at(idx)
        return
      end
    end
  end
  def show
    @map.deep_dup
  end
  def deep_dup
    return self.dup if self.none? { |el| el.is_a?(Array) }
    array = []
    self.each do |el|
      if el.is_a?(Array)
        array << el.deep_dup
      else
        array << el
      end
    end
    array
  end
end
