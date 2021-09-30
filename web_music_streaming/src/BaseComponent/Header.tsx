import React from 'react'
import { NavLink } from 'react-router-dom'

import HOME from '../Images/home.png'
import SEARCH from '../Images/search.png'

const Header: React.FC = () => {
  return (
    <div className="navigation-box">
      <NavLink to="/" className="navigation-contents">
        <div className="nav-icon-box">
          <img src={HOME} alt="Home icon" className="nav-icon" />
        </div>
        <div className="nav-text">Home</div>
      </NavLink>
      <NavLink to="/search" className="navigation-contents">
        <div className="nav-icon-box">
          <img src={SEARCH} alt="Search icon" className="nav-icon" />
        </div>
        <div className="nav-text">Search</div>
      </NavLink>
    </div>
  )
}

export default Header
