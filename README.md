[![Build Status](https://travis-ci.com/jmvbxx/colombian_severance.svg?branch=master)](https://travis-ci.com/jmvbxx/colombian_severance)
[![Coverage Status](https://coveralls.io/repos/github/jmvbxx/colombian_severance/badge.svg?branch=master)](https://coveralls.io/github/jmvbxx/colombian_severance?branch=master)
# Colombian Severance
The purpose of this program is to calculate the severance that would be due to
a Colombian employee based on current law. 

## Usage
```ruby
employee = Calculations.new(salary: 958_730, start_date: '2020-01-01', end_date: '2020-03-21')
logger.info(employee.to_s)
```

## Output
```text
Total severance due for 80 days worked at $958730:
	Bonuses: 213051
	Savings: 213051
	Interest on savings: 5681
	Vacation: 106525
	Total: 538308
```
The method takes three parameters:
* Salary
* Start date (format: year-month-day Ex. 2020-07-20)
* End date (same format as above)

The only default parameter is:
* Salary: $877,803 COP (in [USD](https://www.xe.com/currencyconverter/convert/?Amount=877%2C803&From=COP&To=USD))
