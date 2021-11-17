import React from "react";
import ReactDOM from "react-dom";
import {
  signup,
  login,
  logout
} from './util/session_api_util.js'
// require jquery
const testCreateUser = () => (
  $.ajax({ method: "POST", url: "/api/users", data: { user: {username: "bob12345", password: "password123"} } })
)
//test code below:

window.testCreateUser = testCreateUser;
window.signup = signup;
window.login = login;
window.logout = logout;

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root);
});