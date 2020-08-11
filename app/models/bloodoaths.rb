class BloodOaths

    attr_accessor :follower, :cult, :initiation_date

    @@all = []

    def initialize(follower, cult)
        @follower = follower
        @cult = cult
        @initiation_date = initiation_date
        @@all << self
    end

    def self.all
        @@all
    end



end