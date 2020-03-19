require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'

require "pry"

class TurnTest < Minitest::Test

  def test_it_exists
    filename = 'text'
    card_generator = CardGenerator.new(filename)

    assert_instance_of CardGenerator, card_generator
  end

  def test_it_opens_file_and_puts_into_array
    filename = "./lib/cards.txt"
    card_generator = CardGenerator.new(filename)
    card_generator.file_to_array

    assert_equal 52, card_generator.card_list.length
    card_array = ["2, spade, 2", "3, spade, 3", "4, spade, 4", "5, spade, 5", "6, spade, 6", "7, spade, 7", "8, spade, 8", "9, spade, 9", "10, spade, 10", "Jack, spade, 11", "Queen, spade, 12", "King, spade, 13", "Ace, spade, 14", "2, hea
rt, 2", "3, heart, 3", "4, heart, 4", "5, heart, 5", "6, heart, 6", "7, heart, 7", "8, heart, 8", "9, heart, 9", "10, heart, 10", "Jack, heart, 11", "Queen, heart, 12", "King, heart, 13", "Ace, heart, 14", "2, diamond, 2",
 "3, diamond, 3", "4, diamond, 4", "5, diamond, 5", "6, diamond, 6", "7, diamond, 7", "8, diamond, 8", "9, diamond, 9", "10, diamond, 10", "Jack, diamond, 11", "Queen, diamond, 12", "King, diamond, 13", "Ace, diamond, 14",
 "2, club, 2", "3, club, 3", "4, club, 4", "5, club, 5", "6, club, 6", "7, club, 7", "8, club, 8", "9, club, 9", "10, club, 10", "Jack, club, 11", "Queen, club, 12", "King, club, 13", "Ace, club, 14"]

  assert_equal card_array, card_generator.card_list
  end

  def test_it_transforms_array_into_cards
    skip
    filename = "./lib/cards.txt"
    card_generator = CardGenerator.new(filename)
    card_generator.file_to_array
    card_generator.array_to_cards

  end

end