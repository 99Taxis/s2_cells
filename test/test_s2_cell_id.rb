# frozen_string_literal: true

require "test_helper"

class TestS2CellId < Minitest::Test
  include S2Cells

  def setup
    lat = -23.54719302
    lon = -46.55451921
    @lat_lon = S2LatLon.new(lat, lon)
  end

  def test_to_cell_id
    cell = S2CellId.from_point(@lat_lon.to_point)
    assert_equal(-7724132527304081408, cell.parent(13).signed_id)
    assert_equal(-7724132475764473856, cell.parent(12).signed_id)
    assert_equal(-7724132681922904064, cell.parent(11).signed_id)
  end

  def test_to_cell_id_from_lat_lon
    assert_equal(-7724132527304081408, @lat_lon.to_s2_id(13))
    assert_equal(-7724132475764473856, @lat_lon.to_s2_id(12))
    assert_equal(-7724132681922904064, @lat_lon.to_s2_id(11))
  end
end
