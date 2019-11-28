---
to: src/State/index.ts
unless_exists: true
---
import { combineReducers, createStore, applyMiddleware } from 'redux';
import logger from 'redux-logger';

// ImportReducers

export const rootReducer = combineReducers({
  // Reducers
  
});


const middleware = [
logger
];

const store = createStore(
  rootReducer,
  applyMiddleware(...middleware)
);
// export type STORE = typeof store;
export default store;
