## API


| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props }) => Record<[SemanticDOM](#semantic-dom), string> | - |  |
| delay | Specifies a delay in milliseconds for loading state (prevent flush) | number (milliseconds) | - |  |
| fullscreen | Display a backdrop with the `Spin` component | boolean | false | 5.11.0 |
| indicator | React node of the spinning indicator | ReactNode | - |  |
| percent | The progress percentage, when set to `auto`, it will be an indeterminate progress | number \| 'auto' | - | 5.18.0 |
| size | The size of Spin, options: `small`, `default` and `large` | string | `default` |  |
| spinning | Whether Spin is visible | boolean | true |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props }) => Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| tip | Customize description content when Spin has children | ReactNode | - |  |
| wrapperClassName | The className of wrapper when Spin has children | string | - |  |

### Static Method

- `Spin.setDefaultIndicator(indicator: ReactNode)`

  You can define default spin element globally.