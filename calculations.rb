# collections of payroll calculations according to Colombian law
class Calculations
  def initialize(salary = 1_000_000, days_worked = 180)
    @salary = salary
    @days_worked = days_worked
  end

  def bonuses
    (@salary * @days_worked) / 360
  end

  def savings
    bonuses
  end

  def interest_on_savings
    (savings * @days_worked * 0.12) / 360
  end

  def vacation
    (@salary * @days_worked) / 720
  end

  def total
    bonuses + savings + interest_on_savings + vacation
  end
end
