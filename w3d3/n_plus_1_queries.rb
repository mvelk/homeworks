# count tracks on each album by given artist
class Artist
  def count_tracks_by_artist
    albums = self.albums.includes(:tracks)

    album_track_counts = {}
    albums.each do |album|
      album_track_counts[album] = album.tracks.length
    end
  end
  album_track_counts
end

# find all seeds for plants in a house
class House
  def seeds_in_house

    seeds = []
    plants = self.plants.includes(:seeds)
    plants.each do |plant|
      seeds += plant.seeds
    end
  end
  seeds
end

# find bus driver names for each bus
class Bus
  buses = Bus.all.includes(:drivers)
  bus_with_drivers = Hash.new

  buses.each do |bus|
    driver_names = []

    bus.drivers.each do |driver|
      driver_names << driver.name
    end

    bus_with_drivers[bus.id] = driver_names
  end

  bus_with_drivers
end
