class Event

  attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    #add all the elements in the array then sum / @ages.count
    sum = 0
    @ages.each do |age|
      sum = sum + age
    end
    sum / @ages.count.to_f
  end

  def standard_deviation_age
    subtracted_ages = []
    @ages.each do |age|
    left_over = age - @ages.average_age
    subtracted_ages << left_over
    end
  end
end
  # sum_of_ages = ages.sum.to_f
  # amount_of_ages = ages.count.to_f
  # average_ages = sum_of_ages / amount_of_ages
  # subtracted_ages = []
  # ages.each do |sub|
  #   subtract_average = sub - average_ages
  #   subtracted_ages << subtract_average.round(1)
  # end
  # squared_ages = []
  # subtracted_ages.each do |square|
  #   square_ages = square * square
  #   squared_ages << square_ages.round(2)
  # end
  # sum_of_squared_ages = squared_ages.sum
  # divide_sum_of_squared_ages = sum_of_squared_ages / amount_of_ages
  # deviation = Math.sqrt(divide_sum_of_squared_ages).round(2)
