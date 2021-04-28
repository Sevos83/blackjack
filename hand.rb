# frozen_string_literal: true

class Hand
  attr_accessor :cards

  BLACK_JACK = 21
  ACE_CORRECT = 10
  MAX_CARDS = 3

  def initialize
    @cards = []
  end

  def sum_cards
    sum = @cards.sum(&:value)
    ace_correction(sum)
  end

  def ace_correction(sum)
    @cards.each do |card|
      sum -= ACE_CORRECT if sum > BLACK_JACK && card.ace?
    end
    sum
  end

  def full_hand?
    @cards.size == MAX_CARDS
  end
end
