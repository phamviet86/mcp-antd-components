## API


### Image

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| alt | Image description | string | - |  |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - |  |
| fallback | Fallback URL when load fails | string | - |  |
| height | Image height | string \| number | - |  |
| placeholder | Loading placeholder; if true, uses default placeholder | ReactNode | - |  |
| preview | Preview configuration; set to false to disable | boolean \| [PreviewType](#previewtype) | true |  |
| src | Image URL | string | - |  |
| styles | Customize inline style for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), CSSProperties> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| width | Image width | string \| number | - |  |
| onError | Callback when loading error occurs | (event: Event) => void | - |  |

Other Property ref [&lt;img>](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#Attributes)

### PreviewType

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| actionsRender | Custom toolbar render | (originalNode: React.ReactElement, info: ToolbarRenderInfoType) => React.ReactNode | - |  |
| closeIcon | Custom close icon | React.ReactNode | - |  |
| cover | Custom preview mask | React.ReactNode \| [CoverConfig](#coverconfig) | - | CoverConfig support after v6.0 |
| ~~destroyOnClose~~ | Destroy child elements on preview close (removed, no longer supported) | boolean | false |  |
| ~~forceRender~~ | Force render preview image (removed, no longer supported) | boolean | - |  |
| getContainer | Specify container for preview mounting; still full screen; false mounts at current location | string \| HTMLElement \| (() => HTMLElement) \| false | - |  |
| imageRender | Custom preview content | (originalNode: React.ReactElement, info: { transform: [TransformType](#transformtype), image: [ImgInfo](#imginfo) }) => React.ReactNode | - |  |
| mask | preview mask effect | boolean \| { enabled?: boolean, blur?: boolean } | true |  |
| ~~maskClassName~~ | Thumbnail mask class name; please use 'classNames.cover' instead | string | - |  |
| maxScale | Maximum zoom scale | number | 50 |  |
| minScale | Minimum zoom scale | number | 1 |  |
| movable | Whether it is movable | boolean | true |  |
| open | Whether to display preview | boolean | - |  |
| rootClassName | Root DOM class name for preview; applies to both image and preview wrapper | string | - |  |
| scaleStep | Each step's zoom multiplier is 1 + scaleStep | number | 0.5 |  |
| src | Custom preview src | string | - |  |
| styles | Custom semantic structure styles | Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| ~~toolbarRender~~ | Custom toolbar; please use 'actionsRender' instead | (originalNode: React.ReactElement, info: Omit<ToolbarRenderInfoType, 'current' \| 'total'>) => React.ReactNode | - |  |
| ~~visible~~ | Whether to show; please use 'open' instead | boolean | - |  |
| onOpenChange | Callback when preview open state changes | (visible: boolean) => void | - |  |
| onTransform | Callback for preview transform changes | { transform: [TransformType](#transformtype), action: [TransformAction](#transformaction) } | - |  |
| ~~onVisibleChange~~ | Callback when 'visible' changes; please use 'onOpenChange' instead | (visible: boolean, prevVisible: boolean) => void | - |  |

### PreviewGroup

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| classNames | Customize class for each semantic structure inside the component. Supports object or function. | Record<[SemanticDOM](#semantic-dom), string> \| (info: { props })=> Record<[SemanticDOM](#semantic-dom), string> | - |  |
| fallback | Fallback URL for load error | string | - |  |
| items | Array of preview items | string[] \| { src: string, crossOrigin: string, ... }[] | - |  |
| preview | Preview configuration; disable by setting to false | boolean \| [PreviewGroupType](#previewgrouptype) | true |  |

### PreviewGroupType

| Property | Description | Type | Default | Version |
| --- | --- | --- | --- | --- |
| actionsRender | Custom toolbar render | (originalNode: React.ReactElement, info: ToolbarRenderInfoType) => React.ReactNode | - |  |
| closeIcon | Custom close icon | React.ReactNode | - |  |
| countRender | Custom preview count render | (current: number, total: number) => React.ReactNode | - |  |
| current | Index of the current preview image | number | - |  |
| ~~forceRender~~ | Force render preview image (removed, no longer supported) | boolean | - |  |
| getContainer | Specify container for preview mounting; still full screen; false mounts at current location | string \| HTMLElement \| (() => HTMLElement) \| false | - |  |
| imageRender | Custom preview content | (originalNode: React.ReactElement, info: { transform: [TransformType](#transformtype), image: [ImgInfo](#imginfo), current: number }) => React.ReactNode | - |  |
| mask | preview mask effect | boolean \| { enabled?: boolean, blur?: boolean } | true |  |
| ~~maskClassName~~ | Thumbnail mask class name; please use 'classNames.cover' instead | string | - |  |
| minScale | Minimum zoom scale | number | 1 |  |
| maxScale | Maximum zoom scale | number | 50 |  |
| movable | Whether movable | boolean | true |  |
| open | Whether to display preview | boolean | - |  |
| ~~rootClassName~~ | Root DOM class name for preview; applies to both image and preview wrapper. Use 'classNames.root' instead | string | - |  |
| styles | Custom semantic structure styles | Record<[SemanticDOM](#semantic-dom), CSSProperties> | - |  |
| scaleStep | Each step's zoom multiplier is 1 + scaleStep | number | 0.5 |  |
| ~~toolbarRender~~ | Custom toolbar; please use 'actionsRender' instead | (originalNode: React.ReactElement, info: ToolbarRenderInfoType) => React.ReactNode | - |  |
| ~~visible~~ | Whether to show; please use 'open' instead | boolean | - |  |
| onOpenChange | Callback when preview open state changes, includes current preview index | (visible: boolean, info: { current: number }) => void | - |  |
| onChange | Callback when changing preview image | (current: number, prevCurrent: number) => void | - |  |
| onTransform | Callback for preview transform changes | { transform: [TransformType](#transformtype), action: [TransformAction](#transformaction) } | - |  |
| ~~onVisibleChange~~ | Callback when 'visible' changes; please use 'onOpenChange' instead | (visible: boolean, prevVisible: boolean, current: number) => void | - |  |