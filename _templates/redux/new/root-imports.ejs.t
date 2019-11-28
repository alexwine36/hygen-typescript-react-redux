---
inject: true
to: src/State/index.ts
after: // ImportReducers
skip_if: <%= false %>
---
import <%= name.toLowerCase() %> from './<%= name %>/reducer';