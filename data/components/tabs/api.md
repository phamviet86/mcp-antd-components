## API


### Tabs

<!-- prettier-ignore -->
| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| activeKey | Current TabPane's key | string | - |  |
| addIcon | Customize add icon, only works with `type="editable-card"` | ReactNode | `<PlusOutlined />` | 4.4.0 |
| animated | Whether to change tabs with animation. | boolean \| { inkBar: boolean, tabPane: boolean } | { inkBar: true, tabPane: false } |  |
| centered | Centers tabs | boolean | false | 4.4.0 |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string>(#semantic-dom) | - |  |
| defaultActiveKey | Initial active TabPane's key, if `activeKey` is not set | string | `The key of first tab` |  |
| hideAdd | Hide plus icon or not. Only works while `type="editable-card"` | boolean | false |  |
| indicator | Customize `size` and `align` of indicator | { size?: number \| (origin: number) => number; align: `start` \| `center` \| `end`; } | - | 5.13.0 |
| items | Configure tab content | [TabItemType](#tabitemtype) | [] | 4.23.0 |
| more | Customize the collapse menu | [MoreProps](#moreprops) | { icon: `<EllipsisOutlined />` , trigger: 'hover' } |  |
| removeIcon | The custom icon of remove, only works with `type="editable-card"` | ReactNode | `<CloseOutlined />` | 5.15.0 |
| ~~popupClassName~~ | `className` for more dropdown, please use `classNames.popup` instead | string | - | 4.21.0 |
| renderTabBar | Replace the TabBar | (props: DefaultTabBarProps, DefaultTabBar: React.ComponentClass) => React.ReactElement | - |  |
| size | Preset tab bar size | `large` \| `middle` \| `small` | `middle` |  |
| styles |  Customize inline style for each semantic structure inside the component. Supports object or function.  | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| tabBarExtraContent | Extra content in tab bar | ReactNode \| {left?: ReactNode, right?: ReactNode} | - | object: 4.6.0 |
| tabBarGutter | The gap between tabs | number | - |  |
| tabBarStyle | Tab bar style object | CSSProperties | - |  |
| tabPlacement | Placement of tabs | `top` \| `end` \| `bottom` \| `start` | `top` |  |
| ~~tabPosition~~ | Position of tabs | `top` \| `right` \| `bottom` \| `left`, please use `tabPlacement` instead | `top` |  |
| ~~destroyInactiveTabPane~~ | Whether destroy inactive TabPane when change tab, use `destroyOnHidden` instead | boolean | false |  |
| destroyOnHidden | Whether destroy inactive TabPane when change tab | boolean | false | 5.25.0 |
| type | Basic style of tabs | `line` \| `card` \| `editable-card` | `line` |  |
| onChange | Callback executed when active tab is changed | (activeKey: string) => void | - |  |
| onEdit | Callback executed when tab is added or removed. Only works while `type="editable-card"` | (action === 'add' ? event : targetKey, action) => void | - |  |
| onTabClick | Callback executed when tab is clicked | (key: string, event: MouseEvent) => void | - |  |
| onTabScroll | Trigger when tab scroll | ({ direction: `left` \| `right` \| `top` \| `bottom` }) => void | - | 4.3.0 |

More option at [@rc-component/tabs](https://github.com/react-component/tabs#tabs)

### TabItemType

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| closeIcon | Customize close icon in TabPane's head. Only works while `type="editable-card"`. 5.7.0: close button will be hidden when setting to `null` or `false` | ReactNode | - |  |
| ~~destroyInactiveTabPane~~ | Whether destroy inactive TabPane when change tab, use `destroyOnHidden` instead | boolean | false | 5.11.0 |
| destroyOnHidden | Whether destroy inactive TabPane when change tab | boolean | false | 5.25.0 |
| disabled | Set TabPane disabled | boolean | false |  |
| forceRender | Forced render of content in tabs, not lazy render after clicking on tabs | boolean | false |  |
| key | TabPane's key | string | - |  |
| label | Tab header text element | ReactNode | - |  |
| icon | Tab header icon element | ReactNode | - | 5.12.0 |
| children | Tab content element | ReactNode | - |  |
| closable | Whether a close (x) button is visible, Only works while `type="editable-card"` | boolean | true |  |

### MoreProps

| Property                                  | Description     | Type      | Default | Version |
| ----------------------------------------- | --------------- | --------- | ------- | ------- |
| icon                                      | The custom icon | ReactNode | -       |         |
| [DropdownProps](/components/dropdown#api) |                 |           |         |         |