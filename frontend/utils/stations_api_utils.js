export const fetchAllStations = () => {
  return $.ajax({
    url: '/api/stations'
  });
};

export const fetchOneStation = (id) => {
  return $.ajax({
    url: `/api/stations/${id}`
  });
};
