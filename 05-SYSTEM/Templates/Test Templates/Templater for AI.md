## Usage 
```markdown
<%
tp.ai.chat(
    promptOrMessages: string | ChatCompletionMessageParam[],
    model?: string,
    systemMessage?: string,
    maxTokens?: number,
    maxOutgoingCharacters?: number,
    baseURL?: string,
    apiKey?: string,
    organization?: string
)
%>
```

## Example

<% tp.ai.chat("How old is the moon?") %>

```markdown
<% tp.ai.chat("How old is the moon?") %>
```
