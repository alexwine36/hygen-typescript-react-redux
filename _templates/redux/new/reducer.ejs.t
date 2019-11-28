---
to: src/State/<%= h.inflection.camelize(name) %>/reducer.ts
---
import { createReducer } from 'typesafe-actions';
import {
<% ACTIONS.forEach(val => { -%>
    <%= val %>,
<% }) -%>
} from './types';
import { Actions } from './actions';

export type I<%= name %> =  Readonly<{

}>;
const initialState: I<%= name %> = {};

export default createReducer<I<%= name %>, Actions>(initialState)
<% ACTIONS.forEach(val => { -%>
    .handleAction(<%= val %>, (state, action) => {
        return {
            ...state,
        }
    })
<% }) -%>
//    export default function(state=initialState, action: Actions) {
//        switch (action.type) {
//            <% ACTIONS.forEach(val => { -%>
//            case <%= val %>: {
//                const {} = action.payload;
//                return {
//                    ...state
//                }
//            }
//            <% }) -%>
//            default: {
//                return state;
//            }
//        }
//    }



