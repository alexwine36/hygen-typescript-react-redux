---
to: "<%= createTest ? basePath + '/' + type + '/' + h.inflection.camelize(name) + '/index.test.tsx' : null %>"
---
import React from 'react';
import { testRenderComponent } from '<%= relativeTestPath %>/Utils/Functions/TestHelpers/test-helpers';
import <%= h.inflection.camelize(name) %> from '.';

describe('<<%= h.inflection.camelize(name) %> />', () => {
  test('Renders without exploding', () => {
    testRenderComponent(
      <<%= h.inflection.camelize(name) %>/>
    );
  });
});
