class House
  attr_reader :prefix, :setup, :ordered_data

  def initialize(args)
    @prefix = Prefix.factory(args[:prefix])
    @setup  = Setup.factory(args[:setup])
    @ordered_data = setup.order(args[:data])  
  end

  def line(number)
    case number
    when 1..12
      "#{prefix.attach(
        "#{_construct_line(number)}the house that Jack built.\n"
      )}" 
    else
      "ERROR: OUT OF RANGE, ONLY \'1..12\'"
    end
  end
  
  def recite
    (1..12).collect {|line_number| line(line_number)}.join("\n")
  end

  def self.segments
    {
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
  end

  private

  def _construct_line(upper_limit_line_number)
    ordered_data.values.last(upper_limit_line_number).join(" ")
  end

end

module LinePrefixBehavior

  def attach(string)
    raise NoMethodError.new("#{self.class} has not implemented \'attach\' for Module: \'LinePrefixBehavior\'.\n")
  end
end

class ThisPrefix
  
  include LinePrefixBehavior

  def attach(string)
    string.prepend("This is ")
  end

end

class TharPrefix
  
  include LinePrefixBehavior

  def attach(string)
    string.prepend("Thar be ")
  end

end

class Prefix

  def self.factory(px)
    case px
    when "This"
      ThisPrefix
    when "Thar"
      TharPrefix
    else
      raise Exception.new("No prefix found for selection: #{px}.\n")
    end.new
  end

end

module DataSetupBehavior

  def order(array)
    raise NoMethodError.new("#{self.class} has not implemented \'order\' for Module: \'DataSetupBehavior\'.\n")
  end
end

class SortSetup
  
  include DataSetupBehavior

  def order(hash)
    hash.sort.to_h
  end

end

class RandomSetup
  
  include DataSetupBehavior

  def order(hash)
    hash.values.shuffle.to_h
  end

end

class Setup

  def self.factory(setup)
    case setup
    when "Sort"
      SortSetup
    when "Random"
      RandomSetup
    else
      raise Exception.new("No setup found for selection: #{setup}.\n")
    end.new
  end

end