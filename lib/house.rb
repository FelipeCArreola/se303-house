class House
  attr_reader :segments

  def initialize
    @segments = [
      "the horse and the hound and the horn that belonged to",
      "the farmer sowing his corn that kept",
      "the rooster that crowed in the morn that woke",
      "the priest all shaven and shorn that married",
      "the man all tattered and torn that kissed",
      "the maiden all forlorn that milked",
      "the cow with the crumpled horn that tossed",
      "the dog that worried",
      "the cat that killed",
      "the rat that ate",
      "the malt that lay in",
      ""
    ]
  end

  def line(number)
    case number
    when 1..12
      "This is #{_construct_line(number)}the house that Jack built.\n"
    else
      "ERROR: OUT OF RANGE, ONLY \'1..12\'"
    end
  end
  
  def recite
    (1..12).collect {|line_number| line(line_number)}.join("\n")
  end

  private

  def _construct_line(upper_limit_line_number)
    segments.last(upper_limit_line_number).join(" ")
  end

end