---
to: src/State/<%= h.inflection.camelize(name) %>/selectors.ts
---
import { RootState } from 'typesafe-actions';

export const get<%= name %> = (store: RootState) => store;