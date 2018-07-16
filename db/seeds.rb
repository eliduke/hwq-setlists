# CREATE SONGS
[
  "Hell No",
  "Hot Won't Quit",
  "Break New Ground",
  "I Know",
  "Bound to Drown",
  "Stoned to the Bone",
  "Hate Me So Much / In the End",
  "Infamy",
  "Velvet Fog",
  "Gettin' Hard",
  "Crib Hop / Underwater",
  "Hiccups",
  "Grab the Wheel",
  "Quality Education",
  "One Two Three ONE TWO",
  "Get What For",
  "This Hole I've Dug for Myself",
  "Night Owls"
].each do |name|
  Song.create!(name: name)
end

10.times.each do |index|
  setlist = Setlist.new
  setlist.name = "Test Setlist #{ index + 1 }"
  setlist.practice = [true, false].sample

  all_songs = Song.all.to_a
  (3..8).to_a.sample.times.each do
    setlist.songs << all_songs.delete(all_songs.sample)
  end

  setlist.save
end
