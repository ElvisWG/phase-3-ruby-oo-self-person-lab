# your code goes here
require "pry"

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name

    @bank_account = 25

    @happiness = 8

    @hygiene = 8

  end

  def happiness=(happiness_value)
    if happiness_value < 0
      @happiness = 0

    elsif happiness_value > 10
      @happiness = 10

    else
      @happiness = happiness_value

    end

  end

  def hygiene=(hygiene_value)
    if hygiene_value < 0
      @hygiene = 0

    elsif hygiene_value > 10
      @hygiene = 10

    else
      @hygiene = hygiene_value 

    end

  end

  def clean?
    return true if self.hygiene > 7
    false

  end

  def happy?
    return true if self.happiness > 7
    false

  end

  def get_paid(amount_paid)
    self.bank_account += amount_paid

    "all about the benjamins"

  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"

  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"

  end

  def start_conversation(friend, topic)
    case topic

    when "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"

    when "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"

    else
      "blah blah blah blah blah"
    end

  end

end