import React from "react";

class Clock extends React.Component {
  constructor() {
    super();
    this.state = { time: new Date() }
    // this.tick = this.tick.bind(tick)
  }

  tick(){
    this.setState( {time: new Date()} )
  }

  render() {
    return (<h1>High Tech Clock</h1>)
  }

  componentDidMount() {
    setInterval(this.tick.bind(tick), 1000);
  }

  // componentWillUnmount() {
  //   this.tick()
  // }
}

export default Clock;