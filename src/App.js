import React, { Component } from 'react'
import getWeb3 from './utils/getWeb3'

import './css/oswald.css'
import './css/open-sans.css'
import './css/pure-min.css'
import './App.css'

import Layout from './hoc/Layout/Layout';
import SiteBuilder from './containers/SiteBuilder/SiteBuilder';

class App extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <div className="App">
        <div>
          <SiteBuilder/>
        </div>
      </div>
    );
  }
}

export default App
