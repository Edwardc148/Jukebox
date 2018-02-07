import React from 'react';
import _ from 'lodash';
import ResultsIndexItem from './results_index_item';

class ResultsIndex extends React.Component {
  constructor(props){
    super(props);
  }

  render(){
    if (_.isEmpty(this.props.results) && this.props.currentSearch === '') {
      return (
        null
      );
    } else {
      if (_.isEmpty(this.props.results)) {
        return (
          <div className="search-index-item-div">
            <div className="search-index-item">
              No Results Found
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
                    />
                  );
                })}
              </div>
              :
              null
            }
          </div>
        );
      }
    }

  }
}

export default ResultsIndex;
