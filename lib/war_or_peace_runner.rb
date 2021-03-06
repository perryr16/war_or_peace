require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/start'
require './lib/card_generator'
require "pry"

def not_a_method_just_hiding_commented_text
  # standard deck
  # card1 = Card.new(:spade, 'Ace', 14)
  # card2 = Card.new(:spade, 'King', 13)
  # card3 = Card.new(:spade, 'Queen', 12)
  # card4 = Card.new(:spade, 'Jack', 11)
  # card5 = Card.new(:spade, '10', 10)
  # card6 = Card.new(:spade, '9', 9)
  # card7 = Card.new(:spade, '8', 8)
  # card8 = Card.new(:spade, '7', 7)
  # card9 = Card.new(:spade, '6', 6)
  # card10 = Card.new(:spade, '5', 5)
  # card11 = Card.new(:spade, '4', 4)
  # card12 = Card.new(:spade, '3', 3)
  # card13 = Card.new(:spade, '2', 2)
  # card14 = Card.new(:heart, 'Ace', 14)
  # card15 = Card.new(:heart, 'King', 13)
  # card16 = Card.new(:heart, 'Queen', 12)
  # card17 = Card.new(:heart, 'Jack', 11)
  # card18 = Card.new(:heart, '10', 10)
  # card19 = Card.new(:heart, '9', 9)
  # card20 = Card.new(:heart, '8', 8)
  # card21 = Card.new(:heart, '7', 7)
  # card22 = Card.new(:heart, '6', 6)
  # card23 = Card.new(:heart, '5', 5)
  # card24 = Card.new(:heart, '4', 4)
  # card25 = Card.new(:heart, '3', 3)
  # card26 = Card.new(:heart, '2', 2)
  # card27 = Card.new(:club, 'Ace', 14)
  # card28 = Card.new(:club, 'King', 13)
  # card29 = Card.new(:club, 'Queen', 12)
  # card30 = Card.new(:club, 'Jack', 11)
  # card31 = Card.new(:club, '10', 10)
  # card32 = Card.new(:club, '9', 9)
  # card33 = Card.new(:club, '8', 8)
  # card34 = Card.new(:club, '7', 7)
  # card35 = Card.new(:club, '6', 6)
  # card36 = Card.new(:club, '5', 5)
  # card37 = Card.new(:club, '4', 4)
  # card38 = Card.new(:club, '3', 3)
  # card39 = Card.new(:club, '2', 2)
  # card40 = Card.new(:diamond, 'Ace', 14)
  # card41 = Card.new(:diamond, 'King', 13)
  # card42 = Card.new(:diamond, 'Queen', 12)
  # card43 = Card.new(:diamond, 'Jack', 11)
  # card44 = Card.new(:diamond, '10', 10)
  # card45 = Card.new(:diamond, '9', 9)
  # card46 = Card.new(:diamond, '8', 8)
  # card47 = Card.new(:diamond, '7', 7)
  # card48 = Card.new(:diamond, '6', 6)
  # card49 = Card.new(:diamond, '5', 5)
  # card50 = Card.new(:diamond, '4', 4)
  # card51 = Card.new(:diamond, '3', 3)
  # card52 = Card.new(:diamond, '2', 2)
  #
  # #put cards in an array for sorting
  # deck_of_52 =[card1, card2, card3, card4, card5, card6, card7, card8, card9, card10,
  # card11, card12, card13, card14, card15, card16, card17, card18, card19, card20,
  # card21, card22, card23, card24, card25, card26, card27, card28, card29, card30,
  # card31, card32, card33, card34, card35, card36, card37, card38, card39, card40,
  # card41, card42, card43, card44, card45, card46, card47, card48, card49, card50,
  # card51, card52]
  filename = "./lib/cards.txt"
  master_card_generator = CardGenerator.new(filename)
  deck_of_52 = master_card_generator.create_deck
  # binding.pry
  #accumulators
  first_deck = []
  second_deck = []

  #########card testing
  # first_deck = [card1, card2]
  # second_deck = [card3, card4]
  #binding.pry

  ######card testing
  # first_deck = [card1, card1, card1]
  # second_deck = [card1, card1]

  ####### random card distribution
  # EVEN NUMBERS LEAD TO NEVER ENDING LOOPS!
  # ODD UNUMBERS WORK AS EXPECTED
  deck_of_52_random = deck_of_52.cards.shuffle #for card_geneartor
  #deck_of_52_random = deck_of_52
  first_deck = deck_of_52_random[0..25]
  second_deck = deck_of_52_random[26..50]
  #binding.pry
  #binding.pry

  #########gaurenteed win in 25 turns
  # deck_of_52.each do |card|
  #   if card.rank > 7
  #     first_deck << card
  #   elsif card.rank < 8
  #     second_deck << card
  #   end
  # end
  #binding.pry

  ########### mutually_assured_destruction
  # first_deck = deck_of_52[0..12]
  # second_deck = deck_of_52[13..25]
  # second_deck << deck_of_52[28]
  #binding.pry

  ############ War on war! (ends v 1 cards)
  # first_deck = deck_of_52[16..25].reverse
  # second_deck = [card13, card12, card13, card10, card9, card13, card7, card6, card13, card4]
  # binding.pry


  ############# War on war! (ends v 2 cards)
  # first_deck = deck_of_52[13..25].reverse
  # second_deck = [card13, card12, card13, card10, card9, card13, card7, card6, card13, card4, card3, card13, card2, card1]
  # binding.pry

  ############# War on war! (ends v 3 cards)
  # first_deck = deck_of_52[14..25].reverse
  # second_deck = [card13, card12, card13, card10, card9, card13, card7, card6, card13, card4, card3, card13]
  # binding.pry
end

filename = "./lib/cards.txt"
master_card_generator = CardGenerator.new(filename)
deck_of_52 = master_card_generator.create_deck
# binding.pry

####### random card distribution
# EVEN NUMBERS LEAD TO NEVER ENDING LOOPS!
# ODD UNUMBERS WORK AS EXPECTED
deck_of_52_random = deck_of_52.cards.shuffle #for card_geneartor
#deck_of_52_random = deck_of_52
first_deck = deck_of_52_random[0..25]
second_deck = deck_of_52_random[26..50]

#assign deck instances
player1_deck = Deck.new(first_deck)
player2_deck = Deck.new(second_deck)
#assign player instances
player1 = Player.new('Shark', player1_deck)
player2 = Player.new('Guppie', player2_deck)
#assign turn instance
master_turn = Turn.new(player1, player2)
#assign start instance
master_start = Start.new(master_turn)
master_start.start
