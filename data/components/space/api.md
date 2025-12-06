## API


| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| align | Align items | `start` \| `end` \|`center` \|`baseline` | - | 4.2.0 |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props: SpaceProps })=> Record<[SemanticDOM](#semantic-dom), string> | - |  |
| ~~direction~~ | The space direction | `vertical` \| `horizontal` | `horizontal` | 4.1.0 |
| orientation | The space direction | `vertical` \| `horizontal` | `horizontal` |  |
| size | The space size | [Size](#size) \| [Size\[\]](#size) | `small` | 4.1.0 \| Array: 4.9.0 |
| ~~split~~ | Set split, please use `separator` instead | ReactNode | - | 4.7.0 |
| separator | Set separator | ReactNode | - | - |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props: SpaceProps })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| vertical | Orientation, Simultaneously configure with `orientation` and prioritize `orientation` | boolean | false | - |
| wrap | Auto wrap line, when `horizontal` effective | boolean | false | 4.9.0 |

### Size

`'small' | 'middle' | 'large' | number`

### Space.Compact

Use Space.Compact when child form components are compactly connected and the border is collapsed. The supported components are：

- Button
- AutoComplete
- Cascader
- DatePicker
- Input/Input.Search
- InputNumber
- Select
- TimePicker
- TreeSelect

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| block | Option to fit width to its parent\'s width | boolean | false | 4.24.0 |
| ~~direction~~ | Set direction of layout | `vertical` \| `horizontal` | `horizontal` | 4.24.0 |
| orientation | Set direction of layout | `vertical` \| `horizontal` | `horizontal` |  |
| vertical | Orientation, Simultaneously configure with `orientation` and prioritize `orientation` | boolean | false | - |
| size | Set child component size | `large` \| `middle` \| `small` | `middle` | 4.24.0 |

### Space.Addon

> This component is available since `antd@5.29.0`.

Used to create custom cells in compact layouts.

| Property | Description    | Type      | Default | Version |
| -------- | -------------- | --------- | ------- | ------- |
| children | Custom content | ReactNode | -       | 5.29.0  |