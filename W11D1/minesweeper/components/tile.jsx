import React from 'react'
import * as Minesweeper from '../minesweeper.js'

class Tile extends React.Component{
    constructor(props) {
      super(props);
      const currentTile = this.props.tile
        this.state = {
            explored: currentTile.explored,
            flagged: currentTile.flagged,
            bombed: currentTile.bombed,
            display: "_"
        }
    }

tileStatus(){
    const currentTile = this.props.tile
    if(this.explored){
        if(this.bombed){
            this.display = 'b'
        } else if(currentTile.adjacentBombCount() > 0){
            this.display = currentTile.adjacentBombCount()
        } else {
            this.display = ''
        }
    } else if (this.flagged){
        this.display = 'f'
    } else {
        this.display = ''
    }
}

    render() {
      return (
        <div>
          <h1>T</h1>
        </div>
      )
    }
}

export default Tile;