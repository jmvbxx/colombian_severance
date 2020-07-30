require_relative 'calculations'

employee1 = Calculations.new # default values (minimum salary and 180 days worked)
employee1.to_s

employee2 = Calculations.new(salary: 958_730, start_date: '2020-01-01', end_date: '2020-03-21')
employee2.to_s
