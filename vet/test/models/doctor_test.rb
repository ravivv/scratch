require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  end

  test "valid doctor name" do
  	doc = doctors(:bob)
  	doc.name = 'x' * 40
  	doc.save
  	assert_equal  doc.valid?, false
  	doc.name = 'x' * 5
  	doc.save
  	assert_equal  doc.valid?, true  	
  end

  test "valid doctor zip" do
  	doc = doctors(:bob)
  	doc.zip = 'asdf'
  	doc.save
  	assert_equal  doc.valid?, false
  	doc.zip = '1234'
  	doc.save
  	assert_equal  doc.valid?, true
  end

  test "valid doctor experience" do
  	doc = doctors(:bob)
  	doc.experience = 135
  	doc.save
  	assert_equal  doc.valid?, false
  	doc.experience = 32
  	doc.save
  	assert_equal  doc.valid?, true
  end


end
