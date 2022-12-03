
 @prince = Artist.create!(name: "Prince")
 @purple = @prince.songs.create!(title: "Purple Rain", length: 845, play_count: 1234568)
 @beret = @prince.songs.create!(title: "Raspberry Beret", length: 362, play_count: 8498)
 @other_song = @prince.songs.create!(title: "Another Prince Song", length: 1, play_count: 88)