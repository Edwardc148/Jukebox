import { RECEIVE_ARTIST_ERRORS, CLEAR_ERRORS } from '../actions/artist_actions';

export default (state = [], action) => {
  Object.freeze(state);
  // debugger;
  switch (action.type) {
    case RECEIVE_ARTIST_ERRORS:
      // debugger;
      return action.errors.responseJSON;
    case CLEAR_ERRORS:
      return [];
    default:
      return state;
  }
};
