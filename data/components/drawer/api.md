## API


<!-- prettier-ignore -->
:::warning{title=Note}
v5 uses `rootClassName` & `rootStyle` to configure the outermost element style, instead of `className` & `style` from v4. This is done to align the API with Modal.
:::

| Props | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| afterOpenChange | Callback after the animation ends when switching drawers | function(open) | - |  |
| className | Config Drawer Panel className. Use `rootClassName` if want to config top DOM style | string | - |  |
| classNames | Customize class for each semantic structure inside the Drawer component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - |  |
| closable | Whether to show a close button. The position can be configured with `placement` | boolean \| { closeIcon?: React.ReactNode; disabled?: boolean; placement?: 'start' \| 'end' } | true | placement: 5.28.0 |
| ~~destroyOnClose~~ | Whether to unmount child components on closing drawer or not | boolean | false |  |
| destroyOnHidden | Whether to unmount child components on closing drawer or not | boolean | false | 5.25.0 |
| extra | Extra actions area at corner | ReactNode | - | 4.17.0 |
| footer | The footer for Drawer | ReactNode | - |  |
| forceRender | Pre-render Drawer component forcibly | boolean | false |  |
| getContainer | mounted node and display window for Drawer | HTMLElement \| () => HTMLElement \| Selectors \| false | body |  |
| headerStyle | Style of the drawer header part | CSSProperties | - |  |
| ~~height~~ | Placement is `top` or `bottom`, height of the Drawer dialog, please use `size` instead | string \| number | 378 |  |
| keyboard | Whether support press esc to close | boolean | true |  |
| mask | Mask effect | boolean \| `{ enabled?: boolean, blur?: boolean }` | true |  |
| maskClosable | Clicking on the mask (area outside the Drawer) to close the Drawer or not | boolean | true |  |
| placement | The placement of the Drawer | `top` \| `right` \| `bottom` \| `left` | `right` |  |
| push | Nested drawers push behavior | boolean \| { distance: string \| number } | { distance: 180 } | 4.5.0+ |
| resizable | Enable resizable by dragging | boolean \| [ResizableConfig](#resizableconfig) | - | boolean: 6.1.0 |
| rootStyle | Style of wrapper element which **contains mask** compare to `style` | CSSProperties | - |  |
| style | Style of Drawer panel. Use `styles.body` if want to config body only | CSSProperties | - |  |
| styles | Customize inline style for each semantic structure inside the Drawer component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| size | preset size of drawer, default `378px` and large `736px`, or a custom number | 'default' \| 'large' \| number | 'default' | 4.17.0 |
| title | The title for Drawer | ReactNode | - |  |
| loading | Show the Skeleton | boolean | false | 5.17.0 |
| open | Whether the Drawer dialog is visible or not | boolean | false |  |
| ~~width~~ | Width of the Drawer dialog, please use `size` instead | string \| number | 378 |  |
| zIndex | The `z-index` of the Drawer | number | 1000 |  |
| onClose | Specify a callback that will be called when a user clicks mask, close button or Cancel button | function(e) | - |  |
| drawerRender | Custom drawer content render | (node: ReactNode) => ReactNode | - | 5.18.0 |

### ResizableConfig

| Props         | Description                 | Type                   | Default | Version |
| ------------- | --------------------------- | ---------------------- | ------- | ------- |
| onResizeStart | Callback when resize starts | () => void             | -       | 6.0.0   |
| onResize      | Callback during resizing    | (size: number) => void | -       | 6.0.0   |
| onResizeEnd   | Callback when resize ends   | () => void             | -       | 6.0.0   |