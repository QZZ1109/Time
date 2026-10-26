# 鸿蒙抽卡收集应用 Demo

## 📱 项目简介
这是一个基于 HarmonyOS (ArkTS/ArkUI) 开发的卡牌抽取与收集演示应用。用户点击“立即抽卡”按钮，即可随机抽取卡牌，并展示抽取结果。

## 🛠 技术栈
*   **开发语言**：ArkTS
*   **UI框架**：ArkUI (声明式开发)
*   **核心逻辑**：
    *   使用 `Grid` / `Row` / `Column` 实现卡牌网格布局。
    *   使用 `@State` 管理抽卡状态、结果展示状态以及右上角的红点提示。
    *   使用 `Stack` 或条件渲染实现抽卡结果的半透明遮罩展示。
    *   使用 `Image` 组件加载本地图片资源。

## ✨ 功能展示
1.  **卡牌陈列**：以网格形式展示已拥有的卡牌。
2.  **抽卡交互**：点击按钮，随机抽取卡牌并展示“获得卡片”界面。
3.  **状态更新**：抽取新卡后，界面能实时更新（右上角的红点提示）。

## 📸 项目截图
![抽卡界面](https://raw.githubusercontent.com/QZZ1109/Time/main/1.png.png)
![获得卡片](https://raw.githubusercontent.com/QZZ1109/Time/main/2.png.png)
![状态更新](https://raw.githubusercontent.com/QZZ1109/Time/main/3.png.png)

## 🚀 如何运行
1. 克隆本仓库代码到本地。
2. 使用 DevEco Studio 打开项目并等待 Sync 完成。
3. 启动鸿蒙模拟器或真机运行即可。
