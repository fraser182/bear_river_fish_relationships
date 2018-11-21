class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  # A bear could have a food_count method
  def count_stomach
    return @stomach.size()
  end


  def eats_fish(fish_to_be_eaten) #takes in a fish to be eaten
    @stomach << fish_to_be_eaten #put in the stomach
  end

  def eat_from_river(river) #eats from river, takes in a river
    # removes a fish from the River
    removed_fish = river.remove_fish() #river here references (river) passed in
    #removed_fish grabs the removed fish because the .remove_fish returns it

    # bear eats removed fish.
    eats_fish(removed_fish)
  end

  # A bear could have a roar method
  def bear_noise()
    return "Roar"
  end




end
