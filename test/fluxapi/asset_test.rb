require "test_helper"

class Fluxiom::AssetTest < Test::Unit::TestCase

  def setup
    set_account
    @asset = @fluxiom.assets.first
    @tmp_dir = File.join(File.dirname(__FILE__), '..', 'tmp')
    FileUtils.mkdir_p @tmp_dir
  end

  def test_download
    assert @asset.download(@tmp_dir).size > 0
  end

  def teardown
    FileUtils.rm_r @tmp_dir
  end
end