import * as StationsAPIUtils from '../utils/stations_api_utils';

export const RECEIVE_ALL_STATIONS = 'RECEIVE_ALL_STATIONS';
export const RECEIVE_ONE_STATION = 'RECEIVE_ONE_STATION';

const fetchAllStations = (stations) => {
  return {
    type: RECEIVE_ALL_STATIONS,
    stations: stations
  };
};

const fetchOneStation = (station) => {
  // console.log(station);
  // console.log(Object.values(station.current_station)[0]);
  // console.log(station.current_station_songs);
  return {
    type: RECEIVE_ONE_STATION,
    station: Object.values(station.current_station)[0],
    songs: station.current_station_songs
  };
};

export const receiveAllStations = () => dispatch => (
  StationsAPIUtils.fetchAllStations()
    .then(serverStations => dispatch(fetchAllStations(serverStations)))
);

export const receiveOneStation = (id) => dispatch => (
  StationsAPIUtils.fetchOneStation(id)
    .then(serverStation => dispatch(fetchOneStation(serverStation)))
);
