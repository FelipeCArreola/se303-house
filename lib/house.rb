class House
  def line(number)
    case number
    when 1
      "This is the house that Jack built.\n"
    when 2
      "This is #{_line_segment_2} the house that Jack built.\n"
    when 3
      "This is #{_line_segment_3+" "+_line_segment_2} the house that Jack built.\n"
    when 4
      "This is #{_line_segment_4+" "+_line_segment_3+" "+_line_segment_2} the house that Jack built.\n"
    when 5
      "This is #{_line_segment_5+" "+_line_segment_4+" "+_line_segment_3+" "+_line_segment_2} the house that Jack built.\n"
    when 6
      "This is #{_line_segment_6+" "+_line_segment_5+" "+_line_segment_4+" "+_line_segment_3+" "+_line_segment_2} the house that Jack built.\n"
    when 7
      "This is #{_line_segment_7+" "+_line_segment_6+" "+_line_segment_5+" "+_line_segment_4+" "+_line_segment_3+" "+_line_segment_2} the house that Jack built.\n"
    when 8
      "This is #{_line_segment_8+" "+_line_segment_7+" "+_line_segment_6+" "+_line_segment_5+" "+_line_segment_4+" "+_line_segment_3+" "+_line_segment_2} the house that Jack built.\n"
    when 9
      "This is #{_line_segment_9+" "+_line_segment_8+" "+_line_segment_7+" "+_line_segment_6+" "+_line_segment_5+" "+_line_segment_4+" "+_line_segment_3+" "+_line_segment_2} the house that Jack built.\n"
    when 10
      "This is #{_line_segment_10+" "+_line_segment_9+" "+_line_segment_8+" "+_line_segment_7+" "+_line_segment_6+" "+_line_segment_5+" "+_line_segment_4+" "+_line_segment_3+" "+_line_segment_2} the house that Jack built.\n"
    when 11
      "This is #{_line_segment_11+" "+_line_segment_10+" "+_line_segment_9+" "+_line_segment_8+" "+_line_segment_7+" "+_line_segment_6+" "+_line_segment_5+" "+_line_segment_4+" "+_line_segment_3+" "+_line_segment_2} the house that Jack built.\n"
    when 12
      "This is #{_line_segment_12+" "+_line_segment_11+" "+_line_segment_10+" "+_line_segment_9+" "+_line_segment_8+" "+_line_segment_7+" "+_line_segment_6+" "+_line_segment_5+" "+_line_segment_4+" "+_line_segment_3+" "+_line_segment_2} the house that Jack built.\n"
    else
      "ERROR: OUT OF RANGE, ONLY \'1..12\'"
    end
  end
  
  def recite
    (1..12).collect {|line_number| line(line_number)}.join("\n")
  end

  private

  def _line_segment_1
    "the house that Jack built"
  end

  def _line_segment_2
    "the malt that lay in"
  end

  def _line_segment_3
    "the rat that ate"
  end

  def _line_segment_4
    "the cat that killed"
  end

  def _line_segment_5
    "the dog that worried"
  end
  def _line_segment_6
    "the cow with the crumpled horn that tossed"
  end
  def _line_segment_7
    "the maiden all forlorn that milked"
  end
  def _line_segment_8
    "the man all tattered and torn that kissed"
  end
  def _line_segment_9
    "the priest all shaven and shorn that married"
  end
  def _line_segment_10
    "the rooster that crowed in the morn that woke"
  end
  def _line_segment_11
    "the farmer sowing his corn that kept"
  end
  def _line_segment_12
    "the horse and the hound and the horn that belonged to"
  end

end