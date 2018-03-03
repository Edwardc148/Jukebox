import * as StationsAPIUtils from '../utils/stations_api_utils';

export const RECEIVE_ALL_STATIONS = 'RECEIVE_ALL_STATIONS';
export const RECEIVE_ONE_STATION = 'RECEIVE_ONE_STATION';
export const REMOVE_ONE_STATION = 'REMOVE_ONE_STATION';
export const RECEIVE_STATION_ERRORS = 'RECEIVE_STATION_ERRORS';
export const CLEAR_ERRORS = "CLEAR_ERRORS";

export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

const fetchAllStations = (stations) => {
  return {
    type: RECEIVE_ALL_STATIONS,
    stations: stations
  };
};

const fetchOneStation = (station) => {
  return {
    type: RECEIVE_ONE_STATION,
    station: Object.values(station.current_station)[0],
    songs: station.current_station_songs,
    current_station: Object.values(station.current_station)[0].id
  };
};

const removeOneStation = (station) => {
  return {
    type: REMOVE_ONE_STATION,
    station: Object.values(station.current_station)[0]
  };
};

const receiveStationErrors = (errors) => {
  return {
    type: RECEIVE_STATION_ERRORS,
    errors: errors
  };
};

export const receiveAllStations = () => dispatch => (
  StationsAPIUtils.fetchAllStations()
    .then(serverStations => dispatch(fetchAllStations(serverStations)))
);

export const receiveOneStation = (id) => dispatch => (
  StationsAPIUtils.fetchOneStation(id)
    .then(serverStation => dispatch(fetchOneStation(serverStation)), errors => (
      dispatch(receiveStationErrors(errors))
    ))
);

export const createOneStation = (station) => dispatch => (
  StationsAPIUtils.createOneStation(station)
    .then(serverStation => dispatch(fetchOneStation(serverStation)))
);

export const deleteOneStation = (id) => dispatch => (
  StationsAPIUtils.deleteOneStation(id)
    .then(removedStation => dispatch(removeOneStation(removedStation)))
);
