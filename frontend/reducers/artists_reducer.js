import { RECEIVE_ONE_ARTIST } from '../actions/artist_actions';
import _ from 'lodash';

export default (state = {}, action) => {
  let newState = {};

  switch(action.type) {
    case RECEIVE_ONE_ARTIST:
      newState[action.artist.id] = action.artist;
      return newState;
    default:
      return state;
  }
};
