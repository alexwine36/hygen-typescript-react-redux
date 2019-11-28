---
to: typings/redux/index.d.ts
unless_exists: true
---
import { StateType } from 'typesafe-actions';

declare module 'typesafe-actions' {
  export type Store = StateType<typeof import('../../src/State/index').default>;
  export type RootState = StateType<
    typeof import('../../src/State/index').rootReducer
  >;
  //   export type RootAction = ActionType<typeof import('./actions').default>;
}