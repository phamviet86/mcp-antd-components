## API


| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| children | The wrapped title | ReactNode | - |  |
| className | The className of container | string | - |  |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - |  |
| dashed | Whether line is dashed | boolean | false |  |
| orientation | Whether line is horizontal or vertical | `horizontal` \| `vertical` | `horizontal` | - |
| ~~orientationMargin~~ | The margin-left/right between the title and its closest border, while the `titlePlacement` should not be `center`, If a numeric value of type `string` is provided without a unit, it is assumed to be in pixels (px) by default. | string \| number | - |  |
| plain | Divider text show as plain style | boolean | true | 4.2.0 |
| style | The style object of container | CSSProperties | - |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| size | The size of divider. Only valid for horizontal layout | `small` \| `middle` \| `large` | - | 5.25.0 |
| titlePlacement | The position of title inside divider | `start` \| `end` \| `center` | `center` | - |
| ~~type~~ | The direction type of divider | `horizontal` \| `vertical` | `horizontal` | - |
| variant | Whether line is dashed, dotted or solid | `dashed` \| `dotted` \| `solid` | solid | 5.20.0 |
| vertical | Orientation, Simultaneously configure with `orientation` and prioritize `orientation` | boolean | false | - |