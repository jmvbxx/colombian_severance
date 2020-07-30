require 'date'

# collection of payroll calculations according to Colombian law
class Calculations
  attr_reader :salary, :start_date, :end_date

  MINIMUM_WAGE = 877_803

  def initialize(salary: MINIMUM_WAGE, start_date: '2020-01-01', end_date: '2020-06-29')
    @salary = salary
    @start_date = start_date
    @end_date = end_date
  end

  def days_worked
    Integer(Date.parse(end_date) - Date.parse(start_date))
  end

  def bonuses
    (salary * days_worked) / 360
  end

  def savings
    bonuses
  end

  def interest_on_savings
    ((savings * days_worked * 0.12) / 360).round
  end

  def vacation
    (salary * days_worked) / 720
  end

  def total
    (bonuses + savings + interest_on_savings + vacation).round
  end
end
