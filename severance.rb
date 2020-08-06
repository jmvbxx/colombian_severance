require_relative 'severance_calculator'
require 'logger'

logger = Logger.new(STDOUT)
logger.level = Logger::INFO

calculation = SeveranceCalculator.new(salary: 958_730, start_date: '2020-01-01', end_date: '2020-03-21')
logger.info(calculation.to_s)
