import {
  RECEIVE_CURRENT_USER,
  RECEIVE_ERRORS
} from '../actions/session_actions';

const sessionErrorsReducer = (oldState = [], action) => {
  Object.freeze(oldState);
  let nextState = Object.assign({}, oldState)
  switch(action.type) {
    case RECEIVE_ERRORS:
      return action.errors
      // nextState[errors] = action.errors;
      // return nextState;
    case RECEIVE_CURRENT_USER:
      return []
    default:
      return oldState
  } 
}

export default sessionErrorsReducer;