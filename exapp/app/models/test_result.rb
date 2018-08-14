class TestResult < ApplicationRecord
  belongs_to :user
  belongs_to :what_test

  validates :user_id,:what_test_id,:jpn ,:math ,:eng ,:sci ,:soc, presence: true
  validates :jpn ,:math ,:eng ,:sci ,:soc, inclusion: {in: 0..100}

  def self.search(search)
    if search #Controllerから渡された荒メータが!=nillの場合は、titleカラムを部分一致検索
      redirect_to test_results_path
    end

    TestResult.all
    end
end
