import {
  RECEIVE_ALL_STATIONS,
  RECEIVE_ONE_STATION,
  REMOVE_ONE_STATION,
  RECEIVE_STATION_ERRORS
} from '../actions/station_actions';
import _ from 'lodash';

export default (state = {}, action) => {
  let newState;
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ALL_STATIONS:
      newState = _.merge({}, state, action.stations);
      return newState;
    case RECEIVE_ONE_STATION:
      newState = _.merge({}, state);
      newState[action.station.id] = action.station;
      return newState;
    case REMOVE_ONE_STATION:
      newState = _.merge({}, state);
      delete newState[action.station.id];
      return newState;
    default:
      return state;
  }
};
