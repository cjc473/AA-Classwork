import {
  RECEIVE_CURRENT_USER,
  LOGOUT_CURRENT_USER
} from '../actions/session_actions';

const _nullSession = {id: null};

const sessionReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  let nextState = Object.assign({}, oldState);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      // nextState[id] = action.user.id;
      // return nextState;
      return { id: action.currentUser.id }
    case LOGOUT_CURRENT_USER:
      return _nullSession;
    default:
      return oldState;
  }
}

export default sessionReducer;