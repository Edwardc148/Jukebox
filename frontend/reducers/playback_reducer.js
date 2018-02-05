import { RECEIVE_ONE_STATION } from '../actions/station_actions';
import { CHANGE_PLAYBACK } from '../actions/media_actions';
import _ from 'lodash';

let defaultState = {
  playing: true,
  current_song: null,
  queue_songs: null,
  current_song_url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3",
};

export default (state = defaultState, action) => {
  let newState = {};

  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ONE_STATION:
      let song_keys = Object.keys(action.songs);
      newState = _.merge({}, state);
      newState['queue_songs'] = song_keys;
      newState['current_song'] = song_keys[0];
      newState['current_song_url'] = action.songs[song_keys[0]].song_url;
      return newState;
    case CHANGE_PLAYBACK:
      newState = _.merge({}, state);
      console.log(!state.playing);
      newState['playing'] = !state.playing;
      return newState;
    default:
      return state;
  }
};
