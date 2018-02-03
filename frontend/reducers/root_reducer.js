import { combineReducers } from 'redux';
import sessionReducer from './session_reducer';
import errorsReducer from './errors_reducer';
import stationsReducer from './stations_reducer';
import songsReducer from './songs_reducer';

export default combineReducers({
  session: sessionReducer,
  errors: errorsReducer,
  stations: stationsReducer,
  songs: songsReducer
});
