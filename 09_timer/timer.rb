# Timer class takes seconds and returns an HH:MM:SS formated time string.
class Timer
  def seconds_to_HH_MM_SS(seconds)
    @time_string = Time.at(seconds).utc.strftime('%H:%M:%S')
  end

  def initialize(seconds = 0)
    @seconds = seconds
    seconds_to_HH_MM_SS(seconds)
  end

  def seconds=(seconds)
    @seconds = seconds
    seconds_to_HH_MM_SS(seconds)
  end

  attr_reader :seconds
  attr_reader :time_string
end
