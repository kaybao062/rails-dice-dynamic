class GameController < ApplicationController
  def main
    render({ :template => 'game_templates/home'})
  end

  def flexible
    @num = params.fetch('num').to_i
    @sides = params.fetch('sides').to_i
    @rolls = []
    @num.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end
    render({ :template => 'game_templates/flex'})
  end
end
