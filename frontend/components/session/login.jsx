import React from 'react';

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      password: "",
      errors: this.props.errors
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemo = this.handleDemo.bind(this);
    this.renderErrors = this.renderErrors.bind(this);
  }

  componentDidMount() {
    this.props.clearErrors();
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.loggedIn) {
      this.props.history.push('/stations');
    }
  }

  handleInput(type) {
    return (e) => {
      this.setState({[type]: e.target.value });
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.login(this.state);
  }

  handleDemo(e) {
    e.preventDefault();
    this.props.login({email: "demo@gmail.com", password: "password"})
      .then(() => this.props.history.push('/stations'));
  }

  renderErrors() {
    return(
      <ul className="errors">
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return (
      <div className="login-form-div">
        <h1>Find the music you love and let</h1>
        <h1>the music you love find you</h1>
        <h2>Login</h2>
        {this.renderErrors()}
        <form className="login-form">
          <label className="login-form-top-label">
            <input
              type="text"
              value={this.state.email}
              onChange={this.handleInput('email')}
              placeholder="Email"
            />
          </label>
          <label className="login-form-btm-label">
            <input
              type="password"
              value={this.state.password}
              onChange={this.handleInput('password')}
              placeholder="Password"
            />
          </label>

          <button className="login-form-btn" onClick={this.handleSubmit}>Log In</button>
          <button className="login-form-demo-btn" onClick={this.handleDemo}>Demo</button>
        </form>
      </div>
    );
  }
}

export default Login;
