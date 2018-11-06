require_relative 'num_gen'

class Roulette

  attr_reader :number_generator

  def initialize(number_generator = NumberGenerator.new)
    @number_generator = number_generator
  end

  def roll
    number_generator.generate
  end

  def red_or_black
    roll.even? ? 'red' : 'black'
  end
  
end
