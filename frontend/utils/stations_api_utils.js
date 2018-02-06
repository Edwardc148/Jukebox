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

export const createOneStation = (station) => {
  return $.ajax({
    url: '/api/stations',
    method: 'POST',
    data: { station: station }
  });
};
