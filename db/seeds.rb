# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Creating channels...'

(1..10).each { |i|
  Channel.create(:id => i, :name => 'channel' + i.to_s)
}

channels = Channel.all

puts 'Creating channels done.'

urls = []
urls << 'http://localhost:3000'
urls << 'http://localhost'
urls << 'http://www.mantisbt.org/wiki/doku.php'
urls << 'http://www.unitz.com/u-notez/2009/10/subversion-svn-integration-mantisbt/'
urls << 'https://github.com/mantisbt-plugins/source-integration'
urls << 'https://mail.google.com/mail/u/0/#inbox'
urls << 'http://tools.dryft.org/facial'
urls << 'http://getpocket.com/a/queue/'
urls << 'http://www.quora.com/Stripe-company/Does-Stripe-have-product-managers-or-do-engineers-manage-the-products-themselves'
urls << 'http://joelonsoftware.com/items/2011/09/15.html'
urls << 'http://www.cs.indiana.edu/~dyb/pubs/nano-jfp.pdf'
urls << 'http://etienneetmarilyn.canalblog.com/archives/2008/01/18/7606639.html'
urls << 'http://www.youtube.com/watch?v=WhmwICZ8kL4'
urls << 'http://compilers.iecc.com/crenshaw/'
urls << 'http://bat8.inria.fr/~weis/info/histoire_de_l_info.html'
urls << 'http://www.joelonsoftware.com/articles/Unicode.html'
urls << 'http://wp.smashingmagazine.com/2012/10/09/four-malware-infections-wordpress/'
urls << 'http://zahida94.unblog.fr/2009/02/17/pilons-de-poulet-au-miel/'
urls << 'http://passionculinaire.canalblog.com/archives/2006/10/09/2844343.html'

puts 'Creating links...'

(1..5000).each { |i|
  nick = Random.rand(50) + 1
  chan = Random.rand(10)
  url = Random.rand(19)

  Link.create(
      :id => i,
      :channel => channels[chan],
      :nick => 'Nick' + nick.to_s,
      :url => urls[url]
  )

  if i % 50 == 0
    puts i.to_s + '/5000'
  end
}

puts 'Creating links done.'