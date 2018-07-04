import React, { Component } from 'react'

export default class extends Component {
  render() {
    return (
      <nav className="navbar navbar-expand-lg navbar-light bg-light">
        <a className="navbar-brand" href="#">Fabricator</a>
        <ul className="navbar-nav mr-auto">
          <li className="nav-item dropdown">
            <a className="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Add
            </a>
            <div className="dropdown-menu" aria-labelledby="navbarDropdown">
              <a className="dropdown-item" href="#">Issue</a>
              <a className="dropdown-item" href="#">Epic</a>
              <a className="dropdown-item" href="#">Repo</a>
            </div>
          </li>
          <li className="nav-item">
            <a className="nav-link" href="#">Settings</a>
          </li>
        </ul>
      </nav>
    )
  }
}
