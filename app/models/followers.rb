class Followers
    
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all<<self
    end

    def self.all
        @@all
    end

    def oaths
        BloodOaths.all.select do |bo|
            bo.follower == self
        end
    end

    def cults 
        self.oaths.map do |bo, ele|
            bo.cult.name
        end
    end

    def join_cult(cult)
        BloodOaths.new(self, cult)
    end

    def self.of_a_certain_age(age)
        self.all.filter do |follower|
            follower.age >= age
        end
    end






end