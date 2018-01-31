import { postUser,
  postSession,
  deleteSession
} from '../utils/session';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';

const receiveCurrentUser = (user) => {
  return {
    type: RECEIVE_CURRENT_USER,
    user: user
  };
};

const logoutCurrentUser = () => {
  return {
    type: LOGOUT_CURRENT_USER
  };
};

export const createNewUser = formUser => dispatch => {
  return postUser(formUser)
    .then(serverUser => dispatch(receiveCurrentUser(serverUser)));
};

export const login = formUser => dispatch => {
  return postSession(formUser)
    .then(serverUser => dispatch(receiveCurrentUser(serverUser)));
};

export const logout = () => dispatch => {
  return deleteSession()
    .then(() => dispatch(logoutCurrentUser()));
};
