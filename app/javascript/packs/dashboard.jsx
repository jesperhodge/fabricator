import React, { Component } from 'react'
import DashboardNavbar from './dashboard_navbar'

export default class extends Component {
  render() {
    return (
      <div>
        <DashboardNavbar />
        <div className="container-fluid">
          <h1 className="title">Hello, world.</h1>
        </div>
      </div>
    )
  }
}
