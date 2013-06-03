class Number < ActiveRecord::Base
  has_many :comments

  validates :digits, presence: true
  validates_length_of :digits, is: 10, message: "must be 10 digits"
  validates_uniqueness_of :digits

  class << self
    def clean_digits(digits)
      digits.gsub(/\D/, '')
    end
  end

  def scam_count
    comments.where(vote: 1).count
  end

  def ok_count
    comments.where(vote: 0).count
  end

  def to_param
    digits.to_s.gsub(/(\d{0,3})(\d{3})(\d{4})$/,"\\1-\\2-\\3")
  end

end
