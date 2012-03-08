class Catch < ActiveRecord::Base
	attr_writer :current_step

  belongs_to :species
  belongs_to :lure

  def current_step
  	@current_step || steps.first
  end

  def steps
  	%w[catch fish lure]
  end

  def next_step
  	self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
  	self.current_step = steps[steps.index(current_step)-1]
  end

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

end
