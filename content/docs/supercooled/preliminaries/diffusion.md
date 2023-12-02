---
title: "拡散係数と Stokes-Einstein 則"
date: 2023-12-02T20:24:27+09:00
description:
draft: false
categories: [""]
tags: [""]
keywords:
cascade:
  type: docs
weight: 2
math: true
prev: shear_viscosity
---

## 拡散係数と速度-速度相関

粘性液体の物理学における最後の鍵は、拡散係数$D$である。
液体中で漂う着目する粒子群の濃度$\rho(x, t)$の(簡単のため 1 次元の)拡散方程式を考えてみよう。

$$
\dot\rho(x, t)=D\frac{\partial^2\rho}{\partial x^2}\tag{13}
$$

$D$は拡散係数である。
粒子の平均二乗変位$\langle x^2\rangle$の時間微分を数値計算してみると以下の式になることがわかる。

$$
\frac{d}{dt}\langle x^2\rangle=\frac{d}{dt}\int dx\ x^2\rho(x, t) = 2D\tag{14}
$$

ここから平均二乗変位と拡散係数の関係が導かれ、

$$
\langle x^2\rangle=2Dt\tag{15}
$$

式(14)の左辺は速度$v(t)$を直接用いて計算できる。

$$
\langle x^2(t)\rangle=\int_0^tds\int_0^tdu\ \langle v(s)v(u)\rangle\tag{16}
$$

から、次の式を得る。

$$
\frac{d}{dt}\langle x^2\rangle=2\int_0^tds\ \langle v(s)v(0)\rangle\tag{17}
$$

ここで、時間並進対称性を用いた。
したがって、式(14)、式(17)から、長時間極限にて拡散係数と速度-速度相関関数の間に関係があることがわかり、次の式を得る。
これはどの次元でも有効である。

$$
D=\int_0^tds\ \langle v(s)v(0)\rangle\tag{18}
$$
