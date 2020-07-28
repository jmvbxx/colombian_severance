[![Build Status](https://travis-ci.com/jmvbxx/colombian_severance.svg?branch=master)](https://travis-ci.com/jmvbxx/colombian_severance)
[![Coverage Status](https://coveralls.io/repos/github/jmvbxx/colombian_severance/badge.svg?branch=master)](https://coveralls.io/github/jmvbxx/colombian_severance?branch=master)
# Colombian Severance
The purpose of this program is to calculate the severance that would be due to
a Colombian employee based on current law. 

## Usage
```ruby
employee = Calculations.new(salary: 958_730, start_date: '2020-01-01', end_date: '2020-03-21')
puts "Total severance due for #{employee.days_worked} days worked:"
puts "\tBonuses: #{employee.bonuses}"
puts "\tSavings: #{employee.savings}"
puts "\tInterest on savings: #{employee.interest_on_savings}"
puts "\tVacation: #{employee.vacation}"
puts "\tTotal: #{employee.total}"
```
The method takes three parameters:
* Salary
* Start date (format: year-month-day Ex. 2020-07-20)
* End date (same format as above)

The default values for the parameters are:
* Salary: $877,803 COP (in [USD](https://www.xe.com/currencyconverter/convert/?Amount=877%2C803&From=COP&To=USD))
* Start date: 2020-01-01
* End date: 2020-06-29
