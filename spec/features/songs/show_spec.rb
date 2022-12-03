require 'rails_helper'

RSpec.describe 'the songs show page' do
  #As a user
  #when I visit /songs/1 (where 1 is the id of a song in my database)
  #then I see that song's title, and artist
  # And I don't see any other song's from my database
  it 'displays the song tile' do
    artist = Artist.create!(name: "Carly Rae Jepsen")
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2456789)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 223, play_count: 222456789)

    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it 'displays the name of the artist for the song' do
    artist = Artist.create!(name: "Carly Rae Jepsen")
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2456789)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 223, play_count: 222456789)

    visit "/songs/#{song.id}"
    expect(page).to have_content(artist.name)
  end
end