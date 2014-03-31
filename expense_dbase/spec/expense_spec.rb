require 'spec_helper'

describe Expense do
  describe '#inititalize' do
    it 'initializes the Expense instance' do
      test_expense = Expense.new({})
      test_expense.should be_an_instance_of Expense
    end
  end

  describe '#save' do
    it 'saves the instance of expense' do
      test_expense = Expense.new({ 'description' => 'Gas', 'amount' => '50.00', 'date' => '2014-03-20', 'company_id' => '1'})
      test_expense.save
      Expense.all.should eq [test_expense]
    end
  end

  describe '.create' do
    it 'creates a new instance and saves it to the database' do
      test_expense = Expense.create({ 'description' => 'Gas', 'amount' => '50.00', 'date' => '2014-03-20', 'company_id' => '1'})
      Expense.all.should eq [test_expense]
    end
  end

  describe '.all' do
    it 'is empty at first' do
      Expense.all.should eq []
    end
  end

  describe '#==' do
    it 'will show 2 expenses as equal if their values are the same' do
      test_expense1 = Expense.create({ 'description' => 'Gas', 'amount' => '50.00', 'date' => '2014-03-20', 'company_id' => '1'})
      test_expense2 = Expense.create({ 'description' => 'Gas', 'amount' => '50.00', 'date' => '2014-03-20', 'company_id' => '1'})
      test_expense1.should eq test_expense2
    end
  end

  describe '#set_amount' do
    it 'sets the amount attribute and updates the corresponding field in the database' do
      test_expense = Expense.create({ 'description' => 'Gas', 'amount' => '50.00', 'date' => '2014-03-20', 'company_id' => '1'})
      test_expense.set_amount(100.00)
      result = DB.exec('SELECT amount FROM expense WHERE amount = 100.00;')
      test_expense.amount.should eq 100.00
      result.count.should eq 1
    end
  end

  describe '#set_description' do
    it 'sets the description attribute and updates the corresponding field in the database' do
      test_expense = = Expense.create({ 'description' => 'Gas', 'amount' => '50.00', 'date' => '2014-03-20', 'company_id' => '1' })
end







