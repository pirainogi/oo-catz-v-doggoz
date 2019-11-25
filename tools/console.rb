require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


binding.pry
puts("🐕 woof! woof! 🐕", "🐈 meow! meow! 🐈")