class River

  attr_reader :name

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end
  
  # A river could have a fish_count method
  def count_fishes()
   return  @fishes.count
    # return @fishes.size
  end

  def remove_fish
    fish_removed = @fishes.shift() #when @fishes.shift, it is removed.
    return fish_removed # the fish is then returned
  end



end
