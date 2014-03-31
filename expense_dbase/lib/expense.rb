class Expense
  attr_reader :description, :amount, :date, :company_id, :id

  def initialize(attributes)
    @description = attributes['description']
    @amount = attributes['amount'].to_f
    @date = attributes['date']
    @company_id = attributes['company_id'].to_i
    @id = attributes['id'].to_i
  end

  def self.create(attributes)
    new_expense = self.new(attributes)
    new_expense.save
    new_expense
  end

  def save
    result = DB.exec("INSERT INTO expense (description, amount, date, company_id) VALUES ('#{@description}', #{@amount}, '#{@date}', #{@company_id}) RETURNING id;")
    @id = result.first['id'].to_i
  end

  def self.all
    results = DB.exec("SELECT * FROM expense")
    expenses = []
    results.each do |result|
      new_expense = Expense.new(result)
      expenses << new_expense
    end
    expenses
  end

  def ==(another_expense)
    self.description == another_expense.description && self.amount == another_expense.amount && self.date == another_expense.date && self.company_id == another_expense.company_id
  end

  def set_amount(amount)
    @amount = amount
    DB.exec("UPDATE expense SET amount = '#@amount' WHERE id = #@id;")
  end
end





