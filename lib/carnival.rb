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

  #returns hash with keys being ride objects & values being
  #attendee objects that match their respective interests
  def attendees_by_ride_interest
    attendee_ride_interest = {}
    ride_interest_match = @attendees.find_all do |attendee|
      @rides.flat_map do |ride|
        if attendee.interests == ride.name
          hash[ride] = attendee
        end
      end
    end
    # require 'pry'; binding.pry
    attendee_ride_interest[:rides] = ride_interest_match
  end
end
