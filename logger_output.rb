require 'logger'
require_relative 'calculations'

# logger class to output results of employee
class LoggerOutput
  logger = Logger.new(STDOUT)
  logger.formatter = proc do |severity, datetime, progname, msg|
    "#{msg}\n"
  end
  logger.info { "Total severance due for #{employee.days_worked} days worked:" }
  logger.info { "\tBonuses: #{employee.bonuses}" }
  logger.info { "\tSavings: #{employee.savings}" }
  logger.info { "\tInterest on savings: #{employee.interest_on_savings}" }
  logger.info { "\tVacation: #{employee.vacation}" }
  logger.info { "\tTotal: #{employee.total}" }
end
