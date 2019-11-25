class Dog

  attr_accessor :name, :age, :good_boi
  attr_reader :breed, :skill

  @@all = []

  def initialize(name, breed, skill, age, good_boi)
    @name = name
    @breed = breed
    @skill = skill
    @age = age
    @good_boi = good_boi

    @@all << self
  end

  def self.all
    @@all
  end

  def bark
    puts "#{self.name} says woof woof 🐕"
  end

  def have_an_accident
    @good_boi = false
    puts "💩"
  end

  def dog_years
    self.age * 7
  end

  def attack_cat(cat)
    Battle.new(cat, self)
  end

  def krushed_kitties
    wins = Battle.all.select do |battle|
      battle.winner == self
    end
    wins.map do |battle|
      battle.cat.name
    end
  end

  def self.most_common_skill
    skills_arr = self.all.map {|dog| dog.skill}
    skills_arr.uniq.max_by{|skill| skills_arr.count(skill)}
  end

  def self.good_bois
    @@all.select {|dog| dog.good_boi == true}
  end

  def self.bad_bois
    @@all.select {|dog| dog.good_boi == false}
  end

end
