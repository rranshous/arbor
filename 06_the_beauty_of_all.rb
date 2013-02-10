

# Through the lense, defined by the walls, we look at the cells
# we are the view. Authoratative, sometimes laggy, always good looking.
# we take seriously our job of keeping an eye out. luckily for us
# the view is almost always good, every one more beautiful than the last.
# constant compitition to be the most beautiful view, of course every
# change would bring more beauty
class View

  care_about :flow_the_photons do |deets|
    if looking_through? deets['lense']
      brag :more_beautiful_yet, deets
    end
  end

end
