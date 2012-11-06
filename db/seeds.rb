# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

channels = Channel.create([{ name: 'channel1' }, { name: 'channel2' }])

Link.create(
    [
        {
            channel: channels.first,
            nick: "Nick1",
            url: "http://localhost:3000"
        },
        {
            channel: channels.last,
            nick: "Nick2",
            url: "http://localhost"
        }
    ]
)
