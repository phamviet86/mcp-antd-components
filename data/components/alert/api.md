## API


| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| action | The action of Alert | ReactNode | - | 4.9.0 |
| ~~afterClose~~ | Called when close animation is finished, please use `closable.afterClose` instead | () => void | - |  |
| banner | Whether to show as banner | boolean | false |  |
| classNames | Customize class for each semantic structure inside the component. Supports object or function | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props }) => Record<[SemanticDOM](#semantic-dom), string> | - |  |
| closable | The config of closable, >=5.15.0: support `aria-*` | boolean \| [ClosableType](#closabletype) & React.AriaAttributes | `false` |  |
| description | Additional content of Alert | ReactNode | - |  |
| icon | Custom icon, effective when `showIcon` is true | ReactNode | - |  |
| ~~message~~ | Content of Alert, please use `title` instead | ReactNode | - |  |
| title | Content of Alert | ReactNode | - |  |
| showIcon | Whether to show icon | boolean | false, in `banner` mode default is true |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props }) => Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| type | Type of Alert styles, options: `success`, `info`, `warning`, `error` | string | `info`, in `banner` mode default is `warning` |  |
| ~~onClose~~ | Callback when Alert is closed, please use `closable.onClose` instead | (e: MouseEvent) => void | - |  |

### ClosableType

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| afterClose | Called when close animation is finished | function | - | - |
| closeIcon | Custom close icon | ReactNode | - | - |
| onClose | Callback when Alert is closed | (e: MouseEvent) => void | - | - |

### Alert.ErrorBoundary

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| description | Custom error description to show | ReactNode | {{ error stack }} |  |
| ~~message~~ | Custom error message to show, please use `title` instead | ReactNode | {{ error }} |  |
| title | Custom error title to show | ReactNode | {{ error }} |  |