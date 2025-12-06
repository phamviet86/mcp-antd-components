## API


| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| title | The text shown in the tooltip | ReactNode \| () => ReactNode | - | - |
| color | The background color. After using this attribute, the internal text color will adapt automatically | string | - | 5.27.0 |
| classNames | Semantic DOM class | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props }) => Record<[SemanticDOM](#semantic-dom), string> | - |  |
| styles | Semantic DOM style | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props }) => Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |

### Common API

<embed src="./shared/sharedProps.en-US.md"></embed>

### ConfigProvider - tooltip.unique {#config-provider-tooltip-unique}

You can configure global unique display for Tooltip through ConfigProvider. When `unique` is set to `true`, only one Tooltip under the ConfigProvider will be displayed at the same time, providing better user experience and smooth transition effects.

Note: After configuration, properties like `getContainer`, `arrow` etc. will be ignored.

```tsx
import { Button, ConfigProvider, Space, Tooltip } from 'antd';

export default () => (
  <ConfigProvider
    tooltip={{
      unique: true,
    }}
  >
    <Space>
      <Tooltip title="First tooltip">
        <Button>Button 1</Button>
      </Tooltip>
      <Tooltip title="Second tooltip">
        <Button>Button 2</Button>
      </Tooltip>
    </Space>
  </ConfigProvider>
);
```