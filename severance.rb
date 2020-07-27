require_relative 'calculations'

employee1 = Calculations.new
puts 'Total severance due:'
puts "\tBonuses: #{employee1.bonuses}"
puts "\tSavings: #{employee1.savings}"
puts "\tInterest on savings: #{employee1.interest_on_savings}"
puts "\tVacation: #{employee1.vacation}"
puts "\tTotal: #{employee1.total}"

employee2 = Calculations.new(958730, 80)
puts 'Total severance due:'
puts "\tBonuses: #{employee2.bonuses}"
puts "\tSavings: #{employee2.savings}"
puts "\tInterest on savings: #{employee2.interest_on_savings}"
puts "\tVacation: #{employee2.vacation}"
puts "\tTotal: #{employee2.total}"
