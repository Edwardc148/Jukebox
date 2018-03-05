import * as ArtistsAPIUtils from '../utils/artists_api_utils';

export const RECEIVE_ONE_ARTIST = 'RECEIVE_ONE_ARTIST';
export const RECEIVE_ARTIST_ERRORS = "RECEIVE_ARTIST_ERRORS";
export const CLEAR_ERRORS = "CLEAR_ERRORS";

const fetchOneArtist = (artist) => {
  return {
    type: RECEIVE_ONE_ARTIST,
    artist: artist
  };
};

export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

const receiveArtistErrors = (errors) => {
  return {
    type: RECEIVE_ARTIST_ERRORS,
    errors: errors
  };
};

export const receiveOneArtist = (id) => dispatch => (
  ArtistsAPIUtils.fetchOneArtist(id)
    .then(serverArtist => dispatch(fetchOneArtist(serverArtist)), errors => (
      dispatch(receiveArtistErrors(errors))
    ))
);
