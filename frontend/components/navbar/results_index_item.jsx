import React from 'react';

class ResultsIndexItem extends React.Component {
  constructor(props){
    super(props);
  }

  render(){

    if (this.props.artist) {
      return (
        <div className="search-index-item" onClick={()=> this.props.createStation({name:`${this.props.artist.name}`})
          .then((serverS) => {
            this.props.ownProps.history.push(`/stations/${serverS.station.id}`);
            this.props.ownProps.clearState();})}>
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
