class LRUCache
  def initialize(size)
    @size = size
    @cache = []
  end

  def count
    @cache.count
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
    elsif count >= @size
    end

    @cache << el
  end

  def show
    p @cache
    nil
  end

end
