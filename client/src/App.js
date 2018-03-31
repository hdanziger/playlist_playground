import React, { Component } from 'react';
import './App.css';
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import { Container } from "semantic-ui-react";
import Navbar from "./components/Navbar";
import Home from "./components/Home";
import Playlists from "./containers/Playlists";
import PlaylistShow from "./containers/PlaylistShow";
import PlaylistForm from "./containers/PlaylistForm";

const apiUrl = `https://api.spotify.com/v1/${process.env.PLAYLIST_PLAYGROUND_APP_KEY}/`

class App extends Component {

  render() {
    return (
      <div className="App">
        <Router>
          <div>
            <Navbar />
              <Container>
                <Switch>
                  <Route exact path='/' component={Home} />
                  <Route exact path='/playlists' component={Playlists} />
                  <Route exact path='/playlists/new' component={PlaylistForm} />
                  <Route
                    path="/playlists/:playlistId"
                    component={PlaylistShow}
                  />
                </Switch>
            </Container>
          </div>
        </Router>
      </div>
    );
  }
}

export default App;
