export const fetchAllStations = () => {
  return $.ajax({
    url: '/api/stations'
  });
};

export const fetchOneStation = (post) => {
  return $.ajax({
    url: `/api/stations/${post.id}`,
    method: 'POST',
    data: { post: post }
  });
};
