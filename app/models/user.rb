class User < ApplicationRecord

  scope :by_email, -> (email) { find_by(email: email) }
  scope :by_name, -> (name) { find_by(email: name) }
  scope :by_range_date, -> (start_date, end_date) {
    where('start_date >= :start_date and end_date <= :end_date',
          start_date: start_date, end_date: end_date) }
  scope :order_by_name, -> { order(:name) }

end
