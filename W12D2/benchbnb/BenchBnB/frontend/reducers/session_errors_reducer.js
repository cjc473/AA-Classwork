import {
  RECEIVE_CURRENT_USER,
  RECEIVE_ERRORS
} from '../actions/session_actions';

const sessionErrorsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  
}