import Greeting from './greeting'
import { connect } from 'react-redux'
import { logout } from '../util/session_api_util'

const mSTP = state => ({
  currentUser: state.entities.users[state.session.id]
})

const mDTP = dispatch => ({
  logout: () => dispatch(logout())
})

export default connect(mSTP, mDTP)(Greeting)