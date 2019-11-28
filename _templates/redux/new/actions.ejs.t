---
to: src/State/<%= h.inflection.camelize(name) %>/actions.ts
---
<% SetActions = ACTIONS.map(v => {
   return "Set" + h.inflection.camelize(v.toLowerCase())
}) -%>
import { createStandardAction } from 'typesafe-actions';
import {
<% ACTIONS.forEach(val => { -%>
    <%= val %>,
<% }) -%>
} from './types';

<% ACTIONS.forEach(val => { -%>
export interface <%= h.inflection.camelize(val.toLowerCase()) %>Payload {

}

export interface Set<%= h.inflection.camelize(val.toLowerCase()) %> {
    type: <%= val %>,
    payload: <%= h.inflection.camelize(val.toLowerCase()) %>Payload
}
export const set<%= h.inflection.camelize(val.toLowerCase()) %> = createStandardAction(<%= val %>)<<%= h.inflection.camelize(val.toLowerCase()) %>Payload>();
<% }) -%>

export type Actions = <%= SetActions.join(" | ") %>;