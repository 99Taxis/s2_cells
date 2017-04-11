# frozen_string_literal: true

module S2Cells
  class S2LatLon
    def initialize(lat_degrees, lon_degrees)
      @lat = lat_degrees * Math::PI / 180
      @lon = lon_degrees * Math::PI / 180
    end

    def to_point
      phi    = @lat
      theta  = @lon
      cosphi = Math.cos(phi)
      S2Point.new(Math.cos(theta) * cosphi, Math.sin(theta) * cosphi, Math.sin(phi))
    end

    def to_s2_id(level)
      S2CellId.from_point(to_point)
              .parent(level)
              .signed_id
    end
  end
end
