# Base Pulse Vote

这个仓库不讲虚的。它对应一个已经部署的 Base 小应用，方向是：quick community signals。用户要做的事也很短：连接钱包，casting a fast opinion，拿到一个 vote mark。

## 公开证明

不用邮箱来证明。看下面这些就够了：

| Field | Value |
| --- | --- |
| Base Developer Dashboard | Registered |
| Build ID / Base App ID | `69ff2f939ee68cd142d1af3f` |
| Builder Wallet | `0x02F63695CAD146C5EE867bFfa25450dD713AEef3` |
| Builder Code | `bc_ogwgk5y4` |
| Live Demo | https://base-pulse-vote.vercel.app |
| GitHub Repository | https://github.com/paralyzed0002/base-pulse-vote-base-dapp |
| Network | Base |
| Deployment | Vercel |

## 本地跑

```bash
npm install
npm run dev
```

技术栈：TypeScript frontend, Base wallet flow, public proof metadata。

敏感信息不要进 Git：Do not commit `.env`, private keys, seed phrases, RPC keys, GitHub tokens, or Vercel tokens. Use `.env.example` only for placeholders.

MIT。
