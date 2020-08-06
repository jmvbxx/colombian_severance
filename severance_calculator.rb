require 'date'

# collection of payroll calculations according to Colombian law
class SeveranceCalculator
  attr_reader :salary, :start_date, :end_date

  MINIMUM_WAGE = 877_803

  def initialize(args)
    @salary     = args[:salary] || MINIMUM_WAGE
    @start_date = args[:start_date]
    @end_date   = args[:end_date]
  end

  def to_s
    "Total severance due for #{days_worked} days worked at $#{salary}: Bonuses: #{bonuses} Savings: #{savings} Interest on savings: #{interest_on_savings} Vacation: #{vacation} Total: #{total}"
  end

  private

  def salary=(salary)
    if salary < 1
      raise ArgumentError.new('Salary must be greater than zero')
    end
    @salary = salary
  end

  def start_date=(start_date)
    if start_date < '2020-01-01'
      raise ArgumentError.new('January 1, 2020 is the earliest possible date')
    end
    @start_date = start_date
  end

  def end_date=(end_date)
    if end_date < (start_date + 1)
      raise ArgumentError.new('The end date needs to be after the start date')
    end
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
