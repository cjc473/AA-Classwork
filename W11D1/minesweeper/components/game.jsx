import React from 'react'
import * as Minesweeper from '../minesweeper.js'
import Board from './board'

class Game extends React.Component {
  constructor(props) {
    super(props);
    const newBoard = new Minesweeper.Board(8, 8); //may need to add Minesweeper.
    this.state = { 
      board: newBoard
    }
    this.updateGame = this.updateGame.bind(this)
  }

  updateGame() {
    
  }

  render(){
    return(
      <div>
        <Board //use new board?
        board={this.state.board}
        updateGame={this.updateGame}
        />
      </div>
    )
  }
}
export default Game;