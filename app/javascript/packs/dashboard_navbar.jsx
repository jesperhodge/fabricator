import React, { Component } from 'react'
import {
  Navbar,
  NavbarBrand,
  Nav,
  UncontrolledDropdown,
  DropdownToggle,
  DropdownMenu,
  DropdownItem,
  NavItem,
  NavLink,
} from 'reactstrap'

export default class extends Component {
  render() {
    return (
      <div>
        <Navbar className="navbar navbar-expand-lg navbar-light bg-light" color="light" light expand="lg">
          <NavbarBrand href="#">Fabricator</NavbarBrand>
          <Nav className="mr-auto" navbar>
            <UncontrolledDropdown nav inNavbar>
              <DropdownToggle nav caret className="nav-link dropdown-toggle" href="#" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true">
                Add
              </DropdownToggle>
              <DropdownMenu>
                <DropdownItem href="#">Issue</DropdownItem>
                <DropdownItem href="#">Epic</DropdownItem>
                <DropdownItem href="#">Repo</DropdownItem>
              </DropdownMenu>
            </UncontrolledDropdown>
            <NavItem>
              <NavLink href="#">Settings</NavLink>
            </NavItem>
          </Nav>
        </Navbar>
      </div>
    )
  }
}
