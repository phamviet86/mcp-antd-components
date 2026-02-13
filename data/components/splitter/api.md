## API


> The Splitter component needs to calculate the panel size through its child elements, so its child elements only support `Splitter.Panel`.

### Splitter

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - |  |
| collapsibleIcon | custom collapsible icon | `{start: ReactNode; end: ReactNode}` | - | 6.0.0 |
| draggerIcon | custom dragger icon | `ReactNode` | - | 6.0.0 |
| ~~layout~~ | Layout direction | `horizontal` \| `vertical` | `horizontal` | - |
| lazy | Lazy mode | `boolean` | `false` | 5.23.0 |
| onCollapse | Callback when expanding or collapsing | `(collapsed: boolean[], sizes: number[]) => void` | - | 5.28.0 |
| orientation | Orientation direction | `horizontal` \| `vertical` | `horizontal` |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| vertical | Orientation，Simultaneously existing with `orientation`, `orientation` takes priority | boolean | `false` |  |
| onDraggerDoubleClick | Callback triggered when the dragger is double-clicked | `(index: number) => void` | - | 6.3.0 |
| onResize | Panel size change callback | `(sizes: number[]) => void` | - | - |
| onResizeEnd | Drag end callback | `(sizes: number[]) => void` | - | - |
| onResizeStart | Callback before dragging starts | `(sizes: number[]) => void` | - | - |

### Panel

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| collapsible | Quick folding | `boolean \| { start?: boolean; end?: boolean; showCollapsibleIcon?: boolean \| 'auto' }` | `false` | showCollapsibleIcon: 5.27.0 |
| defaultSize | Initial panel size support number for px or 'percent%' usage | `number \| string` | - | - |
| max | Maximum threshold support number for px or 'percent%' usage | `number \| string` | - | - |
| min | Minimum threshold support number for px or 'percent%' usage | `number \| string` | - | - |
| resizable | Whether to enable drag and drop | `boolean` | `true` | - |
| size | Controlled panel size support number for px or 'percent%' usage | `number \| string` | - | - |