class GameController < ApplicationController
  def dice_roll
    @dice_num = params.fetch(:param_one).to_i
    @side_num = params.fetch(:param_two).to_i

    @rolls = []
    @dice_num.times do
      die = rand(1..@side_num)
      @rolls.push(die)
    end 
    render({:template => "my_templates/roll"})
  end 

  def home 
    render({:template => "my_templates/home"})
  end 
end 
