require 'date'

# collection of payroll calculations according to Colombian law
class SeveranceCalculator
  attr_reader :salary, :start_date, :end_date

  MINIMUM_WAGE = 877_803
  START_DATE = '2020-01-01'

  def initialize(salary: MINIMUM_WAGE, start_date: START_DATE, end_date:)
    raise ArgumentError.new('Salary must be greater than zero') if salary < 1
    raise ArgumentError.new('January 1, 2020 is the earliest possible date') if Date.parse(start_date) < Date.parse('2020-01-01')
    raise ArgumentError.new('The end date needs to be after the start date') if Date.parse(end_date) <= Date.parse(start_date)

    @salary     = salary
    @start_date = start_date
    @end_date   = end_date
  end

  def to_s
    "Total severance due for #{days_worked} days worked at $#{salary}: Bonuses: #{bonuses} Savings: #{savings} Interest on savings: #{interest_on_savings} Vacation: #{vacation} Total: #{total}"
  end

  private

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
