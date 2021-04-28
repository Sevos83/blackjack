# frozen_string_literal: true

class Dealer < Player
  DEALER_NAME = 'Dealer'
  MAX_POINTS = 17

  def initialize
    super(DEALER_NAME)
  end

  def can_take_card?
    super && @hand.sum_cards < MAX_POINTS
  end
end
