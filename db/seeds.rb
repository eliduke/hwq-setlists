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
