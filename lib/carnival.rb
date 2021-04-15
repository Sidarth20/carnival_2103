class Carnival
  attr_reader :name, :rides

  def initialize(name)
    @name = name
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  #need to return an array of ride objects
  # if attendee interests array of strings == ride.name
  def recommend_rides(attendee)
    match = attendee.interests.find_all do |interest|
      @rides.flat_map do |ride|
        interest == ride.name
      end
    end
  end
end
