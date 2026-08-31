# Ivan Codex Skills

把难以理解的 Agent Skill，整理成别人能够安装、验证和展示的产品。

这个个人仓库只收录可公开复现、与雇主或客户资料隔离的实验。所有公开案例均使用公开资料、虚构数据或仓库自身内容。

## Start Here

### 1. `ivan-youmind-skill-cover` — 让人一眼看懂 Skill 的价值

![YouMind Skill 价值封面](plugins/ivan-skill-pack/skills/ivan-youmind-skill-cover/assets/skill-cover-16x9.png)

把抽象的 Skill 说明转成“谁在什么场景遇到什么问题，输入什么，最终拿走什么”的价值封面。它不会凭空编造能力，也不会使用未公开的公司材料。

安装：

`$skill-installer install https://github.com/flychicken067/ivan-codex-skills/tree/main/plugins/ivan-skill-pack/skills/ivan-youmind-skill-cover`

### 2. `ivan-human-ui` — 去掉网页的 AI 模板感

用具体的视觉约束、可复现评测和可见性检查，改进落地页、工作台与高保真原型。重点不是“做得更炫”，而是让真实用户更快看懂和完成任务。

安装：

`$skill-installer install https://github.com/flychicken067/ivan-codex-skills/tree/main/plugins/ivan-skill-pack/skills/ivan-human-ui`

### 3. 完整发布路径

本仓库本身就是公开案例：Skill 源文件、封面、安装链接、使用边界与版本记录放在同一个可核验的位置。配套的 [Skill 上架工作室](https://ivan-skill-publishing-studio.liufan067.chatgpt.site/) 可以读取公开 GitHub Skill，整理目标用户、输入、输出与发布检查。

## Experimental Skills

以下项目保留为个人研究实验，不代表仓库的核心产品方向：

- `ivan-bazi-architect`：基于用户明确指定的本地 PDF 做带引用和不确定性边界的结构化分析。
- `ivan-sun-study-reversal`：拆解数字、物件与叙事权，再完成明确标注事实与虚构边界的女性第一人称反转写作。

![孙学反转写作封面](plugins/ivan-skill-pack/skills/ivan-sun-study-reversal/assets/skill-cover-16x9-v2.png)

## Example Prompts

- `Use ivan-youmind-skill-cover to show the verified before-and-after value of this Skill.`
- `Use ivan-human-ui to remove the AI-template feel from this page and verify the important interactions.`
- `Use ivan-bazi-architect to produce a cited brief from the local PDF library I explicitly configured.`
- `Use ivan-sun-study-reversal to deconstruct this source and write a clearly labeled fictional reversal.`

## Install the Whole Plugin

1. Clone this repository.
2. Open the repository in Codex.
3. Use the repo-local marketplace entry at `.agents/plugins/marketplace.json` to install `./plugins/ivan-skill-pack`.
4. Restart Codex after installation.

## Repository Layout

- `.agents/plugins/marketplace.json`: repo-local marketplace entry
- `plugins/ivan-skill-pack/.codex-plugin/plugin.json`: plugin manifest
- `plugins/ivan-skill-pack/skills/`: independently installable skills

## Privacy and Evidence Rules

- Do not publish employer, client, account, credential, private document, or internal business data.
- Public examples must be traceable to public sources or clearly marked as fictional.
- A cover is an explanation aid, not proof that a Skill works. The source, runnable instructions, and actual output are the evidence.
- High-impact or public claims require human review.

## License

MIT. Use these skills at your own discretion and review outputs before high-impact use.
