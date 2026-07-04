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
> 本教程及相关配置文件仅提供部署教程，仅保证可使用不保证稳定性与风险问题，也同时不保证酒馆内数据是否会丢失，建议每聊天1小时或者每次下线时导出聊天文件备份。

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
3. 本地创建一个**READER.md**文件，修改title与storage_spaces位置，根据中文提示修改即可。

```Markdown
---

title: 实例名字
emoji: 🎭
colorFrom: purple
colorTo: indigo
sdk: docker
app_port: 7860
storage_spaces:
  - 用户名/实例名字-storage-Private:/data

---
```

4.新改进(26.07.04):移除了Dockerfile明文账号密码，改为了跟本地部署酒馆一样于config.yaml中修改，可以在实例部署完成后(running状态),打开挂载桶———找到已经生成的
config.yaml删除然后上传本仓库中已经修改好的config.yaml文件，上传后打开编辑并修改账号密码，保存后重启实例即可。


### 📅 详细部署步骤
1.访问[Hugging Face](https://huggingface.co/spaces)并点击**New Space**。
<img width="2736" height="1543" alt="image" src="https://github.com/user-attachments/assets/612c7849-ece7-4a13-8cb5-d708ad79c13f" />

2.**Space name**填写你喜欢的，**填写完后在README.md文件中标题部分同步修改**，**Short description**填描述（可随便），**License**选Mit。
<img width="1448" height="992" alt="image" src="https://github.com/user-attachments/assets/3a251d4c-67d4-4074-9d73-b39151ccd8de" />

3.**Select the Space SDK**:选择**Docker**，**Choose a Docker template**选择**blank**。
<img width="1172" height="1190" alt="image" src="https://github.com/user-attachments/assets/61eb924d-6be3-4c51-83b5-558ec3aff6e2" />

4.开启**Storage Bucket**，在**Bucket visibility**选择Private确保数据只有你一个人可以看见，然后滑到最下方点击**Create Space**。
<img width="1155" height="1012" alt="image" src="https://github.com/user-attachments/assets/fe6fe523-d96f-43e7-8cfc-c9316d0bd724" />

5.创建好后进入Space空间，点击右上角Files，进入后点击原有README.md并删除原有README.md。
<img width="2736" height="1543" alt="image" src="https://github.com/user-attachments/assets/e8f0a61f-f04e-477d-a7c6-c23f4dce014c" />

6.点击右上角Contribute，点击Upload files，上传**本仓库中的Dockerfile与本地创建的README.md文件**至Files中。
<img width="2736" height="1543" alt="image" src="https://github.com/user-attachments/assets/761094f8-e622-4235-8026-881df7ed625a" />

7.返回App页面，等待其部署完成，一般15秒左右就部署完成了。
<img width="2736" height="1543" alt="image" src="https://github.com/user-attachments/assets/b009a570-c243-430b-a845-80f87d53d18a" />

8.部署完成后点击

<img width="585" height="468" alt="image" src="https://github.com/user-attachments/assets/223aadba-f7ab-4848-bb37-39644cc47dcd" />

---

## ⚙️ 常见问题 (FAQ)
> [!TIP]
> **Q.** 为什么无法连接到用户密码提示框上的链接地址?
> **A.** 挂梯子，默认直连可能会被墙掉。
>  
> **Q.** 为什么访问酒馆初始化这么久？
> **A.** 初始化慢是正常的。
> 
> **Q.** 我下线后重新访问怎么只提示一个抱抱脸啊？
> **A.** 实例被封掉了，抱抱脸使用规则中有一条是免费worker实例如果悠异常api流量会被检测并封掉，这种时候直接删掉这个实例重新开一个就行了。
>
> Q.api连接连不上怎么办？
> A.由于其为AWS ip容易被ban，使用我建议有动手能力的可以将其流量代理为Cloudflare的。

---
