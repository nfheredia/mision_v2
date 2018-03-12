import React, { Component } from 'react'
import logo from './logo.svg'
import './App.css'
import UsersContainer from './components/UsersContainer'

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Misión v2</h1>
        </header>

        <UsersContainer/>
      </div>
    );
  }
}

export default App;
