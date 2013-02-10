class LedController < ApplicationController
  before_filter :set_up_leds, only: [:right, :left]

  def index
  end

  def right
    @led.on
  end

  def left
    @led.off
  end

  def start
    @game = Game.new
    @game.start
  end

  private

  def set_up_leds
    @led = Dino::Components::Led.new(pin: 12, board: DinoRails::Application.config.board)
  end
end