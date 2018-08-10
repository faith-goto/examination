class WhatTest < ApplicationRecord
  belongs_to :period

  def periodname_and_testname
    period.periodname + testname
  end
end
