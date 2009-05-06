require "test_helper"

class Fluxiom::AssetsTest < Test::Unit::TestCase

  def setup
    set_account
    @assets = @fluxiom.assets
  end

  def test_assets
    assert @assets, Fluxiom::Assets
  end

  def test_first
    assert @assets.first, Fluxiom::Asset
  end

end
