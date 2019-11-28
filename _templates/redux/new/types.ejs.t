---
to: src/State/<%= h.inflection.camelize(name) %>/types.ts
---
<% ACTIONS.forEach(val => { -%>
export const <%= val %> = "<%= val %>";
export type <%= val %> = typeof <%= val %>;
<% }) -%>