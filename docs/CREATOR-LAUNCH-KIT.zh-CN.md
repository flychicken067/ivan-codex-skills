这不是“四个平台写四套提示词”。两个 Skill 共用同一份 `SKILL.md` 内核，只为不同运行环境提供正确入口。

## 两个产品

### Ivan Human UI

**一句话：** 把“看起来像 AI 模板”的页面，改成有明确层级、真实素材和可验证交互的产品界面。

**适合：** Claude Code、Codex 或 WorkBuddy 中制作网页、高保真原型、落地页和工作台的创作者。

**试用任务：**

> 检查这个页面为什么像 AI 模板。先指出三个最影响理解的问题，再用 Ivan Human UI 修改；保留原有产品结构，最后列出改动和可见性验证结果。

**可核验结果：** 代码差异、修改前后理由、素材可见性检查和评分，而不是一句“已经优化”。

### Skill Value Cover

**一句话：** 把抽象 Skill 变成一张有人物、真实输入和具体输出的价值封面。

**适合：** 在 Claude、Codex、WorkBuddy、YouMind 或飞书中发布 Skill 的创作者。

**试用任务：**

> 用 Skill Value Cover 解释这个 SKILL.md。不要画流程 PPT；用同一个人物表现使用前的真实输入和使用后能拿走的结果。没有证据的能力必须标成占位。

**可核验结果：** 16:9 封面、标题、价值主张、输入/输出含义和待确认信息。

## 安装入口

### Claude Code

```text
/plugin marketplace add flychicken067/ivan-codex-skills
/plugin install ivan-human-ui@ivan-creator-tools
/plugin install ivan-skill-value-cover@ivan-creator-tools
```

Claude.ai 用户可下载 GitHub Release 中对应的 ZIP，在 **Customize → Skills** 上传。团队和企业管理员也可以将同一技能包配置为组织级 Skill。

### OpenAI Codex

在 Codex 中调用 `$skill-installer`，分别安装：

```text
https://github.com/flychicken067/ivan-codex-skills/tree/main/plugins/ivan-skill-pack/skills/ivan-human-ui
https://github.com/flychicken067/ivan-codex-skills/tree/main/plugins/ivan-skill-pack/skills/ivan-youmind-skill-cover
```

安装后新开一个会话，用 `$ivan-human-ui` 或 `$ivan-youmind-skill-cover` 明确触发第一次测试。

### WorkBuddy

下载 GitHub Release 中对应的 ZIP，通过 **Skills → 导入本地技能包** 安装。第一次只用脱敏样本测试，并核对来源、权限、输入输出、版本和已知问题；通过后再用于真实任务。

### 飞书

飞书在这里承担“中文发现与协作入口”，不是伪装成 Skill 运行时：

1. 在飞书文档中展示一句话价值、前后对比图、GitHub 源码和安装入口。
2. 用评论收集“安装平台、输入样本、实际输出、失败位置”。
3. 将真实问题回写 GitHub Issue，修复后用同一脱敏样本回归。

## 推广文案

### 30 字版

我做了两个可安装的 Agent Skills：一个去掉 AI 页面模板感，一个把抽象 Skill 讲成看得懂的前后价值。

### 社群版

很多 Agent Skill 不是能力差，而是别人看不懂、装不上、也不知道怎么验收。我把自己反复使用的两个方法整理成开放 Skill：`Ivan Human UI` 用具体约束和检查改掉 AI 模板感；`Skill Value Cover` 用人物、输入和交付物解释能力，不编造销量和案例。Claude、Codex、WorkBuddy 都有对应安装入口，飞书用于中文说明和反馈。欢迎拿脱敏样本试跑，失败也请直接提 Issue。

### 面向 Skill 创作者

如果你已经写好 `SKILL.md`，但市场页仍像一份说明书：先用 Skill Value Cover 做“输入 → 结果”的价值证据，再用 Ivan Human UI 检查详情页是不是堆卡片、假截图和空泛大标题。两个 Skill 都公开源码、可单独安装、没有付费墙。

## 真实证据规则

- 不把封面当作运行成功的证据。
- 不写未经核验的用户数、节省时间、评分或商业结果。
- 每个平台至少保留一次真实安装、一次脱敏样本运行和一个可定位输出。
- 失败记录与成功案例同样公开到 Issues；版本更新后使用同一输入回归。

## 30 天推广节奏

1. **第 1 周：安装证据。** 邀请 Claude、Codex、WorkBuddy 各 1 位创作者完成安装，记录截图和失败点。
2. **第 2 周：结果证据。** 每个 Skill 发布 2 个公开或虚构案例，展示输入、执行和输出，不只发封面。
3. **第 3 周：创作者协作。** 邀请 3 位 Skill 作者用 Value Cover 改自己的详情页，形成前后对比。
4. **第 4 周：维护证据。** 汇总 Issues、修复记录和回归结果，再决定是否申请 Claude 官方市场或 WorkBuddy SkillHub。

北极星指标不是浏览量，而是：**完成真实安装并提交可定位反馈的外部创作者数。**
