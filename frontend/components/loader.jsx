import React from 'react';
import { RingLoader } from 'react-spinners';

class AwesomeLoader extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      loading: true,
      size: 300
    };
  }

  render() {
    return (
      <div
        className='sweet-loading'>
        <RingLoader
          color={'#123abc'}
          loading={this.state.loading}
          size={this.state.size}
        />
      </div>
    );
  }
}

export default AwesomeLoader;
