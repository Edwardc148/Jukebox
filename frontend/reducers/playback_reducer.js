import { RECEIVE_ONE_STATION } from '../actions/station_actions';
import { CHANGE_PLAYBACK, NEXT_SONG } from '../actions/media_actions';
import _ from 'lodash';

let defaultState = {
  playing: true,
  current_song: "",
  queue_songs: [],
  current_song_url: "",
  current_station: ""
};

export default (state = defaultState, action) => {
  let newState = {};

  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ONE_STATION:
      let song_keys = _.shuffle(Object.keys(action.songs));
      newState = _.merge({}, state);
      newState['queue_songs'] = _.shuffle(Object.values(action.songs));
      newState['current_song'] = song_keys[0];
      newState['current_song_url'] = action.songs[song_keys[0]].song_url;
      newState['current_station'] = action.current_station;
      return newState;
    case CHANGE_PLAYBACK:
      newState = _.merge({}, state);
      newState['playing'] = !state.playing;
      return newState;
    case NEXT_SONG:
      newState = _.merge({}, state);
      let queue_songs = state.queue_songs;
      let prev_song = queue_songs.shift();
      queue_songs.push(prev_song);
      newState['queue_songs'] = queue_songs;
      newState['current_song'] = queue_songs[0].id;
      newState['current_song_url'] = queue_songs[0].song_url;

      return newState;
    default:
      return state;
  }
};
