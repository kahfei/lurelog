class Catch < ActiveRecord::Base
	attr_writer :current_step
  validates_presence_of :size, :weight, :location, :if => lambda { |o| o.current_step == "fish" }
  belongs_to :user
  belongs_to :species
  belongs_to :make
  belongs_to :model

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

  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end

end
