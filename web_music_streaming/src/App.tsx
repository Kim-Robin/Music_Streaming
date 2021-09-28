import './styles.css'
//import IMAGE from './react.png'
//import LOGO from './logo.svg'
//import { ClickCounter } from './ClickCounter'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'

import Home from './Components/Home'

export const App = () => {
  return (
    <Router>
      <Switch>
        <Route path="/" exact component={Home} />
      </Switch>
    </Router>
  )
}
