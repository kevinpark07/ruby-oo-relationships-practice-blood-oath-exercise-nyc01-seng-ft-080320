require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cults.new("Pineapples", "Hawaii", 1984, "We love pineapples!")
cult2 = Cults.new("Apples", "Seattle", 1984, "We love apples!")
cult3 = Cults.new("Bananas", "Wyoming", 1908, "We love bananas!")
cult4 = Cults.new("Oranges", "Florida", 19967, "We love oranges!")

follower1 = Followers.new("Kevin", 27, "Pineapples are best")
follower2 = Followers.new("Samantha", 23, "Apples are best")
follower3 = Followers.new("Tiffani", 22, "Bananas are best")
follower4 = Followers.new("Augusto", 32, "Oranges are best")
follower5 = Followers.new("Caryn", 49, "Pineapples are best")
follower6 = Followers.new("Jallen", 59, "Pineapples are best")

bloodoath1 = BloodOaths.new(follower1, cult1)
bloodoath2 = BloodOaths.new(follower2, cult2)
bloodoath3 = BloodOaths.new(follower3, cult3)
bloodoath4 = BloodOaths.new(follower1, cult4)
bloodoath5 = BloodOaths.new(follower5, cult1)
bloodoath6 = BloodOaths.new(follower6, cult1)

bloodoath1.initiation_date = "2020-08-27"
bloodoath2.initiation_date = "2020-09-02"
bloodoath3.initiation_date = "2020-10-15"
bloodoath4.initiation_date = "2020-02-13"
bloodoath5.initiation_date = "2020-08-27"
bloodoath6.initiation_date = "2020-08-27"



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits