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
            this.display = '_'
        }
    } else if (this.flagged){
        this.display = 'f'
    } else {
        this.display = '_'
    }
    return this.display
}

    render() {
      const currentTile = this.props.tile;
      return (
        // <h1>T</h1>
        <div className="tile">
          { this.tileStatus()}
        </div>
      )
    }

    handleClick() {
      const currentTile = this.props.tile
      const revealed = (!(currentTile.flagged) && currentTile.explored)
      if (revealed) {

      }
      this.props.updateGame
    }

    /// handle click should update if tile is unrevealed and unflagged.
    /// if flagged, only can update by unflaggging
}

export default Tile;