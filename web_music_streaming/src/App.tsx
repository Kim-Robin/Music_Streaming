import './Styles/styles.css'
//import IMAGE from './react.png'
//import LOGO from './logo.svg'
//import { ClickCounter } from './ClickCounter'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'

import Home from './Components/Home'

import Header from './BaseComponent/Header'
import Footer from './BaseComponent/Footer'

export const App = () => {
  return (
    <Router>
      <Header />
      <Switch>
        <Route path="/" exact component={Home} />
      </Switch>
      <Footer />
    </Router>
  )
}
