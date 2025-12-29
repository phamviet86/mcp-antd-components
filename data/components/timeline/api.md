## API


### Timeline

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - |  |
| items | Each node of timeline | [Items](#Items)[] | - |  |
| mode | By sending `alternate` the timeline will distribute the nodes to the left and right | `start` \| `alternate` \| `end` | `start` |  |
| orientation | Set the direction of the timeline | `vertical` \| `horizontal` | `vertical` |  |
| ~~pending~~ | Set the last ghost node's existence or its content. Use `item.loading` instead | ReactNode | false |  |
| ~~pendingDot~~ | Set the dot of the last ghost node when pending is true. Use `item.icon` instead | ReactNode | &lt;LoadingOutlined /&gt; |  |
| reverse | Whether reverse nodes or not | boolean | false |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| titleSpan | Set the title span space. It is the distance to the center of the dot <InlinePopover previewURL="https://mdn.alipayobjects.com/huamei_7uahnr/afts/img/A*1NJISa7bpqgAAAAAR5AAAAgAerJ8AQ/original"></InlinePopover> | number \| string | 12 |  |
| variant | Config style variant | `filled` \| `outlined` | `outlined` |  |

### Items

Node of timeline.

| Property | Description | Type | Default |
| --- | --- | --- | --- |
| color | Set the circle's color to `blue`, `red`, `green`, `gray` or other custom colors | string | `blue` |
| content | Set the content | ReactNode | - |
| ~~children~~ | Set the content. Please use `content` instead | ReactNode | - |
| ~~dot~~ | Customize timeline dot. Please use `icon` instead | ReactNode | - |
| icon | Customize node icon | ReactNode | - |
| ~~label~~ | Set the label. Please use `title` instead | ReactNode | - |
| loading | Set loading state | boolean | false |
| placement | Customize node placement | `start` \| `end` | - |
| ~~position~~ | Customize node position，Please use `placement` instead | `start` \| `end` | - |
| title | Set the title | ReactNode | - |