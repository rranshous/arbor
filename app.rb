# we yearn for a way of storing data that is flexible
# and breaks us from our old models. 
# Imagine each related collection of data not having 
# a type or model associated, no table no columns.
# you have a collection of data, that is somehow implicetly
# related. You have lots of these collections of data.
# Each implicetly related set of data is kept in a cell
# each cell keeps only one set of data. The cells are spaces
# defined by the intersection of an infinite set of planes
# or walls. If you were to look at every cell that shared
# a given wall, they would all somehow be related. A wall
# is a assertion. it's a condition. it's an edge of the
# cell's data

# data space
class Cell
end

# edge of a data space
class Wall
end

# way of viewing data spaces
class Lense
end

# result of looking through a lense
class View
end

# data cells have an infinate number of walls
# each wall is a condition
# each lense is a set of walls
# the view is the resulting cells we see through the lense

# form without function. Beautiful but not as useful. Our friends
# need substance! they need to live, to love, to speak!

# lovers of life always notice when there is another lover of life
# about
class LOVEROFLIFE
  class << self

    def note_sexy lover
      (@lovers ||= []) << lover
    end
    alias :new_instance, :note_sexy

    def our_lovers
      @lovers || []
    end

  end
end

# lovers of life are proud of many things, and are def known
# to brag
class LOVEROFLIFE

  def brag this, *deets
    class.our_lovers.each do |lover|
      lover.listen_to this, *deets
    end
  end

end

# being a lover of life mean you celebrate other's accomplishments
clsas LOVEROFLIFE
  class << self

    def care_about that, &pretend_to_listen
      (@cares_about ||= Hash.new)[that] = pretend_to_listen
    end

    def cares_about? something
      (@cares_about || []).include? something
    end

  end

  def listen_to this, *deets
    # sure .. we're listening .. but do we care?
    something_to_do = class.cares_about? this
    something_to_do.call *deets if something_to_do
  end

end

# Our cell of data is defined by it's walls. When my
# data changes my shape will therefore change. As you might
# expect this does not escape my attention. I get prety
# excited
class Cell

  alias :brag, :its

  # whaaaa, data change time!
  def []= key, value
    (data ||= {})[key] = value
    its :mighty_morphin_time Hash[key, value]
  end

end

# The walls are very sensitive, they can feel a change
# to their structure. If a cell changes shape or a
# new cell nuzzles up to us we tend to take note. They
# tend to squeal and or laugh, noticable, especially if
# i'm trying to sleep
class Wall

  # silly noisy cells!
  care_about Cell, :mighty_morphin_time do |cell|
    brag :notice_a_noisy_cell if touching? cell
  end

end

# Through the mighty lense we take in the landscape
# The lense is reflexive, it's passive. It notices and
# lets flow
class Lense

  care_about Wall, :notice_a_noisy_cell do |wall|
    brag :flow_the_photons if looking_at? wall
  end
end

# Through the lense, defined by the walls, we look at the cells
# we are the view. Authoratative, sometimes laggy, always good looking.
# we take seriously our job of keeping an eye out. luckily for us
# the view is almost always good, every one more beautiful than the last.
# constant compitition to be the most beautiful view, of course every
# change would bring more beauty
class View

  care_about Lense, :flow_the_photons do |lense|
    brag :more_beautiful_yet if looking_through? lense
  end

end
