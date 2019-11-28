---
to: src/State/<%= h.inflection.camelize(name) %>/selectors.ts
---
import { RootState } from 'typesafe-actions';
import { createSelector } from 'reselect';
export const get<%= name %> = (store: RootState) => store.<%= name.toLowerCase() %>;

export const get<%= name %>Selector = createSelector(
  [get<%= name %>],
  (result) =>
    result
);
