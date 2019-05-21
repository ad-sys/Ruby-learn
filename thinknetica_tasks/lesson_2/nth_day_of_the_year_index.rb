print 'Day (DD): '
day = gets.chomp.to_i
print 'Month (MM): '
month = gets.chomp.to_i
print 'Year (YYY): '
year = gets.chomp.to_i

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

leap_year = (year % 4.0 == 0) && (year % 100.0 != 0) || (year % 400.0 == 0)
if leap_year
  months[1] = 29
end

days_gone = 0

months_gone = month == 1 ? 0 : (month - 2)

months[0..months_gone].each { |i| days_gone += i } unless months_gone.zero?

count = day.to_i + days_gone

puts "From the beginning of the year: #{count} days passed."