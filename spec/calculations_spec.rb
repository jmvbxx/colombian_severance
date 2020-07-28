require_relative '../calculations'

describe Calculations do
  before do
    @employee = Calculations.new(salary: 1_000_000, start_date: '2020-01-01', end_date: '2020-06-29')
  end

  it 'computes the correct number of days' do
    expect(@employee.days_worked).to eq(180)
  end

  it 'computes the correct bonuses' do
    expect(@employee.bonuses).to eq(500_000)
  end

  it 'computes the correct savings' do
    expect(@employee.savings).to eq(500_000)
  end

  it 'computes the correct interest on savings' do
    expect(@employee.interest_on_savings).to eq(30_000)
  end

  it 'computes the correct vacation' do
    expect(@employee.vacation).to eq(250_000)
  end

  it 'computes the correct total owing' do
    expect(@employee.total).to eq(1_280_000)
  end
end
