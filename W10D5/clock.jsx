import React from "react";

class Clock extends React.Component {
  constructor() {
    super();
    this.state = { time: new Date() }
  }

  tick(){
    this.setState( {time: new Date()} )
  }

  render() {
    return (<h1>High Tech Clock</h1>)
  }

  componentWillUnmount() {
    this.tick()
  }
}

export default Clock;