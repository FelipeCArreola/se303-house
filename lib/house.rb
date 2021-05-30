class House
  attr_reader :segments, :strategy

  def initialize
    @segments = {
      1   =>  "the horse and the hound and the horn that belonged to",
      2   =>  "the farmer sowing his corn that kept",
      3   =>  "the rooster that crowed in the morn that woke",
      4   =>  "the priest all shaven and shorn that married",
      5   =>  "the man all tattered and torn that kissed",
      6   =>  "the maiden all forlorn that milked",
      7   =>  "the cow with the crumpled horn that tossed",
      8   =>  "the dog that worried",
      9   =>  "the cat that killed",
      10  =>  "the rat that ate",
      11  =>  "the malt that lay in",
      12  =>  ""
    }
    #@strategy = strategy
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
    segments.values.last(upper_limit_line_number).join(" ")
  end

end