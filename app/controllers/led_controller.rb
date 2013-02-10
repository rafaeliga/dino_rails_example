class LedController < ApplicationController
  before_filter :set_up_led, only: [:right, :left]

  def index
  end

  def right
    @led.on
  end

  def left
    @led.off
  end

  private

  def set_up_led
    @led = Dino::Components::Led.new(pin: 12, board: DinoRails::Application.config.board)
  end
end