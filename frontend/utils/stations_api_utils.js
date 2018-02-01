
export const fetchAllSongs = () => {
  return $.ajax({
    url: '/api/stations'
  });
};

export const fetchOneSong = (post) => {
  return $.ajax({
    url: `/api/stations/${post.id}`,
    method: 'POST',
    data: { post: post }
  });
};
