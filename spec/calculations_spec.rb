require_relative '../calculations'

RSpec.describe Calculations do
  let(:employee) { Calculations.new(salary: 1_000_000, start_date: '2020-01-01', end_date: '2020-06-29') }

  it 'provides the correct output' do
    expect(employee.to_s).to eq('Total severance due for 180 days worked at $1000000: Bonuses: 500000 Savings: 500000 Interest on savings: 30000 Vacation: 250000 Total: 1280000')
  end
end
