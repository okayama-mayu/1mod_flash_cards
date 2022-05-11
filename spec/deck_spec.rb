require './lib/card'
require './lib/deck'
require 'pry'

RSpec.describe Card do
  it 'can create an instance of Card' do
    card_1 = Card.new(
      "What is the capital of Alaska?",
      "Juneau",
      :Geography
    )

    expect(card_1).to be_instance_of(Card)
  end

  it 'can create three instances of Cards' do
    card_1 = Card.new(
      "What is the capital of Alaska?",
      "Juneau",
      :Geography
    )

    expect(card_1).to be_instance_of(Card)
  end
end

RSpec.describe Deck do
  it 'can store Cards' do
    card_1 = Card.new(
      "What is the capital of Alaska?",
      "Juneau",
      :Geography
    )

    card_2 = Card.new(
      "The Viking spacecraft sent back to Earth photographs and
      reports about the surface of which planet?",
      "Mars",
      :STEM
    )

    card_3 = Card.new("Describe in words the exact direction that
      is 697.5° clockwise from due north?",
      "North north west",
      :STEM
    )

    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(deck).to be_instance_of(Deck)
    expect(deck.cards).to eq(cards)
  end

  it 'can count cards' do
    card_1 = Card.new(
      "What is the capital of Alaska?",
      "Juneau",
      :Geography
    )

    card_2 = Card.new(
      "The Viking spacecraft sent back to Earth photographs and
      reports about the surface of which planet?",
      "Mars",
      :STEM
    )

    card_3 = Card.new("Describe in words the exact direction that
      is 697.5° clockwise from due north?",
      "North north west",
      :STEM
    )

    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(deck.count).to eq(3)
  end

  it 'can pull cards from the deck by category' do
    card_1 = Card.new(
      "What is the capital of Alaska?",
      "Juneau",
      :Geography
    )

    card_2 = Card.new(
      "The Viking spacecraft sent back to Earth photographs and
      reports about the surface of which planet?",
      "Mars",
      :STEM
    )

    card_3 = Card.new("Describe in words the exact direction that
      is 697.5° clockwise from due north?",
      "North north west",
      :STEM
    )

    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(deck.cards_in_category(:STEM)).to eq(cards[1,2])
    expect(deck.cards_in_category(:Geography)).to eq(cards.first(1))
    expect(deck.cards_in_category("Pop Culture")).to eq([])
  end
end
