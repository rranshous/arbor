

# Through the mighty lense we take in the landscape
# The lense is reflexive, it's passive. It notices and
# lets flow
class Lense

  care_about :notice_a_noisy_cell do |deets|
    if looking_at? deets['wall']
      brag :flow_the_photons, deets
    end
  end

end
