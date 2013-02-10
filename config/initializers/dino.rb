pusher = YAML.load_file(File.join(DinoRails::Application.root, 'config/pusher.yml'))

Pusher.app_id = pusher['app_id']
Pusher.key = pusher['key']
Pusher.secret = pusher['secret']

begin
  DinoRails::Application.config.board = Dino::Board.new(Dino::TxRx.new)
rescue Dino::BoardNotFound
  puts 'The board is not connected'
end