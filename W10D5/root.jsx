import React from "react";
import Clock from "./clock";
import Tabs from "./tabs";

const Root = () => {
  return (
    <div>
      <Clock />
      <Tabs />
    </div>)
}

// class Root extends React.Component{
//   constructor(props){
//     super(props);
//   }

//   render(){
//     return (<div>hello!</div>)
//   }
// }

export default Root;