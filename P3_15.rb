require 'Time'

class Time
  def humanize
    @hour = self.hour    # return 24hr format of hour
    @min = round_minute(self.min)
    
    @hour_word =  ["one", "two", "three", "four", "five", 
    "six", "seven", "eight", "nine", "ten", "eleven", "twelve"]

    @hour_index = (@hour > 12) ? @hour - 13 : @hour - 1

    @min_word = [
    (@hour == 00) ? "About Midnight" : "About #{@hour_word[@hour_index]}",                                     # 0
    (@hour == 00) ? "About a quarter past Midnight" : "About a quarter past #{@hour_word[@hour_index]}",       # 15
    (@hour == 00) ? "About a half past Midnight" : "About half past #{@hour_word[@hour_index]}",               # 30
    (@hour == 23) ? "About a quater till Midnight" : "About a quater till #{@hour_word[@hour_index + 1]}",      # 45
    (@hour == 23) ? "About Midnight" : "About #{@hour_word[@hour_index + 1]}"                                  # 60
  ]
    return (@min_word[(@min/15).round])
  end
  def round_minute(min)
    round_min = [0, 15, 30, 45, 60]
    diff_min = [(min-0).abs, (min-15).abs, (min-30).abs, (min-45).abs, (min-60).abs]
    i = diff_min.index(diff_min.min)
    return round_min[i]
  end
end

time_list = ["02:12", "12:24", "10:35 pm", "16:45", "18:58", "11:44", "23:55", "01:23 am", "00:03", "00:14", "00:25", "00:44", "00:56",
"23:00", "23:16", "23:56", "23:44"]
time_list.each do |t|
  time = Time.parse(t)
  puts ("#{t}, #{time.humanize}")
end

