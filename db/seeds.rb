# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.get_players_info.each do |player|
    print "player: " 
    print player
    begin
        name = player.keys[0]
        print "name: " + name
        war = player[name]["war"]
        image = player[name]["image"]
        if player[name]["player_type"] == "Pitcher"
            wins =  player[name]["wins"]
            losses = player[name]["losses"]
            strikeouts =  player[name]["strikeouts"]
            era = player[name]["E.R.A."]
            ip = player[name]["IP"]
            saves = player[name]["saves"]
            new_player = Player.create(role: "pitcher", name: name, war: war, image: image, wins: wins, losses: losses, strikeouts: strikeouts, era: era, ip: ip, saves: saves)
        elsif player[name]["player_type"] == "Hitter"
            hits = player[name]["hits"]
            avg = player[name]["avg"]
            hr = player[name]["hr"]
            runs = player[name]["runs"]
            rbi = player[name]["rbi"]
            sb = player[name]["sb"]
            at_bats = player[name]["at bats"]
            new_player = Player.create(role: "hitter", name: name, war: war, image: image, hits: hits, avg: avg, hr: hr, runs: runs, rbi: rbi, stolen_bases: sb, at_bats: at_bats)
        end
        puts "created new player: " + new_player
    rescue
        # puts player
    end
end