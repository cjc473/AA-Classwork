import React from "react";

class Clock extends React.Component {
  constructor() {
    super();
    this.state = { time: new Date() }
    this.tick = this.tick.bind(this)
  }

  tick(){
    this.setState( {time: new Date()} )
  }

  render() {
    let hours = this.state.time.getHours();
    let minutes = this.state.time.getMinutes();
    let seconds = this.state.time.getSeconds();

    hours = (hours < 10) ? `0${hours}` : hours;
    minutes = (minutes < 10) ? `0${minutes}` : minutes;
    seconds = (seconds < 10) ? `0${seconds}` : seconds;

    const currentTime = `${hours}:${minutes}:${seconds}`
    return (
    <div>
        <h1>High Tech Clock</h1>
        <p>time:</p>
        <div>{currentTime}</div>
        <br />
        <p>date:</p>
        <div>{this.state.time.toDateString()}</div>
    </div>
    )

  }

  componentWillMount() {
    this.interval = setInterval(this.tick, 1000)
  }
}

export default Clock;