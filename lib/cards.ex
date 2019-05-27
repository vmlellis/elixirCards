defmodule Cards do
  def create_deck do
    values = [
      "Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine",
      "Jack", "Queen", "King"
    ]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    cards = for value <- values do
      for suit <- suits, do: "#{value} of #{suit}"
    end

    List.flatten(cards)
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, String.capitalize(card))
  end
end
