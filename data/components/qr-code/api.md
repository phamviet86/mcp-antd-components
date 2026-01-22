## API


> This component is available since `antd@5.1.0`

| Property | Description | Type | Default | Version |
| :-- | :-- | :-- | :-- | :-- |
| value | scanned text | `string \| string[]` | - | `string[]`: 5.28.0 |
| type | render type | `canvas \| svg ` | `canvas` | 5.6.0 |
| icon | include image url (only image link are supported) | string | - |
| size | QRCode size | number | 160 |
| iconSize | include image size | number \| { width: number; height: number } | 40 | 5.19.0 |
| color | QRCode Color | string | `#000` |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - |  |
| bgColor | QRCode Background Color | string | `transparent` | 5.5.0 |
| marginSize | Quiet zone size (in modules). `0` means no margin | number | `0` | 6.2.0 |
| bordered | Whether has border style | boolean | `true` |
| errorLevel | Error Code Level | `'L' \| 'M' \| 'Q' \| 'H' ` | `M` |
| boostLevel | If enabled, the Error Correction Level of the result may be higher than the specified Error Correction Level | `boolean` | true | 5.28.0 |
| status | QRCode status | `active \| expired \| loading \| scanned` | `active` | scanned: 5.13.0 |
| statusRender | custom status render | `(info: [StatusRenderInfo](/components/qr-code-cn#statusrenderinfo)) => React.ReactNode` | - | 5.20.0 |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| type | render type | `canvas \| svg` | `canvas` | 5.6.0 |
| value | scanned text | string | - |  |

### StatusRenderInfo

```typescript
type StatusRenderInfo = {
  status: QRStatus;
  locale: Locale['QRCode'];
  onRefresh?: () => void;
};
```