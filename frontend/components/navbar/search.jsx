import React from 'react';
import OnClickOutside from 'react-click-outside';
import _ from 'lodash';
import * as SearchAPIUtils from '../../utils/search_utils';
import ResultsIndexContainer from './results_index_container';

class Search extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.mergeProps(props);
    this.mergeProps = this.mergeProps.bind(this);
    this.clearState = this.clearState.bind(this);
    this.handleClickOutside = this.handleClickOutside.bind(this);
    this.handleUserSearch = this.handleUserSearch.bind(this);
    this.search = this.search.bind(this);
  }

  mergeProps(props) {
    let newMergeObj = Object.assign({}, props);
    newMergeObj['search_value'] = '';
    newMergeObj['search_result'] = {};
    return newMergeObj;
  }

  componentDidMount(){
   document.getElementById('search').focus();
   document.getElementById('search').addEventListener('keyup', _.debounce(this.search, 250) );
  }

  search(){
    console.log(this.state.search_value);
    if (this.state.search_value) {
      SearchAPIUtils.search(this.state.search_value).then(searchResult => {
        this.setState({'search_result': searchResult});
      });
    } else {
      this.setState({'search_result': {}});
    }
  }

  clearState() {
    this.setState({'search_value': ''});
    this.setState({'search_result': {}});
  }

  handleClickOutside() {
    this.clearState();
  }

  handleUserSearch(e) {
    this.setState({'search_value': e.target.value});
  }

  render () {
    return (
      <div className="search-bar-div">
        <input id="search" onChange={this.handleUserSearch} className="search" type="text" placeholder="Create A Station" value={this.state.search_value}></input>

        { this.state.search_result !== {} ?
          <ResultsIndexContainer
            createStation={this.props.createStation}
            results={this.state.search_result}
            currentSearch={this.state.search_value}
            clearState={this.clearState}
          />
        :
          null
        }

      </div>
    );

  }
}

export default OnClickOutside(Search);
