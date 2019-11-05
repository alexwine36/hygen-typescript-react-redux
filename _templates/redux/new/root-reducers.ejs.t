---
inject: true
to: src/State/index.ts
after: //Reducers
skip_if: <%= name.toLowerCase() %>,
---
<%= name.toLowerCase() %>,