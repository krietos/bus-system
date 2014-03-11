class Task
  def initialize(description)
    @description = description
    @completed = false
  end

  def description
    @description
  end

  def completed
    @completed = true
  end
end
