require "test_helper"

class Fluxiom::AssetsTest < Test::Unit::TestCase

  def setup
    set_account
    @assets = @fluxiom.assets
  end

  def test_assets
    assert_equal @assets.class, Fluxiom::Assets
  end

  def test_first
    assert_equal @assets.first.class, Fluxiom::Asset
  end

  def test_find
    assert_equal @assets.find(182535).id.to_i, 182535
  end

end
