import React from 'react';

class Signup extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      password: "",
      name: ""
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleInput(type) {
    return (e) => {
      this.setState({[type]: e.target.value });
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createNewUser(this.state)
      .then(() => this.props.history.push('/stations'));
  }

  render() {
    return (
      <div className="session-form-div">
        <h1>Find the music you love and let</h1>
        <h1>the music you love find you</h1>
        <h2>Sign up for free</h2>
        <form className="session-form">
          <label className="session-form-top-label">
            <input
              type="text"
              value={this.state.name}
              onChange={this.handleInput('name')}
              placeholder="Name"
            />
          </label>
          <label className="session-form-mid-label">
            <input
              type="text"
              value={this.state.email}
              onChange={this.handleInput('email')}
              placeholder="Email"
            />
          </label>
          <label className="session-form-btm-label">
            <input
              type="password"
              value={this.state.password}
              onChange={this.handleInput('password')}
              placeholder="Password"
            />
          </label>

          <button className="session-form-btn" onClick={this.handleSubmit}>Sign Up</button>
        </form>
      </div>
    );
  }
}

export default Signup;
