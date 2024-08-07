---
title: "核形成入門"
date: 2024-07-13T13:34:50+09:00
description:
draft: false
categories: [""]
tags: [""]
keywords:
cascade:
  type: docs
weight: 3
math: true
prev: crystal
---

液体は融点$T_m$で一次相転移を起こす。
低温では液体よりも低い自由エネルギー密度となる結晶が安定な状態である。
過冷却液体を形成するには、したがって結晶化を避けながら液体の温度を$T_m$よりも下げる必要がある。
つまり、過冷却液体は準安定相なのだ。
結晶化を避ける方法を知るためには、その前に過冷却液体の中で結晶がどのように形成されるかを学ぶ必要がある。
これが結晶化理論の狙いだ\[[19](https://ar5iv.labs.arxiv.org/html/0903.4264#bib.bib19), [20](https://ar5iv.labs.arxiv.org/html/0903.4264#bib.bib20)\]。
このノートでは、均質な核形成、つまり試料のバルク(中央部分の性質)中での熱揺らぎによってのみ起きる核形成についてのみ解説する。
実際には、結晶形成は不純物や境界上の性質によって助けられる事が多く、このような場合は不均質な核形成として知られている。
このことを考慮から外す前に、不均質な核形成は準安定状態にある試料の寿命は純粋に均一な核形成から予想される寿命からさらに短くなる可能性があることを注意しておく。
