## API


### Breadcrumb

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - |  |
| itemRender | Custom item renderer | (route, params, routes, paths) => ReactNode | - |  |
| params | Routing parameters | object | - |  |
| items | The routing stack information of router | [ItemType\[\]](#itemtype) | - | 5.3.0 |
| separator | Custom separator | ReactNode | `/` |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |

### ItemType

> type ItemType = Omit<[RouteItemType](#routeitemtype), 'title' | 'path'> | [SeparatorType](#separatortype)

### RouteItemType

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| className | The additional css class | string | - |  |
| dropdownProps | The dropdown props | [Dropdown](/components/dropdown) | - |  |
| href | Target of hyperlink. Can not work with `path` | string | - |  |
| path | Connected path. Each path will connect with prev one. Can not work with `href` | string | - |  |
| menu | The menu props | [MenuProps](/components/menu/#api) | - | 4.24.0 |
| onClick | Set the handler to handle click event | (e:MouseEvent) => void | - |  |
| title | item name | ReactNode | - |  |

### SeparatorType

```ts
const item = {
  type: 'separator', // Must have
  separator: '/',
};
```

| Property  | Description       | Type        | Default | Version |
| --------- | ----------------- | ----------- | ------- | ------- |
| type      | Mark as separator | `separator` |         | 5.3.0   |
| separator | Custom separator  | ReactNode   | `/`     | 5.3.0   |

### Use with browserHistory

The link of Breadcrumb item targets `#` by default, you can use `itemRender` to make a `browserHistory` Link.

```jsx
import { Link } from 'react-router';

const items = [
  {
    path: '/index',
    title: 'home',
  },
  {
    path: '/first',
    title: 'first',
    children: [
      {
        path: '/general',
        title: 'General',
      },
      {
        path: '/layout',
        title: 'Layout',
      },
      {
        path: '/navigation',
        title: 'Navigation',
      },
    ],
  },
  {
    path: '/second',
    title: 'second',
  },
];

function itemRender(currentRoute, params, items, paths) {
  const isLast = currentRoute?.path === items[items.length - 1]?.path;

  return isLast ? (
    <span>{currentRoute.title}</span>
  ) : (
    <Link to={`/${paths.join('/')}`}>{currentRoute.title}</Link>
  );
}

return <Breadcrumb itemRender={itemRender} items={items} />;
```