class Task < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :list

  def self.list_done
    Task.all.select{ |task| task.done}
  end

  def self.list_undone
     Task.all.select{ |task| !task.done}
  end

  # def mark_done
  #   self.done = true
  # end


end
