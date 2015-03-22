require 'test_helper'

class ChannelTest < ActiveSupport::TestCase

  test 'channels fixtures' do
    result = true

    1000.times do
      n = Random.rand(10) + 1
      channel = channels('channel' + n.to_s)

      result &= channel.name.eql?('channel' + n.to_s)
    end

    assert result
  end
end
