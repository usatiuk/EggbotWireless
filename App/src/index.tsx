import "normalize.css/normalize.css";
import "bootstrap/dist/css/bootstrap.min.css";

import * as React from "react";
import { render } from "react-dom";
import { App } from "~App";

render(<App />, document.getElementById("body"));
