
# lovers of life always notice when there is another lover of life
# about
module LOVEROFLIFE

  class << self

    def note_sexy lover
      (@lovers ||= []) << lover
    end
    alias_method :new_instance, :note_sexy

    def our_lovers
      @lovers || []
    end

  end

end

# lovers of life are proud of many things, and are def known
# to brag
module LOVEROFLIFE

  def brag this, deets={}
    self.class.our_lovers.each do |lover|
      lover.listen_to this,
                      # we're vein, add in a ref to ourself (of course)
                      deets.merge({self.class.name.to_s.downcase => self})
    end
  end

end

# being a lover of life mean you celebrate other's accomplishments
module LOVEROFLIFE

  class << self

    def care_about that, &pretend_to_listen
      (@cares_about ||= Hash.new)[that] = pretend_to_listen
    end

    def cares_about? something
      (@cares_about || []).include? something
    end

  end

  def listen_to this, deets
    # sure .. we're listening .. but do we care?
    something_to_do = self.class.cares_about? this
    something_to_do.call deets if something_to_do
  end

end


# all our objects so far are lovers of life
class Cell
  include LOVEROFLIFE
  extend LOVEROFLIFE
end
class Wall 
  include LOVEROFLIFE
  extend LOVEROFLIFE
end
class Lense 
  include LOVEROFLIFE
  extend LOVEROFLIFE
end
class View 
  include LOVEROFLIFE
  extend LOVEROFLIFE
end
