module UserServices
  class Bootstrap
    include Mandate

    attr_reader :user, :initial_track_id
    def initialize(user, initial_track_id = nil)
      @user = user
      @initial_track_id = initial_track_id
    end

    def call
      # TODO
      #user.create_auth_token!

      # TODO
      #if initial_track_id
      #  track = Track.find_by_id(initial_track_id)
      #  UserServices::JoinTrack.(user, track) if track
      #end
    end
  end
end
