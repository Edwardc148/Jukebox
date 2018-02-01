import React from 'react';

class Home extends React.Component {

  componentDidMount() {
    window.setTimeout(() => {
      this.props.history.push('/stations');
    } ,1000);
  }

  render() {
    return (
      <div>
        <h1 className="home-header">jukebox</h1>
      </div>

    );
  }
}

export default Home;
