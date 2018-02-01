import { connect } from 'react-redux';
import { createNewUser, clearErrors } from '../../actions/session_actions';
import Signup from './signup';

const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.currentUser),
    errors: state.errors.session
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    createNewUser: formUser => dispatch(createNewUser(formUser)),
    clearErrors: () => dispatch(clearErrors())
  };
};

export default connect(
  mapStateToProps, mapDispatchToProps
)(Signup);
