=begin
Project 3.13. 
  Similar to the days.ago example in Section 3.5, define the
appropriate conversions between Euros, US Dollars, and Yen so that you can
type the following conversions:
=end

class Numeric
  # @@currencies = {euro: 1.16, yen: 0.009, dollar: 1}      # currencies from google
  @@currencies = {euro: 1.3, yen: 0.012, dollar: 1}       # currencies from textbook
  def method_missing(method_name, *args, &block)
    method_name = method_name.to_s.gsub( /s$/, '').to_sym   # remove 's' and convert to symbol
    if (@@currencies.keys).include? method_name       # if method_name is in currencies coversion hash
      return self * @@currencies[method_name]         # ..then convert it by method name
    elsif method_name == :in                          # if method name == in and has 1 argument
      arg = args[0].to_s.gsub( /s$/, '').to_sym       # remove 's' and convert to symbol
      if (@@currencies.keys).include? arg    # if argument is in currencies coversion hash
        return self / @@currencies[arg]      # ..then convert it by argument
      end
    end
  end
end

puts 5.euros
puts 1.euro
puts 100.yen
puts 1.euro.in(:yens)