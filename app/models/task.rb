class Task < ApplicationRecord

  def change_status!(status)
    self.status = status
    self.save
  end

  enum status: [:unplanned, :planned, :done, :deleted]
end
