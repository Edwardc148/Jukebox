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
  return {
    type: RECEIVE_ONE_STATION,
    station: station
  };
};

export const receiveAllStations = () => dispatch => (
  StationsAPIUtils.fetchAllStations()
    .then(serverStations => dispatch(fetchAllStations(serverStations)))
);

export const receiveOneStation = (station) => dispatch => (
  StationsAPIUtils.fetchOneStation(station)
    .then(serverStation => dispatch(fetchOneStation(serverStation)))
);
