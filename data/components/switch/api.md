## API


| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| checked | Determine whether the Switch is checked | boolean | false |  |
| checkedChildren | The content to be shown when the state is checked | ReactNode | - |  |
| className | The additional class to Switch | string | - |  |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - |
| defaultChecked | Whether to set the initial state | boolean | false |  |
| defaultValue | Alias for `defaultChecked` | boolean | - | 5.12.0 |
| disabled | Disable switch | boolean | false |  |
| loading | Loading state of switch | boolean | false |  |
| size | The size of the Switch, options: `default` `small` | string | `default` |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |
| unCheckedChildren | The content to be shown when the state is unchecked | ReactNode | - |  |
| value | Alias for `checked` | boolean | - | 5.12.0 |
| onChange | Trigger when the checked state is changing | function(checked: boolean, event: Event) | - |  |
| onClick | Trigger when clicked | function(checked: boolean, event: Event) | - |  |