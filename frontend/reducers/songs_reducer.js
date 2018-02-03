import { RECEIVE_ONE_STATION } from '../actions/station_actions';
import _ from 'lodash';

export default (state = {}, action) => {
  let newState = {};

  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ONE_STATION:
      newState = _.merge({}, action.songs);
      return newState;
    default:
      return state;
  }
};
