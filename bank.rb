# frozen_string_literal: true

class Bank
  BET = 10

  attr_reader :bank

  def initialize
    @bank = 0
  end

  def auto_bet(player, dealer)
    player.minus_money(BET)
    dealer.minus_money(BET)
    @bank = BET * 2
  end

  def winner(player)
    player.plus_money(@bank)
    @bank = 0
  end

  def draw(player, dealer)
    player.plus_money(@bank / 2)
    dealer.plus_money(@bank / 2)
    @bank = 0
  end

  def money?(player)
    player.cash > BET
  end
end
