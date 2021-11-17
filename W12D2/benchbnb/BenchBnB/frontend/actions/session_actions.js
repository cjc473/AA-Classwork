import {
  postUser,
  postSession,
  deleteSession
} from '../util/session_api_util';


export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER"

const receiveCurrentUser = (user) => ({
  type: RECEIVE_CURRENT_USER,
  user
})

const logoutCurrentUser = () 

export const login => (user) => dispatch => (
  postSession(user)
    .then(user => dispatch())
)

export const logout => ()

export const signup