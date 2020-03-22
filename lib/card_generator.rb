# card_list = []
# File.open("./lib/cards.txt").each do |line|
#   card_list << line
# end
# puts "Card List: #{card_list}"

require './lib/card'


class CardGenerator

  def initialize(filename)
    @filename = filename
  end

  #turn list into array
  def file_to_string_array
    card_list = []
    File.open("./lib/two_cards.txt").each do |line|
      card_list << line
    end
    card_list.each do |card|
      card.slice!("\n")
    end
    #puts "#{@card_list}"
    #@card_list
  end

  def array_of_arrays
      card_array_of_arrays = file_to_string_array.map do |string|
        #binding.pry
        string = [string]
      #  binding.pry
      end
      #binding.pry
      card_array_of_arrays
  end

  def string_to_3_elements
  #  binding.pry
    three_elements = array_of_arrays.map do |card_string|
      card_string[0].split(', ')
    end
  end

  def format_card
    formatted_cards = string_to_3_elements.map do |card|
      card = [card[1].to_sym, card[0], card[2].to_i]
    end
  end

  def assign_to_card_class

  end

end #final
