## API


| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| ~~addonAfter~~ | The label text displayed after (on the right side of) the input field, please use Space.Compact instead | ReactNode | - |  |
| ~~addonBefore~~ | The label text displayed before (on the left side of) the input field, please use Space.Compact instead | ReactNode | - |  |
| autoFocus | If the component gets focus when mounted | boolean | false | - |
| changeOnBlur | Trigger `onChange` when blur. e.g. reset value in range by blur | boolean | true | 5.11.0 |
| changeOnWheel | Allows control with mouse wheel | boolean | - | 5.14.0 |
| controls | Whether to show `+-` controls, or set custom arrow icons | boolean \| { upIcon?: React.ReactNode; downIcon?: React.ReactNode; } | - | 4.19.0 |
| decimalSeparator | Decimal separator | string | - | - |
| placeholder | Placeholder | string | - |  |
| defaultValue | The initial value | number | - | - |
| disabled | If the input is disabled | boolean | false | - |
| formatter | Specifies the format of the value presented | function(value: number \| string, info: { userTyping: boolean, input: string }): string | - | info: 4.17.0 |
| keyboard | If keyboard behavior is enabled | boolean | true | 4.12.0 |
| max | The max value | number | [Number.MAX_SAFE_INTEGER](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/MAX_SAFE_INTEGER) | - |
| min | The min value | number | [Number.MIN_SAFE_INTEGER](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/MIN_SAFE_INTEGER) | - |
| parser | Specifies the value extracted from formatter | function(string): number | - | - |
| precision | The precision of input value. Will use `formatter` when config of `formatter` | number | - | - |
| readOnly | If the input is readonly | boolean | false | - |
| status | Set validation status | 'error' \| 'warning' | - | 4.19.0 |
| prefix | The prefix icon for the Input | ReactNode | - | 4.17.0 |
| suffix | The suffix icon for the Input | ReactNode | - | 5.20.0 |
| size | The height of input box | `large` \| `middle` \| `small` | - | - |
| step | The number to which the current value is increased or decreased. It can be an integer or decimal | number \| string | 1 | - |
| stringMode | Set value as string to support high precision decimals. Will return string value by `onChange` | boolean | false | 4.13.0 |
| value | The current value of the component | number | - | - |
| variant | Variants of Input | `outlined` \| `borderless` \| `filled` \| `underlined` | `outlined` | 5.13.0 \| `underlined`: 5.24.0 |
| onChange | The callback triggered when the value is changed | function(value: number \| string \| null) | - | - |
| onPressEnter | The callback function that is triggered when Enter key is pressed | function(e) | - | - |
| onStep | The callback function that is triggered when click up or down buttons | (value: number, info: { offset: number, type: 'up' \| 'down' }) => void | - | 4.7.0 |