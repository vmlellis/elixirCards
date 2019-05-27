defmodule Cards do
  def create_deck do
    values = [
      "Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine",
      "Jack", "Queen", "King"
    ]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values, do: "#{value} of #{suit}"
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    cards = for card <- deck, do: String.downcase(card)
    Enum.member?(cards, String.downcase(card))
  end

  def deal(deck, hand_size) do
    {hand, _rest_of_deck} = Enum.split(shuffle(deck), hand_size)
    hand
  end
end
