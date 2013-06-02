class Comment < ActiveRecord::Base
  belongs_to :number

  validates :vote, presence: true

end
