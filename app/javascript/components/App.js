import React from 'react'
import { Route, Switch} from 'react-router-dom'
import Foods from './Foods/Foods'
import Food from './Food/Food'

const App = () => {
    return (
    <Switch>
        <Route exact path="/" component={Foods}/>
        <Route exact path="/food/:slug" component={Food}/>
    </Switch>
    )
}

export default App