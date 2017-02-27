class TracksGrid
  include Datagrid

  scope do
    Track.order(:title)
  end

  column(:title, header: 'Title')
  column(:artist_name, header: 'Artist Name')
  column(:remixed_by, header: 'Remixer Name')
  column(:camelot_key, header: 'Camelot Key')
  column(:record_label, header: 'Record Label')
  column(:genre, header: 'Genre')
end