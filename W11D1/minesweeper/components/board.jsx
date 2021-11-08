import React from 'react'
import Tile from './tile'
import Game from './game'

class Board extends React.Component {
constructor(props){
    super(props);
}

render(){
    const board = this.props.board
    return (
        <div>
        {board.map((row, i) => {
           <div key ={i}>
           {row.map((currentTile, j) => {
                <Tile
                tile={currentTile}
                updateGame={this.props.updateGame}
                key={[i,j]}
                />
            })}
            </div>
        })}
        </div>
    )
}
}

export default Board