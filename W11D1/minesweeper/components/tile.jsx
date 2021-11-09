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
      this.tileStatus = this.tileStatus.bind(this);
      this.handleClick = this.handleClick.bind(this);
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
      <div className="tile" onClick={this.handleClick()}>
        {this.props.unicode}
      </div>
    )
  }
//{ this.tileStatus()}
  handleClick() {
    const currentTile = this.props.tile
    const flagging = (e => {
        e.altKey 
    })
    const unrevealed = (!(currentTile.flagged) && !(currentTile.explored))
    if (unrevealed) {
          this.props.updateGame(currentTile, flagging)
    }
  }

    /// handle click should update if tile is unrevealed and unflagged.
    /// if flagged, only can update by unflaggging
}

export default Tile;