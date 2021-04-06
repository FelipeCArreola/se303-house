class House

def line(number)
  case number
  when 1
    "This is the house that Jack built.\n"
  when 2
    "This is the malt that lay in the house that Jack built.\n"
  when 3
    "This is the rat that ate the malt that lay in the house that Jack built.\n"
  when 4
    "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
  when 5
    "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
  when 6
    "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
  when 7
    "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
  when 8
    "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
  when 9
    "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
  when 10
    "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
  when 11
    "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
  when 12
    "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
  else
    "ERROR: OUT OF RANGE, ONLY \'1..12\'"
  end
end

def recite
  _array_for_range_of_lines.join("\n")
end

private 


def _array_for_range_of_lines(upper_limit = 12)
  array_of_lines = Array.new
  (1..upper_limit).each do |line_number|
    array_of_lines << line(line_number)  
  end
  array_of_lines
end



end