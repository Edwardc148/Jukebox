import * as ArtistsAPIUtils from '../utils/artists_api_utils';

export const RECEIVE_ONE_ARTIST = 'RECEIVE_ONE_ARTIST';

const fetchOneArtist = (artist) => {
  console.log(artist);
  return {
    type: RECEIVE_ONE_ARTIST,
    artist: artist
  };
};


export const receiveOneArtist = (id) => dispatch => (
  ArtistsAPIUtils.fetchOneArtist(id)
    .then(serverArtist => dispatch(fetchOneArtist(serverArtist)))
);
