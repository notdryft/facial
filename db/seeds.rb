# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

channels = Channel.create(
    [
        { name: 'channel1' },
        { name: 'channel2' },
        { name: 'channel3' },
        { name: 'channel4' },
        { name: 'channel5' }
    ]
)

Link.create(
    [
        {
            channel: channels[0],
            nick: 'Nick1',
            url: 'http://localhost:3000'
        },
        {
            channel: channels[1],
            nick: 'Nick2',
            url: 'http://localhost'
        },
        {
            channel: channels[2],
            nick: 'Nick3',
            url: 'http://www.mantisbt.org/wiki/doku.php'
        },
        {
            channel: channels[3],
            nick: 'Nick4',
            url: 'http://www.unitz.com/u-notez/2009/10/subversion-svn-integration-mantisbt/'
        },
        {
            channel: channels[4],
            nick: 'Nick1',
            url: 'https://github.com/mantisbt-plugins/source-integration'
        },
        {
            channel: channels[0],
            nick: 'Nick2',
            url: 'https://mail.google.com/mail/u/0/#inbox'
        },
        {
            channel: channels[1],
            nick: 'Nick3',
            url: 'http://tools.dryft.org/facial'
        },
        {
            channel: channels[2],
            nick: 'Nick4',
            url: 'http://getpocket.com/a/queue/'
        },
        {
            channel: channels[3],
            nick: 'Nick1',
            url: 'http://www.quora.com/Stripe-company/Does-Stripe-have-product-managers-or-do-engineers-manage-the-products-themselves'
        },
        {
            channel: channels[4],
            nick: 'Nick2',
            url: 'http://joelonsoftware.com/items/2011/09/15.html'
        },
        {
            channel: channels[0],
            nick: 'Nick3',
            url: 'http://www.cs.indiana.edu/~dyb/pubs/nano-jfp.pdf'
        },
        {
            channel: channels[1],
            nick: 'Nick4',
            url: 'http://etienneetmarilyn.canalblog.com/archives/2008/01/18/7606639.html'
        },
        {
            channel: channels[2],
            nick: 'Nick1',
            url: 'http://www.youtube.com/watch?v=WhmwICZ8kL4'
        },
        {
            channel: channels[3],
            nick: 'Nick2',
            url: 'http://compilers.iecc.com/crenshaw/'
        },
        {
            channel: channels[4],
            nick: 'Nick3',
            url: 'http://bat8.inria.fr/~weis/info/histoire_de_l_info.html'
        },
        {
            channel: channels[0],
            nick: 'Nick4',
            url: 'http://www.joelonsoftware.com/articles/Unicode.html'
        },
        {
            channel: channels[1],
            nick: 'Nick1',
            url: 'http://wp.smashingmagazine.com/2012/10/09/four-malware-infections-wordpress/'
        },
        {
            channel: channels[2],
            nick: 'Nick2',
            url: 'http://zahida94.unblog.fr/2009/02/17/pilons-de-poulet-au-miel/'
        },
        {
            channel: channels[3],
            nick: 'Nick3',
            url: 'http://passionculinaire.canalblog.com/archives/2006/10/09/2844343.html'
        }
    ]
)
