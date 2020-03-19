require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
require './lib/player'
require "pry"

class PlayerTest < Minitest::Test
  def setup
    @card1 = Card.new(:diamond, 'Queen', 12)
    @card2 = Card.new(:spade, '3', 3)
    @card3 = Card.new(:heart, 'Ace', 14)
    @cards = [@card1, @card2, @card3]
    @deck = Deck.new(@cards)
    @player = Player.new('Shark', @deck)
  end

  def test_it_exists

    assert_instance_of Player, @player
  end

  def test_it_has_a_name

    assert_equal "Shark", @player.name
  end

  def test_it_has_a_deck

    assert_equal @deck, @player.deck
  end

  def test_it_has_not_lost

    assert_equal false, @player.has_lost?
  end

  def test_it_has_empty_deck
    @cards = []
    @deck = Deck.new(@cards)
    @player = Player.new('Shark', @deck)

    assert_equal [], @player.deck.cards
  end

  def test_it_has_lost
    @cards = []
    @deck = Deck.new(@cards)
    @player = Player.new('Shark', @deck)

    assert_equal true, @player.has_lost?
  end

end
