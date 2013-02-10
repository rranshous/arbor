

# The walls are very sensitive, they can feel a change
# to their structure. If a cell changes shape or a
# new cell nuzzles up to us we tend to take note. They
# tend to squeal and or laugh, noticable, especially if
# i'm trying to sleep
class Wall

  # silly noisy cells!
  care_about :mighty_morphin_time do |deets|
    if touching? deets['cell']
      brag :notice_a_noisy_cell, deets
    end
  end

end
