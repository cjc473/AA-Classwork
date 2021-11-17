import React from "react";
import ReactDOM from "react-dom";
import {
  signup,
  login,
  logout
} from './util/session_api_util.js';
import configureStore from "./store/store"
// require jquery
// const testCreateUser = () => (
//   $.ajax({ method: "POST", url: "/api/users", data: { user: {username: "bob12345", password: "password123"} } })
// )
//test code below:



document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  const store = configureStore();

// TESTING


  window.signup = signup;
  window.login = login;
  window.logout = logout;
  window.getState = store.getState;
  window.dispatch = store.dispatch

//
  ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root);
});


/*
{
  entities: {
    users: {}
  },
  session: {
    id: null,
  },
  errors: {
    session: []
  }
}
*/