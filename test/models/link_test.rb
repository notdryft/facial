require 'test_helper'

class LinkTest < ActiveSupport::TestCase

  test 'links fixtures' do
    result = true

    1000.times do
      n = Random.rand(100) + 1
      link = links('link' + n.to_s)

      result &= link.channel.name.eql?('channel' + (n % 10 + 1).to_s)
    end

    assert result
  end
end
