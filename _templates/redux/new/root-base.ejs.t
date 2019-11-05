---
to: src/State/index.ts
unless_exists: true
---
import { combineReducers, createStore } from "redux";
//ImportReducers

export const rootReducer = combineReducers({
    //Reducers
});
const store = createStore(rootReducer);

export default store;