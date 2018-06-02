import React from 'react';
import { Route } from "react-router-dom";

import Project from "./project";

const App = () => (
    <div className="ui container">
        <Route path="/project" exact component={Project} />
    </div>
);

export default App;