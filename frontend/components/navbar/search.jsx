import React from 'react';
import OnClickOutside from 'react-click-outside';

class Search extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.mergeProps(props);
    this.mergeProps = this.mergeProps.bind(this);
    this.textChange = this.textChange.bind(this);
    this.clearState = this.clearState.bind(this);
    this.handleClickOutside = this.handleClickOutside.bind(this);
  }

  mergeProps(props) {
    let newMergeObj = Object.assign({}, props);
    newMergeObj['search_value'] = '';
    return newMergeObj;
  }

  textChange(e) {
    this.setState({'search_value': e.target.value});
  }

  clearState() {
    this.setState({'search_value': ''});
  }

  handleClickOutside() {
    this.clearState();
  }

  render () {
    return (
      <div className="search-bar-div">
        <input onChange={this.textChange} className="search" type="text" placeholder="Create A Station" value={this.state.search_value}></input>
      </div>
    );

  }
}

export default OnClickOutside(Search);
