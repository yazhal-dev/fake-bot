require 'discordrb'
require 'json'

bot = Discordrb::Commands::CommandBot.new token: 'NzI0Njc0MDQ1NjM5MDAwMTE0.XvPIuw.HQp6TmGYMhh-L4l5DwdwQeh4Nuc', prefix: '!'



puts "Invite link: #{bot.invite_url}"
json = File.read('birthdays.json')
dob = JSON.parse(json)
json = File.read('settings.json')
settings = JSON.parse(json)



#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



bot.ready do |event|
	users = bot.server(627448059671871508).members
	loop do
		json = File.read('birthdays.json')
		dob = JSON.parse(json)
		users.each do |user|
			sleep(2)
			if dob["user#{user.id}"] == user.id && dob["day#{user.id}"] == Time.new.day.to_i && dob["month#{user.id}"] == Time.new.month.to_i
				sleep(2)
				user.add_role(725307242836131900)
				if dob["embed_sent#{user.id}"] == false
				sleep(2)
				bot.channel(627448059671871510).send_embed do |embed|
				      embed.colour = 0, 0, 0
							embed.description = "it's <@#{user.id}> birthday!<a:ba14:725210560140017675>"



				end

				dob["embed_sent#{user.id}"] = true
				File.write("birthdays.json", dob.to_json)

			end

			else
				sleep(2)
				user.remove_role(725307242836131900)
				dob["embed_sent#{user.id}"] = false
				File.write("birthdays.json", dob.to_json)
			end
		end
	end
end







#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

bot.command(:roles) do |event|

break unless event.user.role?(728054774049800264) || event.user.role?(697376461283393608)

@messages = Hash.new

#RED ROLES
sleep(2)
event.channel.send_embed do |embed|
	  embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://cdn.discordapp.com/attachments/724662461629857822/724669182922326116/tumblr_p6xsmrW7IM1skzhiao1_1280.gif')
      embed.colour = 142, 3, 17


end
sleep(2)
red = event.channel.send_embed do |embed|
      embed.colour = 142, 3, 17
			embed.description = "<:711809025775239199:725212995130753045>:<@&715750609029955614> *strength*\n<:691881471434162207:725213014935994429>:<@&715762840610537502> *dragon*\n<:711808998869041193:725213037270925312>:<@&715753975647043616> *power*"



end

sleep(2)
red.react("711809025775239199:725212995130753045")
sleep(2)
red.react("691881471434162207:725213014935994429")
sleep(2)
red.react("711808998869041193:725213037270925312")


@messages["RED_ID"] = red.id
#ORANGE ROLES
sleep(2)
event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://cdn.discordapp.com/attachments/490697349006622720/725452192516931584/gif_orange.gif')
      embed.colour = 245,100,22


end
sleep(2)
orange = event.channel.send_embed do |embed|
      embed.colour = 245,100,22
			embed.description = "<:715329255789035550:725213083643019324>:<@&715757167356936224> *fire*\n<:715329238651371541:725213114483867718>:<@&715764051669549056> *fox*\n<:715329249539653647:725213134264074371>:<@&715757307551809566> *loyalty*"



end

sleep(2)
orange.react("715329255789035550:725213083643019324")
sleep(2)
orange.react("715329238651371541:725213114483867718")
sleep(2)
orange.react("715329249539653647:725213134264074371")

@messages["ORANGE_ID"] = orange.id


#YELLOW ROLES
sleep(2)
event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://cdn.discordapp.com/attachments/724662461629857822/724671587802152980/8qG8.gif')
      embed.colour = 247,219,69


end
sleep(2)
yellow = event.channel.send_embed do |embed|
      embed.colour = 247,219,69
			embed.description = "<:711809500012740670:725213182712348743>:<@&715764308801486979> *treasure*\n<:711809546019930153:725213215012814912>:<@&715764472928534528> *kind*\n<:711809394312085546:725213232117186570>:<@&715764930498003017> *harmony*"



end

sleep(2)
yellow.react("711809500012740670:725213182712348743")
sleep(2)
yellow.react("711809546019930153:725213215012814912")
sleep(2)
yellow.react("711809394312085546:725213232117186570")

@messages["YELLOW_ID"] = yellow.id


#GREEN ROLES
sleep(2)
event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://cdn.discordapp.com/attachments/724662461629857822/724671906330181684/85ea78372f60f418c701b9e00c1dcb6b.gif')
      embed.colour = 76,105,72


end
sleep(2)
green = event.channel.send_embed do |embed|
      embed.colour = 76,105,72
			embed.description = "<:711809248194986010:725213298953420860>:<@&715765226783637576> *money*\n<:711809220219240588:725213321258598411>:<@&715765353602482306> *luck*\n<:711808958490476605:725213334751805450>:<@&715765596549152800> *healing*"



end

sleep(2)
green.react("711809248194986010:725213298953420860")
sleep(2)
green.react("711809220219240588:725213321258598411")
sleep(2)
green.react("711808958490476605:725213334751805450")

@messages["GREEN_ID"] = green.id


#BLUE ROLES
sleep(2)
event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://cdn.discordapp.com/attachments/724662461629857822/725221644313821214/53450c323efef5d1da3adf9b5c49bb39.gif')
      embed.colour = 5,60,150


end
sleep(2)
blue = event.channel.send_embed do |embed|
      embed.colour = 5,60,150
			embed.description = "<:711809293871087627:725213389994852373>:<@&715766588510306334> *honor*\n<:691881544444411984:725213402276036669>:<@&715766709893464084> *truth*\n<:691881118315577394:725213416800649237>:<@&715766840260821074> *faith*"



end

sleep(2)
blue.react("711809293871087627:725213389994852373")
sleep(2)
blue.react("691881544444411984:725213402276036669")
sleep(2)
blue.react("691881118315577394:725213416800649237")

@messages["BLUE_ID"] = blue.id


#PURPLE ROLES
sleep(2)
event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://cdn.discordapp.com/attachments/724662461629857822/725221707186438224/tumblr_98794b183750891f1584a303ba1f4b91_8cb525ed_400.gif')
      embed.colour = 164, 60, 248


end
sleep(2)
purple = event.channel.send_embed do |embed|
      embed.colour = 164, 60, 248
			embed.description = "<:711809324527124560:725213480642412567>:<@&715766042432897076> *royalty*\n<:691881639189413899:725213577488629822>:<@&715766373627985971> *courage*\n<:711808897807024188:725213564356395088>:<@&715766252077056031> *wisdom*"



end

sleep(2)
purple.react("711809324527124560:725213480642412567")
sleep(2)
purple.react("691881639189413899:725213577488629822")
sleep(2)
purple.react("711808897807024188:725213564356395088")

@messages["PURPLE_ID"] = purple.id


#PINK ROLES
sleep(2)
event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://cdn.discordapp.com/attachments/724662461629857822/725221775327100958/image0-5.gif')
      embed.colour = 182, 110, 131


end
sleep(2)
pink = event.channel.send_embed do |embed|
      embed.colour = 182, 110, 131
			embed.description = "<:711808829977002025:725213624783601665>:<@&715763718184763424> *pleasure*\n<:711808862642110483:725213638440255550>:<@&715763807158272041> *beauty*\n<:711808762322616340:725213651107053680>:<@&715763869011935252> *dream*"



end

sleep(2)
pink.react("711808829977002025:725213624783601665")
sleep(2)
pink.react("711808862642110483:725213638440255550")
sleep(2)
pink.react("711808762322616340:725213651107053680")

@messages["PINK_ID"] = pink.id


#BLACK ROLES
sleep(2)
event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://cdn.discordapp.com/attachments/724662461629857822/725221913252855892/088960938648e71920bd7d12f24ee686cb2090abr1-500-282_hq.gif')
      embed.colour = 0, 0, 0


end
sleep(2)
black = event.channel.send_embed do |embed|
      embed.colour = 0, 0, 0
			embed.description = "<:711809478831374347:725213687698161695>:<@&715767411638403174> *eternity*\n<:711812900209033267:725213699656384552>:<@&715767555096313857> *shade*\n<:691881069401866310:725213713845714964>:<@&715767699099353158> *blessing*"



end

sleep(2)
black.react("711809478831374347:725213687698161695")
sleep(2)
black.react("711812900209033267:725213699656384552")
sleep(2)
black.react("691881069401866310:725213713845714964")

@messages["BLACK_ID"] = black.id

event.channel.send_embed do |embed|
  embed.description = "refrain from using more than one role"

end



File.write("settings.json", @messages.to_json)
json = File.read('settings.json')
settings = JSON.parse(json)
return nil




end


#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


bot.command(:pings) do |event|

@pings = Hash.new

break unless event.user.role?(728054774049800264) || event.user.role?(697376461283393608)
sleep(2)
welcome = event.channel.send_embed do |embed|
			embed.description = "**welcomers**\nreact with <a:ab1:725213753905250444> to get pinged when a new person joins the server"
      embed.colour = 0, 0, 0


end
sleep(2)
welcome.react("a:ab1:725213753905250444")



@pings["WELCOME_ID"] = welcome.id
sleep(2)
chat = event.channel.send_embed do |embed|
			embed.description = "**chat revive**\nreact with <a:ab2:725213767217971202> to get pinged when the chat is\ndead"
      embed.colour = 0xffffff


end
sleep(2)
chat.react("a:ab2:725213767217971202")

@pings["CHAT_ID"] = chat.id
sleep(2)
movie = event.channel.send_embed do |embed|
			embed.description = "**movie night**\nreact with <a:ab3:725215542193029200> to get pinged whenever we\nstream movies"
      embed.colour = 237, 5, 67


end
sleep(2)
movie.react("a:ab3:725215542193029200")

@pings["MOVIE_ID"] = movie.id

result = settings.merge(@pings)
File.write("settings.json", result.to_json)
json = File.read('settings.json')
settings = JSON.parse(json)

return nil



end

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#REDS

bot.reaction_add(emoji: 725212995130753045) do |event|
	if event.message.id == settings['RED_ID']
		sleep(2)
		event.user.add_role(715750609029955614)
	end
end

bot.reaction_remove(emoji: 725212995130753045) do |event|
	if event.message.id == settings['RED_ID']
		sleep(2)
		event.user.remove_role(715750609029955614)
	end
end


bot.reaction_add(emoji: 725213014935994429) do |event|
	if event.message.id == settings['RED_ID']
		sleep(2)
		event.user.add_role(715762840610537502)
	end
end

bot.reaction_remove(emoji: 725213014935994429) do |event|
	if event.message.id == settings['RED_ID']
		sleep(2)
		event.user.remove_role(715762840610537502)
	end
end


bot.reaction_add(emoji: 725213037270925312) do |event|
	if event.message.id == settings['RED_ID']
		sleep(2)
		event.user.add_role(715753975647043616)

	end
end

bot.reaction_remove(emoji: 725213037270925312) do |event|
	if event.message.id == settings['RED_ID']
		sleep(2)
		event.user.remove_role(715753975647043616)

	end
end







#ORANGES

bot.reaction_add(emoji: 725213083643019324) do |event|
	if event.message.id == settings['ORANGE_ID']
		sleep(2)
		event.user.add_role(715757167356936224)
	end
end

bot.reaction_remove(emoji: 725213083643019324) do |event|
	if event.message.id == settings['ORANGE_ID']
		sleep(2)
		event.user.remove_role(715757167356936224)
	end
end

bot.reaction_add(emoji: 725213114483867718) do |event|
	if event.message.id == settings['ORANGE_ID']
		sleep(2)
		event.user.add_role(715764051669549056)
	end
end

bot.reaction_remove(emoji: 725213114483867718) do |event|
	if event.message.id == settings['ORANGE_ID']
		sleep(2)
		event.user.remove_role(715764051669549056)
	end
end

bot.reaction_add(emoji: 725213134264074371) do |event|
	if event.message.id == settings['ORANGE_ID']
		sleep(2)
		event.user.add_role(715757307551809566)
	end
end

bot.reaction_remove(emoji: 725213134264074371) do |event|
	if event.message.id == settings['ORANGE_ID']
		sleep(2)
		event.user.remove_role(715757307551809566)
	end
end





#YELLOWS

bot.reaction_add(emoji: 725213182712348743) do |event|
	if event.message.id == settings['YELLOW_ID']
		sleep(2)
		event.user.add_role(715764308801486979)
	end
end

bot.reaction_remove(emoji: 725213182712348743) do |event|
	if event.message.id == settings['YELLOW_ID']
		sleep(2)
		event.user.remove_role(715764308801486979)
	end
end

bot.reaction_add(emoji: 725213215012814912) do |event|
	if event.message.id == settings['YELLOW_ID']
		sleep(2)
		event.user.add_role(715764472928534528)
	end
end

bot.reaction_remove(emoji: 725213215012814912) do |event|
	if event.message.id == settings['YELLOW_ID']
		sleep(2)
		event.user.remove_role(715764472928534528)
	end
end

bot.reaction_add(emoji: 725213232117186570) do |event|
	if event.message.id == settings['YELLOW_ID']
		sleep(2)
		event.user.add_role(715764930498003017)
	end
end

bot.reaction_remove(emoji: 725213232117186570) do |event|
	if event.message.id == settings['YELLOW_ID']
		sleep(2)
		event.user.remove_role(715764930498003017)
	end
end





#GREENS

bot.reaction_add(emoji: 725213298953420860) do |event|
	if event.message.id == settings['GREEN_ID']
		sleep(2)
		event.user.add_role(715765226783637576)
	end
end

bot.reaction_remove(emoji: 725213298953420860) do |event|
	if event.message.id == settings['GREEN_ID']
		sleep(2)
		event.user.remove_role(715765226783637576)
	end
end

bot.reaction_add(emoji: 725213321258598411) do |event|
	if event.message.id == settings['GREEN_ID']
		sleep(2)
		event.user.add_role(715765353602482306)
	end
end

bot.reaction_remove(emoji: 725213321258598411) do |event|
	if event.message.id == settings['GREEN_ID']
		sleep(2)
		event.user.remove_role(715765353602482306)
	end
end

bot.reaction_add(emoji: 725213334751805450) do |event|
	if event.message.id == settings['GREEN_ID']
		sleep(2)
		event.user.add_role(715765596549152800)
	end
end

bot.reaction_remove(emoji: 725213334751805450) do |event|
	if event.message.id == settings['GREEN_ID']
		sleep(2)
		event.user.remove_role(715765596549152800)
	end
end







#BLUES

bot.reaction_add(emoji: 725213389994852373) do |event|
	if event.message.id == settings['BLUE_ID']
		sleep(2)
		event.user.add_role(715766588510306334)
	end
end

bot.reaction_remove(emoji: 725213389994852373) do |event|
	if event.message.id == settings['BLUE_ID']
		sleep(2)
		event.user.remove_role(715766588510306334)
	end
end

bot.reaction_add(emoji: 725213402276036669) do |event|
	if event.message.id == settings['BLUE_ID']
		sleep(2)
		event.user.add_role(715766709893464084)
	end
end

bot.reaction_remove(emoji: 725213402276036669) do |event|
	if event.message.id == settings['BLUE_ID']
		sleep(2)
		event.user.remove_role(715766709893464084)
	end
end

bot.reaction_add(emoji: 725213416800649237) do |event|
	if event.message.id == settings['BLUE_ID']
		sleep(2)
		event.user.add_role(715766840260821074)
	end
end

bot.reaction_remove(emoji: 725213416800649237) do |event|
	if event.message.id == settings['BLUE_ID']
		sleep(2)
		event.user.remove_role(715766840260821074)
	end
end







#PURPLES

bot.reaction_add(emoji: 725213480642412567) do |event|
	if event.message.id == settings['PURPLE_ID']
		sleep(2)
		event.user.add_role(715766042432897076)
	end
end

bot.reaction_remove(emoji: 725213480642412567) do |event|
	if event.message.id == settings['PURPLE_ID']
		sleep(2)
		event.user.remove_role(715766042432897076)
	end
end

bot.reaction_add(emoji: 725213577488629822) do |event|
	if event.message.id == settings['PURPLE_ID']
		sleep(2)
		event.user.add_role(715766373627985971)
	end
end

bot.reaction_remove(emoji: 725213577488629822) do |event|
	if event.message.id == settings['PURPLE_ID']
		sleep(2)
		event.user.remove_role(715766373627985971)
	end
end

bot.reaction_add(emoji: 725213564356395088) do |event|
	if event.message.id == settings['PURPLE_ID']
		sleep(2)
		event.user.add_role(715766252077056031)
	end
end

bot.reaction_remove(emoji: 725213564356395088) do |event|
	if event.message.id == settings['PURPLE_ID']
		sleep(2)
		event.user.remove_role(715766252077056031)
	end
end







#PINKS

bot.reaction_add(emoji: 725213624783601665) do |event|
	if event.message.id == settings['PINK_ID']
		sleep(2)
		event.user.add_role(715763718184763424)
	end
end

bot.reaction_remove(emoji: 725213624783601665) do |event|
	if event.message.id == settings['PINK_ID']
		sleep(2)
		event.user.remove_role(715763718184763424)
	end
end

bot.reaction_add(emoji: 725213638440255550) do |event|
	if event.message.id == settings['PINK_ID']
		sleep(2)
		event.user.add_role(715763807158272041)
	end
end

bot.reaction_remove(emoji: 725213638440255550) do |event|
	if event.message.id == settings['PINK_ID']
		sleep(2)
		event.user.remove_role(715763807158272041)
	end
end

bot.reaction_add(emoji: 725213651107053680) do |event|
	if event.message.id == settings['PINK_ID']
		sleep(2)
		event.user.add_role(715763869011935252)
	end
end

bot.reaction_remove(emoji: 725213651107053680) do |event|
	if event.message.id == settings['PINK_ID']
		sleep(2)
		event.user.remove_role(715763869011935252)
	end
end







#BLACKS

bot.reaction_add(emoji: 725213687698161695) do |event|
	if event.message.id == settings['BLACK_ID']
		sleep(2)
		event.user.add_role(715767411638403174)
	end
end

bot.reaction_remove(emoji: 725213687698161695) do |event|
	if event.message.id == settings['BLACK_ID']
		sleep(2)
		event.user.remove_role(715767411638403174)
	end
end

bot.reaction_add(emoji: 725213699656384552) do |event|
	if event.message.id == settings['BLACK_ID']
		sleep(2)
		event.user.add_role(715767555096313857)
	end
end

bot.reaction_remove(emoji: 725213699656384552) do |event|
	if event.message.id == settings['BLACK_ID']
		sleep(2)
		event.user.remove_role(715767555096313857)
	end
end

bot.reaction_add(emoji: 725213713845714964) do |event|
	if event.message.id == settings['BLACK_ID']
		sleep(2)
		event.user.add_role(715767699099353158)
	end
end

bot.reaction_remove(emoji: 725213713845714964) do |event|
	if event.message.id == settings['BLACK_ID']
		sleep(2)
		event.user.remove_role(715767699099353158)
	end
end



#WELCOME


bot.reaction_add(emoji: 725213753905250444) do |event|
	if event.message.id == settings['WELCOME_ID']
		sleep(2)
		event.user.add_role(716521464714756136)
	end
end

bot.reaction_remove(emoji: 725213753905250444) do |event|
	if event.message.id == settings['WELCOME_ID']
		sleep(2)
		event.user.remove_role(716521464714756136)
	end
end


#CHAT


bot.reaction_add(emoji: 725213767217971202) do |event|
	if event.message.id == settings['CHAT_ID']
		sleep(2)
		event.user.add_role(725215819042259034)
	end
end

bot.reaction_remove(emoji: 725213767217971202) do |event|
	if event.message.id == settings['CHAT_ID']
		sleep(2)
		event.user.remove_role(725215819042259034)
	end
end

#MOVIE

bot.reaction_add(emoji: 725215542193029200) do |event|
	if event.message.id == settings['MOVIE_ID']
		sleep(2)
		event.user.add_role(707605884171190355)
	end
end

bot.reaction_remove(emoji: 725215542193029200) do |event|
	if event.message.id == settings['MOVIE_ID']
		sleep(2)
		event.user.remove_role(707605884171190355)
	end
end

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

bot.command(:info) do |event|

break unless event.user.role?(728054774049800264) || event.user.role?(697376461283393608)
sleep(2)
event.channel.send_embed do |embed|
      embed.colour = 0, 0, 0
			embed.description = "**rules**\n<:whiteline:723736118419521556> fake 0:69 thou shall not edate\n<:whiteline:723736118419521556> don't promote/advertise\n<:whiteline:723736118419521556> don't spam/excessively ping\n<:whiteline:723736118419521556> no IP grabbers, viruses, doxxing\n<:whiteline:723736118419521556> use the right channel"


end
sleep(2)
event.channel.send_embed do |embed|
      embed.colour = 0,0,0
			embed.description = "**birthdays**\n*set your birthday with !birthday in*\n*<#627448362362208276>*\non your birthday, you'll get:\n<:whiteline:723736118419521556> birthday announcement\n<:whiteline:723736118419521556> access to private voice channels\n<:whiteline:723736118419521556> <@&725307242836131900> role that displays\n‎‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎higher than admins"


end
sleep(2)
event.channel.send_embed do |embed|
      embed.colour = 247,60,231
			embed.description = "**boosters**\n<a:nitrobooster:715856082328879164> have access to private voice channels\n<a:nitrobooster:715856082328879164> fully customizable role (dm admin)"


end






end
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



bot.command(:birthday, min_args: 3, max_args: 3, description: 'Set your birthday using this command', usage: "\n!birthday [day] [month] [year]\nEx.: !birthday 8 2 2003") do |event, day, month, year|





	json = File.read('birthdays.json')
	dob = JSON.parse(json)
	birthdays = Hash.new
	id = event.user.id

			if year.to_i > Time.new.year
				sleep(2)
				event.channel.send_embed do |embed|
				      embed.colour = 0,0,0
							embed.description = "<@#{id}> LMAO you ain't born yet?"


				end
				break
			end

			if year.to_i == Time.new.year && month.to_i > Time.new.month
				sleep(2)
				event.channel.send_embed do |embed|
				      embed.colour = 0,0,0
							embed.description = "<@#{id}> LMAO you ain't born yet?"


				end
				break
			end

			if year.to_i == Time.new.year && month.to_i == Time.new.month && day.to_i > Time.new.day
				sleep(2)
				event.channel.send_embed do |embed|
				      embed.colour = 0,0,0
							embed.description = "<@#{id}> LMAO you ain't born yet?"


				end
				break
			end



	if event.user.id == dob["user#{id}"]
		sleep(2)
		event.channel.send_embed do |embed|
					embed.colour = 0,0,0
					embed.description = "<@#{id}>, you've already set your birthday!"


		end
	else
		birthdays["user#{id}"] = id
		birthdays["day#{id}"] = day.to_i
		birthdays["month#{id}"] = month.to_i
		birthdays["year#{id}"] = year.to_i
		birthdays["embed_sent#{id}"] = false
		puts birthdays
		result = dob.merge(birthdays)
		puts result
		File.write("birthdays.json", result.to_json)
		sleep(2)
		event.channel.send_embed do |embed|
					embed.colour = 0,0,0
					embed.description = "<@#{id}>, your birthday has been set successfully!"


		end

	end


	return nil
end

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------






bot.command(:verify) do |event|

event.channel.send_embed do |embed|
	      embed.colour = 0, 0, 0
				embed.description = ""


	end

end


#--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




bot.command(:emojis) do |event|

break unless event.user.role?(728054774049800264)

emojis = event.server.emoji

emojis.each do |emoji|
	puts emoji
end


end





bot.run
