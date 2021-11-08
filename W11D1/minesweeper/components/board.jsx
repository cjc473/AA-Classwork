import React from 'react'
import Tile from './tile'
// import Game from './game'

class Board extends React.Component {
  constructor(props){
    super(props);
  }

  render(){
    const grid = this.props.board.grid
    // console.log(board)
    return (
        <div>
        {grid.map((row, i) => {
          // return <h1>test row</h1>
           return (<div key={i}>
           {row.map((currentTile, j) => {
             return(
               <Tile
                 tile={currentTile}
                 updateGame={this.props.updateGame}
                 key={[i, j]}
               />
             )
            })}
            </div>)
        })}
        </div>
        // <h1>hello board world</h1>
    )
  }
}

export default Board