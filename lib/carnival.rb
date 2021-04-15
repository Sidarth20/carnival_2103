class Carnival
  attr_reader :name, :rides, :attendees

  def initialize(name)
    @name = name
    @rides = []
    @attendees = []
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

  def admit(attendee)
    @attendees << attendee
  end
end
