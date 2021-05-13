# QuickActionSumple
Info.plistのsource codeに以下のように追加  
UIApplicationShortcutItemTitleがメニューのタイトル  
UIApplicationShortcutItemTypeがハンドリングのためのshortcutItem.typeになる  
上記2つをSceneDelegateでハンドリングし、表示分けする。  
またタスクキル状態からのクイックアクションと  
バックグラウンド状態からのクイックアクションでは発火するSceneDelegate関数は違う  

```Swift
<key>UIApplicationShortcutItems</key>  
    <array>  
        <dict>  
            <key>UIApplicationShortcutItemType</key>  
            <string>shortcutItem.type(ショートカットアイテムタイプ1)</string>  
            <key>UIApplicationShortcutItemIconType</key>  
            <string>UIApplicationShortcutIconTypeSearch</string>  
            <key>UIApplicationShortcutItemTitle</key>  
            <string>表示タイトル1</string>  
            <key>UIApplicationShortcutItemSubtitle</key>  
            <string>Search for an item</string>  
        </dict>  
        <dict>  
            <key>UIApplicationShortcutItemType</key>  
            <string>shortcutItem.type(ショートカットアイテムタイプ2)</string>  
            <key>UIApplicationShortcutItemIconType</key>  
            <string>UIApplicationShortcutIconTypeShare</string>  
            <key>UIApplicationShortcutItemTitle</key>  
            <string>表示タイトル2</string>  
            <key>UIApplicationShortcutItemSubtitle</key>  
            <string>Share an item</string>  
        </dict>  
    </array>  
```
