class TestResult < ApplicationRecord
  belongs_to :user
  belongs_to :what_test
end
