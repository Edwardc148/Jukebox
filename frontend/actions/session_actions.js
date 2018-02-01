import { postUser,
  postSession,
  deleteSession
} from '../utils/session_api_utils';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';
export const CLEAR_ERRORS = "CLEAR_ERRORS";

const receiveCurrentUser = (user) => {
  return {
    type: RECEIVE_CURRENT_USER,
    user: user
  };
};

const receiveErrors = (errors) => {
  return {
    type: RECEIVE_SESSION_ERRORS,
    errors: errors
  };
};

const logoutCurrentUser = () => {
  return {
    type: LOGOUT_CURRENT_USER
  };
};

export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

export const createNewUser = formUser => dispatch => (
  postUser(formUser).then(serverUser => {
    dispatch(receiveCurrentUser(serverUser)); dispatch(clearErrors());}, errors => (
    dispatch(receiveErrors(errors))
  )
));


export const login = formUser => dispatch => (
  postSession(formUser).then(serverUser => {
    dispatch(receiveCurrentUser(serverUser)); dispatch(clearErrors());}, errors => (
    dispatch(receiveErrors(errors))
  )
));

export const logout = () => dispatch => {
  return deleteSession()
    .then(() => {
      dispatch(logoutCurrentUser());
      dispatch(clearErrors());}
    );
};
