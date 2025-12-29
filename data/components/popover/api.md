## API


| Param | Description | Type | Default value | Version |
| --- | --- | --- | --- | --- |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - |  |
| content | Content of the card | ReactNode \| () => ReactNode | - |  |
| title | Title of the card | ReactNode \| () => ReactNode | - |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |

<!-- Common API -->

<embed src="../tooltip/shared/sharedProps.en-US.md"></embed>