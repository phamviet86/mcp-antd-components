## API


#### Statistic

| Property         | Description                   | Type                 | Default | Version |
| ---------------- | ----------------------------- | -------------------- | ------- | ------- |
| decimalSeparator | The decimal separator         | string               | `.`     |         |
| formatter        | Customize value display logic | (value) => ReactNode | -       |         |
| groupSeparator   | Group separator               | string               | `,`     |         |
| loading          | Loading status of Statistic   | boolean              | false   | 4.8.0   |
| precision        | The precision of input value  | number               | -       |         |
| prefix           | The prefix node of value      | ReactNode            | -       |         |
| suffix           | The suffix node of value      | ReactNode            | -       |         |
| title            | Display title                 | ReactNode            | -       |         |
| value            | Display value                 | string \| number     | -       |         |
| valueStyle       | Set value section style       | CSSProperties        | -       |         |

#### Statistic.Countdown <Badge type="error">Deprecated</Badge>

<Antd component="Alert" message="When using version >= 5.25.0, Please use Statistic.Timer instead." type="warning" banner="true"></Antd>

<!-- prettier-ignore -->
| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| format | Format as [dayjs](https://day.js.org/) | string | `HH:mm:ss` |  |
| prefix | The prefix node of value | ReactNode | - |  |
| suffix | The suffix node of value | ReactNode | - |  |
| title | Display title | ReactNode | - |  |
| value | Set target countdown time | number | - |  |
| valueStyle | Set value section style | CSSProperties | - |  |
| onFinish | Trigger when time's up | () => void | - |  |
| onChange | Trigger when time's changing | (value: number) => void | - | 4.16.0 |

#### Statistic.Timer <Badge>5.25.0+</Badge>

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| type | time counter down or up | `countdown` `countup` | - |  |
| format | Format as [dayjs](https://day.js.org/) | string | `HH:mm:ss` |  |
| prefix | The prefix node of value | ReactNode | - |  |
| suffix | The suffix node of value | ReactNode | - |  |
| title | Display title | ReactNode | - |  |
| value | Set target countdown time | number | - |  |
| valueStyle | Set value section style | CSSProperties | - |  |
| onFinish | Trigger when time's up, only to be called when type is `countdown` | () => void | - |  |
| onChange | Trigger when time's changing | (value: number) => void | - |  |