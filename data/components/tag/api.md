## API


### Tag

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - |  |
| closeIcon | Custom close icon. 5.7.0: close button will be hidden when setting to `null` or `false` | ReactNode | false | 4.4.0 |
| color | Color of the Tag | string | - |  |
| disabled | Whether the tag is disabled | boolean | false | 6.0.0 |
| href | The address to jump when clicking, when this property is specified, the `tag` component will be rendered as an `<a>` tag | string | - | 6.0.0 |
| icon | Set the icon of tag | ReactNode | - |  |
| onClose | Callback executed when tag is closed (can be prevented by `e.preventDefault()`) | (e: React.MouseEvent<HTMLElement, MouseEvent>) => void | - |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| target | Same as target attribute of a, works when href is specified | string | - | 6.0.0 |
| variant | Variant of the tag | `'filled' \| 'solid' \| 'outlined'` | `'filled'` | 6.0.0 |

### Tag.CheckableTag

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| checked | Checked status of Tag | boolean | false |  |
| icon | Set the icon of tag | ReactNode | - | 5.27.0 |
| onChange | Callback executed when Tag is checked/unchecked | (checked) => void | - |  |

### Tag.CheckableTagGroup

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-group), string> \| (info: { props }) => Record<[SemanticDOM](#semantic-group), string> | - |  |
| defaultValue | Initial value | `string \| number \| Array<string \| number> \| null` | - |  |
| disabled | Disable check/uncheck | `boolean` | - |  |
| multiple | Multiple select mode | `boolean` | - |  |
| options | Option list | `Array<{ label: ReactNode; value: string \| number } \| string \| number>` | - |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-group), CSSProperties> \| (info: { props }) => Record<[SemanticDOM](#semantic-group), CSSProperties> | - |  |
| value | Value of checked tag(s) | `string \| number \| Array<string \| number> \| null` | - |  |
| onChange | Callback when Tag is checked/unchecked | `(value: string \| number \| Array<string \| number> \| null) => void` | - |  |