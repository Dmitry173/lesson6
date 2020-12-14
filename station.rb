require_relative "instance_counter"


class Station
  include Instance_counter

  attr_reader :name, :trains
  

  def self.all
    @@all
  end

  @@all = []
  
  def initialize(name)
    @name = name 
    @trains = []
    @all << self
  end

  def get_train(train)
    @trains << train
  end

  def send_train(train)
    trains.delete(train)
  end

  def show_train
    trains.each{ |train| puts train.number } 
  end

  def show_types(type)
    trains.each { |train| train.type == type }  
  end
end
