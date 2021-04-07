class House

def line(number)
  case number
  when 1..12
    _construct_line(number)
  else
    "ERROR: OUT OF RANGE, ONLY \'1..12\'"
  end
end

def recite
  _array_of_lines.join("\n")
end

private 


def _array_of_lines(upper_limit_of_lines = 12)
  array_of_lines = Array.new
  (1..upper_limit_of_lines).each do |line_number|
    array_of_lines << line(line_number)  
  end
  array_of_lines
end

def _line_1
  "the house that Jack built."
end

def _line_2
  "the malt that lay in"
end

def _line_3
  "the rat that ate"
end

def _line_4
  "the cat that killed"
end

def _line_5
  "the dog that worried"
end

def _line_6
  "the cow with the crumpled horn that tossed"
end

def _line_7
  "the maiden all forlorn that milked"
end

def _line_8
  "the man all tattered and torn that kissed"
end

def _line_9
  "the priest all shaven and shorn that married"
end

def _line_10
  "the rooster that crowed in the morn that woke"
end

def _line_11
  "the farmer sowing his corn that kept"
end

def _line_12
  "the horse and the hound and the horn that belonged to"
end


def _array_of_segmented_line(upper_limit_line_number)
  array_of_segment_line = Array.new
  (1..upper_limit_line_number).each do |line_segment_num|
    line_segment = send("_line_#{line_segment_num}") 
    array_of_segment_line << line_segment
  end
  array_of_segment_line
end

def _construct_line(upper_limit_line_number)
  "This is ".concat( ( (_array_of_segmented_line(upper_limit_line_number).reverse).join(" ") ).concat("\n") )
end

end