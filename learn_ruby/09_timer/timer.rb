class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = (@seconds / 3600).to_s.rjust(2, '0')
    rem = @seconds % 3600
    mins = (rem / 60).to_s.rjust(2, '0')
    secs = (@seconds % 60).to_s.rjust(2, '0')
    return hours + ":" + mins + ":" + secs
  end
end