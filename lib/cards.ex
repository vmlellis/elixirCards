defmodule Cards do
  def create_deck do
    cards = ["Ace", "Two", "Three"]
    Enum.map(
      Enum.to_list(1..Enum.count(cards)),
      fn i -> String.downcase(Enum.at(cards, i - 1)) end
    )
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, String.downcase(card))
  end
end
