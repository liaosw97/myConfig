## 配置

```
在 ~/.config 目录下拉去代码
    https://github.com/liaosw97/myConfig.git
```

-   WindowsPowerShell

    powershell 5 在 用户配置文件中引用路径

    ```
    C:\Users\Dell\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 中添加
        . "~/.config/myConfig/windows/Microsoft.PowerShell_profile.ps1"
    ```

    powershell 7 配置如下

    ```
    C:\Users\Dell\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 中添加
       . "~/.config/myConfig/windows/Microsoft.PowerShell_profile.ps1"
    ```

-   bash

    在 ~.bash_profile 中添加

    ```
    source ~/.config/myConfig/bash/win.bash_profile


    ```
   
-   gitconfig

    在 ~.gitconfig 中添加

    ```
    [include]
    path = ~/.config/myConfig/gitConfig/.gitconfig``
    ```
