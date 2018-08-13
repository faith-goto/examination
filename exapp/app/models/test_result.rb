class TestResult < ApplicationRecord
  belongs_to :user
  belongs_to :what_test

  validates :user_id,:what_test_id,:jpn ,:math ,:eng ,:sci ,:soc, presence: true
  validates :jpn ,:math ,:eng ,:sci ,:soc, inclusion: {in: 0..100}
end
