import './Styles/styles.css'
//import IMAGE from './react.png'
//import LOGO from './logo.svg'
//import { ClickCounter } from './ClickCounter'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'

import Home from './Components/Home'

import Search from './Components/Search'

import Header from './BaseComponent/Header'
import Footer from './BaseComponent/Footer'

export const App = () => {
    return (
        <div className="project-wrapper">
            <Router>
                <Header />
                <Switch>
                    <Route path="/" exact component={Home} />
                    <Route path="/search" exact component={Search} />
                </Switch>
                <Footer />
            </Router>
        </div>
    )
}
