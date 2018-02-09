import React from 'react';
import _ from 'lodash';
import ResultsIndexItem from './results_index_item';
import faker from 'faker';

class ResultsIndex extends React.Component {
  constructor(props){
    super(props);
  }

  render(){

    let faker1 = faker.name.findName();
    let faker2 = faker.name.findName();
    let faker3 = faker.name.findName();

    if (_.isEmpty(this.props.results) && this.props.currentSearch === '') {
      return (
        null
      );
    } else {
      if (_.isEmpty(this.props.results)) {
        return (
          <div className="search-index-item-div">
            <div className="no-results">
              <h3>No Results Found</h3>
            </div>
            <div className="suggestions">
              <h3>Suggested Stations</h3>
              <hr className="horizontal-line" width ="220" ></hr>
              <div className="faker1 faker" onClick={()=> this.props.createStation({name:`${faker1}`})
                .then((serverS) => {
                  this.props.ownProps.history.push(`/stations/${serverS.station.id}`);
                  this.props.ownProps.clearState();})}>{faker1}</div>
                <div className="faker2 faker" onClick={()=> this.props.createStation({name:`${faker2}`})
                  .then((serverS) => {
                    this.props.ownProps.history.push(`/stations/${serverS.station.id}`);
                    this.props.ownProps.clearState();})}>{faker2}</div>
                  <div className="faker3 faker" onClick={()=> this.props.createStation({name:`${faker3}`})
                    .then((serverS) => {
                      this.props.ownProps.history.push(`/stations/${serverS.station.id}`);
                      this.props.ownProps.clearState();})}>{faker3}</div>
            </div>
          </div>
        );
      } else {
        return (
          <div className="search-index-item-div">

            {this.props.results.artists_found ?
              <div>
                {Object.values(this.props.results.artists_found).map(artistObject => {
                  return (
                    <ResultsIndexItem key={artistObject.id} artist={artistObject}
                    createStation={this.props.createStation}
                    ownProps={this.props.ownProps}
                    />
                  );
                })}
              </div>
              :
              null
            }

            {this.props.results.songs_found ?
              <div>
                {Object.values(this.props.results.songs_found).map(songObject => {
                  return (
                    <ResultsIndexItem key={songObject.id} song={songObject}
                    createStation={this.props.createStation}
                    ownProps={this.props.ownProps}
                    />
                  );
                })}
              </div>
              :
              null
            }

            <div className="suggestions">
              <h3>Suggested Station</h3>
              <hr className="horizontal-line" width ="220" ></hr>
              <div className="faker1 faker" onClick={()=> this.props.createStation({name:`${faker1}`})
                .then((serverS) => {
                  this.props.ownProps.history.push(`/stations/${serverS.station.id}`);
                  this.props.ownProps.clearState();})}>{faker1}</div>
            </div>

          </div>
        );
      }
    }

  }
}

export default ResultsIndex;
