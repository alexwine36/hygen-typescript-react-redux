---
inject: true
to: src/State/index.ts
after: //ImportReducers
skip_if: <%= name.toLowerCase() %>
---
import <%= name.toLowerCase() %> from './<%= name %>/reducer';