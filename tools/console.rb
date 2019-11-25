require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

d1 = Dog.new("Binky", "mini aussie", "scratch", 2, true)
d2 = Dog.new("dog2", "dog", "tail swipe", 2, false)
d3 = Dog.new("dog3", "dog", "bite", 3, false)
d4 = Dog.new("dog4", "dog", "scratch", 6, true)

c1 = Cat.new("Chimney", "dappled grey", "tail swipe", 2, false)
c2 = Cat.new("cat2", "cat", "bite", 11, true)
c3 = Cat.new("cat3", "cat", "scratch", 5, true)
c4 = Cat.new("cat4", "cat", "bite", 3, true)

b1 = Battle.new(c1, d2)
b2 = Battle.new(c2, d1)
b3 = Battle.new(c4, d4)
b4 = Battle.new(c2, d4)
b5 = Battle.new(c3, d3)
b6 = Battle.new(c4, d1)


binding.pry
puts("🐕 woof! woof! 🐕", "🐈 meow! meow! 🐈")
