class Number < ActiveRecord::Base
  validates :digits, presence: true
  validates_length_of :digits, is: 10, message: "must be 10 digits"
  validates_uniqueness_of :digits

  class << self
    def clean_digits(digits)
      digits.gsub(/\D/, '')
    end
  end

  def to_param
    digits
  end

end
