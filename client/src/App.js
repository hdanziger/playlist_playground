import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  constructor() {
    super();

    this.state = {
      fetchData: true,
      musicData: {}
    }
  }
  render() {
    const {fetchData} = this.state
    console.log(fetchData)
    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Welcome to the Playlist Playground!</h1>
        </header>
        <p className="App-intro">
        {
          fetchData ?
          <img src={logo} className="App-logo" alt="logo" />
          :
          <h1> Data is received </h1>
        }
        </p>
      </div>
    );
  }
}

export default App;
