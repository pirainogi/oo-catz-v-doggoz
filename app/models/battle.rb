class Battle

  attr_reader :date, :dog, :cat
  attr_accessor :winner

  @@all = []

  def initialize(cat, dog)
    @cat = cat
    @dog = dog
    @date = Time.now
    self.fight

    @@all << self
  end

  def self.all
    @@all
  end

  def fight
    #tail swipe defeats bite
    #bite defeats scratch
    #scratch defeats tail swipe
    case self.cat.skill
    when "tail swipe"
      if self.dog.skill == "bite"
        self.winner = self.cat
      elsif self.dog.skill == "scratch"
        self.winner = self.dog
      end
    when "bite"
      if self.dog.skill == "scratch"
        self.winner = self.cat
      elsif self.dog.skill == "tail swipe"
        self.winner = self.dog
      end
    when "scratch"
      if self.dog.skill == "tail swipe"
        self.winner = self.cat
      elsif self.dog.skill == "bite"
        self.winner = self.dog
      end
    end
  end

  def self.dog_victories
    Battle.all.count {|battle| battle.winner.class == Dog }
  end

  def self.cat_victories
    Battle.all.count {|battle| battle.winner.class == Cat }
  end

  def self.draws
    Battle.all.count {|battle| battle.winner == nil }
  end

  def self.whos_winning
    #compare cat vs dog victories
    if dog_victories > cat_victories
      puts "Dogs with #{dog_victories} victories out of #{@@all.length}"
    elsif cat_victories > dog_victories
      puts "Cats with #{cat_victories} victories out of #{@@all.length}"
    else
      puts "everybody wins, time to have lunch"
    end
  end

end
