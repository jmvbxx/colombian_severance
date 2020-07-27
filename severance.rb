require_relative 'calculations'

employee1 = Calculations.new
puts "Total severance due for #{employee1.days_worked} days worked:"
puts "\tBonuses: #{employee1.bonuses}"
puts "\tSavings: #{employee1.savings}"
puts "\tInterest on savings: #{employee1.interest_on_savings}"
puts "\tVacation: #{employee1.vacation}"
puts "\tTotal: #{employee1.total}"

employee2 = Calculations.new(958730, '2020-01-01', '2020-03-21')
puts "Total severance due for #{employee2.days_worked} days worked:"
puts "\tBonuses: #{employee2.bonuses}"
puts "\tSavings: #{employee2.savings}"
puts "\tInterest on savings: #{employee2.interest_on_savings}"
puts "\tVacation: #{employee2.vacation}"
puts "\tTotal: #{employee2.total}"
