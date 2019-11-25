class Cat

  attr_reader :breed
  attr_accessor :name, :skill, :age, :furball

  @@all = []

  def initialize(name, breed, skill, age, furball = false)
    @name = name
    @breed = breed
    @skill = skill
    @age = age
    @furball = furball

    @@all << self
  end

  def self.all
    @@all
  end

  def meow
    puts "#{self.name} says meow!"
  end

  def cough_up_furball
    if @furball == true
      @furball = false
      puts "🙀🤮"
    end
  end

  def lick_fur
    if @furball == false
      @furball = true
      puts "😼😈"
    end
  end

  def attack_dog(dog)
    Battle.new(self, dog)
  end

  def destroyed_doggos
    wins = Battle.all.select do |battle|
      battle.winner == self
    end
    wins.map do |battle|
      battle.dog.name
    end
  end

  #pets.max_by {|i| pets.count(i)}
  def self.most_common_skill
    skills_arr = self.all.map {|cat| cat.skill}
    skills_arr.uniq.max_by{|skill| skills_arr.count(skill)}
  end

  def self.all_by_age
    self.all.sort do |a, b|
      a.age <=> b.age
    end
  end

end
