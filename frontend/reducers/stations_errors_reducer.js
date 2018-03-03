import { RECEIVE_STATION_ERRORS, CLEAR_ERRORS } from '../actions/station_actions';

export default (state = [], action) => {
  Object.freeze(state);
  // debugger;
  switch (action.type) {
    case RECEIVE_STATION_ERRORS:
      // debugger;
      return action.errors.responseJSON;
    case CLEAR_ERRORS:
      return [];
    default:
      return state;
  }
};
