require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @contact = Contact.new(name: "Dieumerci Kazadi", email: "user@example.com")
  end

  test "should be valid" do
    assert @contact.valid?
  end




end
