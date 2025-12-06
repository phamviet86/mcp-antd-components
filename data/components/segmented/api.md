## API


> This component is available since `antd@4.20.0`

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| block | Option to fit width to its parent\'s width | boolean | false |  |
| classNames | Customize class for each semantic structure inside the Segmented component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props }) => Record<[SemanticDOM](#semantic-dom), string> | - |  |
| defaultValue | Default selected value | string \| number |  |  |
| disabled | Disable all segments | boolean | false |  |
| onChange | The callback function that is triggered when the state changes | function(value: string \| number) |  |  |
| options | Set children optional | string\[] \| number\[] \| SegmentedItemType\[] | [] |  |
| orientation | Orientation | `horizontal` \| `vertical` | `horizontal` |  |
| size | The size of the Segmented. | `large` \| `middle` \| `small` | `middle` |  |
| styles | Customize inline style for each semantic structure inside the Segmented component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props }) => Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| vertical | Orientation，Simultaneously existing with `orientation`, `orientation` takes priority | boolean | `false` | 5.21.0 |
| value | Currently selected value | string \| number |  |  |
| shape | shape of Segmented | `default` \| `round` | `default` | 5.24.0 |
| name | The `name` property of all `input[type="radio"]` children. if not set, it will fallback to a randomly generated name | string |  | 5.23.0 |

### SegmentedItemType

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| disabled | Disabled state of segmented item | boolean | false |  |
| className | The additional css class | string | - |  |
| icon | Display icon for Segmented item | ReactNode | - |  |
| label | Display text for Segmented item | ReactNode | - |  |
| tooltip | tooltip for Segmented item | string \| [TooltipProps](../tooltip/index.en-US.md#api) | - |  |
| value | Value for Segmented item | string \| number | - |  |