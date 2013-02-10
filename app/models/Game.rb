
class Game
  
  def show_green_led green_leds, id = 0
      green_led = green_leds[id]
      green_led.send(:on)
      sleep(1)
      green_led.send(:off) unless green_led == green_leds.last
    
  end

  def show_red_led red_leds, id = 0
      red_led = red_leds[id]
      red_led.send(:on)
      sleep(1)
      red_led.send(:off) unless red_led == red_leds.last
  end



  p "SARTED!"
  board = Dino::Board.new(Dino::TxRx.new)

  red_leds = []
  green_leds = []


  p "CREATING GREEN LEDS ARRAY..."
  (9..13).each do |i|
    p "CREATING GREEN LED ARRAY #ID #{i}\r"
    green_leds << Dino::Components::Led.new(pin: i, board: board)
  end

  green_leds.reverse!


  p "CREATING RED LEDS ARRAY..."
  (3..7).each do |i|
    p "CREATING RED LED ARRAY #ID #{i}"
    red_leds << Dino::Components::Led.new(pin: i, board: board)
  end
  p "RED LEDS ARRAY DONE!..."

  red_leds.reverse!

  loop do
    sleep(2)
    p "LOOPING..."  
    (0..4).each do |i|
      p "ID #{i}"
        show_green_led(green_leds, i)
      if i == 2
        show_red_led(red_leds, i)
      end
    end
  end
  
end