class Cults

    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOaths.new(follower, self)
    end

    def followers
        BloodOaths.all.select do |bo|
            bo.cult == self
        end
    end

    def cult_population
        self.followers.count 
    end

    def self.find_by_name(name)
        Cults.all.filter do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        Cults.all.filter do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        Cults.all.filter do |cult|
            cult.founding_year == year
        end
    end

end