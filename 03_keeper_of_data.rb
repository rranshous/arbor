
# Our cell of data is defined by it's walls. When my
# data changes my shape will therefore change. As you might
# expect this does not escape my attention. I get pretty
# excited
class Cell

  alias :brag, :its

  # whaaaa, data change time!
  def []= key, value
    (data ||= {})[key] = value
    its :mighty_morphin_time, {key: key, value: value}
  end

end
