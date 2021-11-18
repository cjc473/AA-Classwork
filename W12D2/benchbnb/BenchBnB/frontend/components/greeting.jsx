import React from "react"
import { Link } from "react-router-dom"

const Greeting = (props) => {
  const {currentUser, logout} = this.props

  const personalGreeting = () => {
    <div>
      <h3>Welcome back {`${currentUser.username}`}!</h3>
      <button onClick={() => logout()}>Logout</button>
    </div>
  }

  const sessionLinks = () => {
    <div>
      <Link to="/signup">Sign Up</Link>
      <Link to="/login">Login</Link>
    </div>
  }


  return currentUser ? personalGreeting() : sessionLinks();
}



export default Greeting