---
to: "<%= createStyles ? basePath + '/' + type + '/' + h.inflection.camelize(name) + '/index.styles.tsx' : null %>"
---
import React from 'react';
import {makeStyles, createStyles, Theme} from '@material-ui/core';

const <%= h.inflection.camelize(name) %>Styles = makeStyles((theme: Theme) =>
  createStyles({
    
  })
);

export default <%= h.inflection.camelize(name) %>Styles;