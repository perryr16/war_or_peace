require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
require './lib/player'
require './lib/turn'
require './lib/start'
require "pry"

class StartTest < Minitest::Test

  def test_it_exists
    card1 = Card.new(:club, '2', 2)
    card2 = Card.new(:club, '3', 3)
    cards1 = [card1, card1]
    cards2 = [card2, card2]
    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)
    player1 = Player.new('Shark', deck1)
    player2 = Player.new('Guppie', deck2)
    turn = Turn.new(player1, player2)
    start = Start.new(turn)

    assert_instance_of Start, start

  end

  def test_new_turn_result_is_winners_deck_is_larger
    card1 = Card.new(:club, '2', 2)
    card2 = Card.new(:club, '3', 3)
    card3 = Card.new(:club, '10', 10)
    card4 = Card.new(:club, '9', 9)
    cards1 = [card1, card2]
    cards2 = [card3, card4]
    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)
    player1 = Player.new('Shark', deck1)
    player2 = Player.new('Guppie', deck2)
    turn = Turn.new(player1, player2)
    start = Start.new(turn)
    #binding.pry

    #new_turn returns spoils of war
    assert_equal [card1, card3], start.new_turn

  end

  def test_it_plays_war_someone_looses
    card1 = Card.new(:club, '2', 2)
    card2 = Card.new(:club, '3', 3)

    cards1 = [card1]
    cards2 = [card2, card2]
    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)
    player1 = Player.new('Shark', deck1)
    player2 = Player.new('Guppie', deck2)
    turn = Turn.new(player1, player2)
    start = Start.new(turn)
    start.play_war
    #binding.pry

    assert_equal true, start.turn.player1.has_lost?
    assert_equal false, start.turn.player2.has_lost?

  end


end #final
