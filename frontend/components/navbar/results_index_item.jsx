import React from 'react';

class ResultsIndexItem extends React.Component {
  constructor(props){
    super(props);
  }

  render(){
    console.log(this.props);
    if (this.props.artist) {
      return (
        <div className="search-index-item" onClick={()=> this.props.createStation({name:`${this.props.artist.name}`})}>
          {this.props.artist.name}
        </div>
      );
    }

    if (this.props.song) {
      return (
        <div className="search-index-item" onClick={() => this.props.createStation({name:`${this.props.song.name}`})} >
          {this.props.song.name}
        </div>
      );
    }
  }
}

export default ResultsIndexItem;
