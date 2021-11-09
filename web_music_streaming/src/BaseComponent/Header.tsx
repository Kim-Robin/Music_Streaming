import React from 'react'
import { NavLink } from 'react-router-dom'

import HOME from '../Images/home.png'
import SEARCH from '../Images/search.png'
import LIBRARY from '../Images/library.png'
import LOGO from '../Images/react.png'

interface Hprops {
    content: {
        link: string
        imgSrc: any
        imgAlt: string
        title: string
    }
}

const Header: React.FC = () => {
    const contentHome = {
        link: '/',
        imgSrc: HOME,
        imgAlt: 'Home icon',
        title: 'Home',
    }

    const contentSearch = {
        link: '/search',
        imgSrc: SEARCH,
        imgAlt: 'search icon',
        title: 'Search',
    }

    const contentLibrary = {
        link: '/library',
        imgSrc: LIBRARY,
        imgAlt: 'library icon',
        title: 'Library',
    }

    return (
        <div className="navigation-box">
            <LogoComponent />
            <NavComponent content={contentHome} />
            <NavComponent content={contentSearch} />
            <NavComponent content={contentLibrary} />
            <UserArea />
        </div>
    )
}

const LogoComponent: React.FC = () => {
    return (
        <div className="logo">
            <img src={LOGO} alt="logo" className="logo-icon" />
        </div>
    )
}

const NavComponent: React.FC<Hprops> = ({ content }) => {
    return (
        <NavLink to={content.link} className="navigation-contents">
            <div className="nav-icon-box">
                <img
                    src={content.imgSrc}
                    alt={content.imgAlt}
                    className="nav-icon"
                />
            </div>
            <div className="nav-text">{content.title}</div>
        </NavLink>
    )
}

const UserArea: React.FC = () => {
    return (
        <div className="playlist-box">
            <h3>hello</h3>
        </div>
    )
}

export default Header
