import React from 'react';
import { Route, Switch } from "react-router-dom";

import Project from "./project";
import Dashboard from "./dashboard";

const App = () => (
  <Switch className="ui container">
    <Route exact path="/" component={Dashboard} />
    <Route path="/project" component={Project} />
  </Switch>
);

export default App;
