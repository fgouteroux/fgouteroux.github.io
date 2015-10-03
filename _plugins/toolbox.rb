module Jekyll
  module Toolbox

    def time_diff(array)

      # Split date 
      end_time_arr = array[0].split(",")
      start_time_arr = array[1].split(",")

      # Give Year and month 
      end_time = Time.new(end_time_arr[0],end_time_arr[1])
      start_time = Time.new(start_time_arr[0],start_time_arr[1])

      # Give unit time
      unit = array[2]
      
      case unit
        when "years"
          calc = TimeDifference.between(end_time, start_time).in_years
          result = "#{calc.round} #{unit}"
        when "months"
          calc = TimeDifference.between(end_time, start_time).in_months
          result = "#{calc.round} #{unit}"
        when "weeks"
          calc = TimeDifference.between(end_time, start_time).in_weeks
          result = "#{calc.round} #{unit}"
        when "days"
          calc = TimeDifference.between(end_time, start_time).in_days
          result = "#{calc.round} #{unit}"
        when "hours"
          calc = TimeDifference.between(end_time, start_time).in_hours
          result = "#{calc.round} #{unit}"
        when "minutes"
          calc = TimeDifference.between(end_time, start_time).in_minutes
          result = "#{calc.round} #{unit}"
        when "seconds"
          calc = TimeDifference.between(end_time, start_time).in_seconds
          result = "#{calc.round} #{unit}"
      end

      return result
    end
  end
end

Liquid::Template.register_filter(Jekyll::Toolbox)