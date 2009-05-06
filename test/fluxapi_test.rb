require "test_helper"

class FluxiomTest < Test::Unit::TestCase

  def setup
    set_account
  end

  def test_base
    assert @fluxiom.account
    assert @fluxiom.assets
    assert @fluxiom.tags
    assert @fluxiom.users
  end

end
