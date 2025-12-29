## API


### Radio/Radio.Button

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| checked | Specifies whether the radio is selected | boolean | false |  |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - | 6.0.0 |
| defaultChecked | Specifies the initial state: whether or not the radio is selected | boolean | false |  |
| disabled | Disable radio | boolean | false |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - | 6.0.0 |
| value | According to value for comparison, to determine whether the selected | any | - |  |

### Radio.Group

Radio group can wrap a group of `Radio`.

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| block | Option to fit RadioGroup width to its parent width | boolean | false | 5.21.0 |
| buttonStyle | The style type of radio button | `outline` \| `solid` | `outline` |  |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - | 6.0.0 |
| defaultValue | Default selected value | any | - |  |
| disabled | Disable all radio buttons | boolean | false |  |
| name | The `name` property of all `input[type="radio"]` children. If not set, it will fallback to a randomly generated name | string | - |  |
| options | Set children optional | string\[] \| number\[] \| Array&lt;[CheckboxOptionType](#checkboxoptiontype)> | - |  |
| optionType | Set Radio optionType | `default` \| `button` | `default` | 4.4.0 |
| orientation | Orientation | `horizontal` \| `vertical` | `horizontal` |  |
| size | The size of radio button style | `large` \| `middle` \| `small` | - |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - | 6.0.0 |
| value | Used for setting the currently selected value | any | - |  |
| vertical | If true, the Radio group will be vertical. Simultaneously existing with `orientation`, `orientation` takes priority | boolean | false |  |
| onChange | The callback function that is triggered when the state changes | function(e:Event) | - |  |

### CheckboxOptionType

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| label | The text used to display as the Radio option | `string` | - | 4.4.0 |
| value | The value associated with the Radio option | `string` \| `number` \| `boolean` | - | 4.4.0 |
| style | The style to apply to the Radio option | `React.CSSProperties` | - | 4.4.0 |
| className | className of the Radio option | `string` | - | 5.25.0 |
| disabled | Specifies whether the Radio option is disabled | `boolean` | `false` | 4.4.0 |
| title | Adds the Title attribute value | `string` | - | 4.4.0 |
| id | Adds the Radio Id attribute value | `string` | - | 4.4.0 |
| onChange | Triggered when the value of the Radio Group changes | `(e: CheckboxChangeEvent) => void;` | - | 4.4.0 |
| required | Specifies whether the Radio option is required | `boolean` | `false` | 4.4.0 |