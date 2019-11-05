---
to: <%= basePath %>/<%= type %>/<%= h.inflection.camelize(name) %>/index.tsx
---
<% if (styled) { -%>
// import { styled } from '@material-ui/styles';
import styled from 'styled-components';

const <%= h.inflection.camelize(name) %> = styled.div`
  
`;



<% } else { -%>
import React from 'react';
<% if(createStyles) { -%>
import useStyles from './index.styles';
<% } -%>
<% if(addCompose) { -%>
import { compose } from 'recompose';
<% } -%>


<% if(addCompose) { -%>
interface OutterProps {
    sample?: string;
}

interface Props extends OutterProps {

}
<% } else { -%>
interface Props {
    sample?: string;
}
<% } -%>



const <%= name %> = (props: Props) => {
    <% if(createStyles) { -%>
    const classes = useStyles();
    <% } %>
    return (
        <div>
            <%= name %>
        </div>
    )
}
<% } -%>

<% if(addCompose) { -%>
export default compose<Props, OutterProps>(


)(<%= h.inflection.camelize(name) %>);
<% } else { -%>
export default <%= h.inflection.camelize(name) %>;
<% } -%>