class House
  def line(number)
    case number
    when 1
      "This is the house that Jack built.\n"
    when 2
      "This is #{_construct_line(2)} the house that Jack built.\n"
    when 3
      "This is #{_construct_line(3)} the house that Jack built.\n"
    when 4
      "This is #{_construct_line(4)} the house that Jack built.\n"
    when 5
      "This is #{_construct_line(5)} the house that Jack built.\n"
    when 6
      "This is #{_construct_line(6)} the house that Jack built.\n"
    when 7
      "This is #{_construct_line(7)} the house that Jack built.\n"
    when 8
      "This is #{_construct_line(8)} the house that Jack built.\n"
    when 9
      "This is #{_construct_line(9)} the house that Jack built.\n"
    when 10
      "This is #{_construct_line(10)} the house that Jack built.\n"
    when 11
      "This is #{_construct_line(11)} the house that Jack built.\n"
    when 12
      "This is #{_construct_line(12)} the house that Jack built.\n"
    else
      "ERROR: OUT OF RANGE, ONLY \'1..12\'"
    end
  end
  
  def recite
    (1..12).collect {|line_number| line(line_number)}.join("\n")
  end

  private

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

  def _collection_of_segmented_line(upper_limit_line_number)
    upper_limit_line_number.downto(2).collect {|line_segment_num| send("_line_segment_#{line_segment_num}")}
  end

  def _construct_line(upper_limit_line_number)
    _collection_of_segmented_line(upper_limit_line_number).join(" ")
  end

end