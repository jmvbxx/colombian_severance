require_relative 'calculations'
require 'logger'

logger = Logger.new(STDOUT)
logger.level = Logger::INFO

employee = Calculations.new(salary: 958_730, start_date: '2020-01-01', end_date: '2020-03-21')
logger.info(employee.to_s)
