require 'test_helper'

module UserServices
  class BootstrapTest < ActiveSupport::TestCase
    test "creates auth token" do
      skip # TODO

      user = create :user
      Bootstrap.(user)

      assert_equal 1, AuthToken.where(user_id: user.id).count
    end

    test "joins track" do
      skip # TODO
      user = create :user
      track = create :track

      JoinTrack.expects(:call).with(user, track)
      Bootstrap.(user, track.id)
    end
  end
end
