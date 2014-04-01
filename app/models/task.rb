class Task < ActiveRecord::Base
  validates :description, :presence => true

  def self.done
    Task.where({done: true})
  end

  def self.not_done
    Task.where({done: false})
  end
end
