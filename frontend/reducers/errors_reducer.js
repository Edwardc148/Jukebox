import { combineReducers } from 'redux';
import sessionErrorsReducer from './session_errors_reducer';
import stationErrorsReducer from './stations_errors_reducer';

export default combineReducers({
  session: sessionErrorsReducer,
  station: stationErrorsReducer
});
