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
           return (<div className="row" key={i}>
           {row.map((currentTile, j) => {
             return(
               <div className="tile">
                 <Tile
                   tile={currentTile}
                   updateGame={this.props.updateGame}
                   key={[i, j]}
                   unicode={'\u2622'}
                   // bomb \u2622
                   // flag \
                 />
               </div>
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