# 🎭 SillyTavern On Hugging Face Spaces

<p align="center">
  <img src="https://img.shields.io/badge/Hugging%20Face-Spaces-yellow?style=for-the-badge&logo=huggingface" alt="Hugging Face">
  <img src="https://img.shields.io/badge/SillyTavern-Cloud%20Deploy-blue?style=for-the-badge&logo=renpy" alt="SillyTavern">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
</p>

---

## 📖 简介 (Introduction)

这是一个专为想要体验云端酒馆的前辈编写的保姆级教程。

本教程将教您如何使用 **Hugging Face Spaces** 提供的免费 Worker 算力，部署属于您自己的 **SillyTavern（酒馆）**。无需本地高级配置，随时随地通过浏览器畅玩。

> [!NOTE]
> 本教程及相关配置文件仅提供部署教程，仅保证可使用不保证稳定性与风险问题。

---

## 🛡️ 免责声明 (Disclaimer)

> [!WARNING]
> **请在继续浏览或使用本仓库内容前仔细阅读以下条款。**

<details>
<summary><b>💬 点击展开/折叠 叠甲声明条款 (Click to expand)</b></summary>
<br />

1. **用途限定**：本仓库所涉及的一切技术、代码及相关工具，**仅供个人学习、技术研究与交流使用**。严禁将本仓库内容用于任何商业用途、非法获利，或任何违反所在国家/地区法律法规的活动。
2. **免责担保**：本软件/教程按“原样”提供，不包含任何形式的明示或暗示担保。在任何情况下，作者均不对因使用本仓库代码而引起的任何索赔、损害或其他责任（包括但不限于数据丢失、平台封号、法律纠纷等）承担责任。
3. **平台合规**：请严格遵守 Hugging Face 的社区服务条款。若因滥用免费算力导致账号被封禁，一切后果由**使用者自行承担**。
4. **许可与授权**：本项目基于 **MIT 许可证** 开源。这意味着您可以自由地使用、修改和分发代码，但必须在所有副本中包含原始的版权声明和许可声明。

</details>

---

## 🚀 部署指南 (Deployment Guide)

### 🛠️ 前期准备
1. 拥有一个 [Hugging Face](https://huggingface.co/) 账号（需完成基础的邮箱验证）。
2. 下载仓库中的**Dockerfile**文件于本地。
3. 本地创建一个**READER.md**文件，并将下方代码复制到其中保存

```yaml
---
title: 标题     # 修改为你在 hugging face 创建实例的名字
emoji: 🎭
colorFrom: purple
colorTo: indigo
sdk: docker
app_port: 7860
storage_spaces:
  - /app/data
---
```

### 📅 详细部署步骤
1.访问[Hugging Face](https://huggingface.co/spaces)并点击**New Space**。
<img width="2736" height="1543" alt="image" src="https://github.com/user-attachments/assets/612c7849-ece7-4a13-8cb5-d708ad79c13f" />

2.**Space name**填写你喜欢的，**填写完后在README.md文件中标题部分同步修改**，**Short description**填描述（可随便），**License**选Mit。
<img width="1448" height="992" alt="image" src="https://github.com/user-attachments/assets/3a251d4c-67d4-4074-9d73-b39151ccd8de" />

3.**Select the Space SDK**:选择**Docker**，**Choose a Docker template**选择**blank**。
<img width="1172" height="1190" alt="image" src="https://github.com/user-attachments/assets/61eb924d-6be3-4c51-83b5-558ec3aff6e2" />

4.开启**Storage Bucket**，其余内容默认不用管
<img width="1158" height="888" alt="image" src="https://github.com/user-attachments/assets/006bb43f-7f80-4f11-8374-56dace371183" />

5.滑到最下方点击**Create Space**
6.创建好后进入Space空间

---

## ⚙️ 常见问题 (FAQ)

> [!TIP]
> **Q: 空间休眠了怎么办？**
> A: 免费的 Space 在长时间无连接后会自动进入休眠状态，只需重新访问该页面触发唤醒即可，数据通常已做持久化保存。

---
