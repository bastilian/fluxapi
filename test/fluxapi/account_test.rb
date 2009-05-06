require "test_helper"

class Fluxiom::AccountTest < Test::Unit::TestCase

  def setup
    set_account
    @account = @fluxiom.account
  end
  
  def test_account
    assert_equal @account.subdomain, 'validcode'
  end
  
  def test_has_branding
    assert @account.has_branding?
    @account.stubs(:branding).returns('inactive')
    assert !@account.has_branding?
  end

end
