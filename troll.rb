require 'discordrb'
require 'json'

bot = Discordrb::Commands::CommandBot.new token: 'NzA0MjI5NTI1MjQ0MDg0MjQ0.XvU4aA.RCCkz5wfO1b6DNKHOK8XQVewRb4', prefix: '!'



puts "Invite link: #{bot.invite_url}"

bot.mention do |event|
  loop do
    users = event.server.members
    users.each do |each|
      event.server.move(340585124783587330, 689600806571212870)
      sleep(1)
      event.server.move(340585124783587330, 688841338296336447)
      sleep(1)
    end

  end

end

bot.run
