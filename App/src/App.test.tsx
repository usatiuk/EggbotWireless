import { shallow } from "enzyme";
import * as React from "react";

import { App } from "~App";

describe("<DocumentsList />", () => {
    it("should say hello", () => {
        const wrapper = shallow(<App />);
        expect(wrapper.text()).toEqual("Hello");
    });
});
