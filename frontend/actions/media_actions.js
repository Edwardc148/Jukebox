export const CHANGE_PLAYBACK = 'CHANGE_PLAYBACK';
export const NEXT_SONG = 'NEXT_SONG';

export const togglePlayPause = () => {
  return {
    type: CHANGE_PLAYBACK,
  };
};

export const nextSong = () => {
  return {
    type: NEXT_SONG
  };
};
