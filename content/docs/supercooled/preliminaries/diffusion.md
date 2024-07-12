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

## 拡散係数と摩擦係数

次に、拡散係数を摩擦係数と関連付けよう。
これは質量 $m$ の粒子に対する Langevin 方程式を通して実現できる。

$$
m\dot{v}(t)=-\zeta v(t) + \eta(t)\tag{19}
$$

ここで、$\zeta$は摩擦係数であり、ノイズ項$\eta(t)$は時間に対するデルタ関数で表現される。式(19)は 1 階非斉次常微分方程式なので簡単に解くことができる。

$$
v(t)=e^{-\zeta t/m}v(0)+\int_0^tdt^\prime e^{-\zeta(t-t^\prime)/m} \eta(t^\prime)/m \tag{20}
$$

長時間極限の平均運動エネルギー$1/2m\langle v^2 \rangle$を数値計算し、エネルギー等分配則を用いることで、ノイズ項の振幅と温度の間に以下の関係があることがわかる。

$$
\langle \eta(t)\eta(t^\prime)\rangle=2\zeta k_BT\delta(t-t^\prime) \tag{21}
$$

これは揺動散逸定理として知られている。
この結果が主張するのは、ノイズ項$\eta$の起源と摩擦$\zeta$の起源は温度$T$の下で同じだ、ということだ\[[16](https://ar5iv.labs.arxiv.org/html/0903.4264#bib.bib16)\]。
式(20, 21)を用いて、式(18)の右辺を計算できる。

$$
D=\frac{k_BT}{\zeta} \tag{22}
$$

これは拡散係数についての Einstein 関係式と呼ばれている。
最後に、Stokes 方程式によって、粘性$\eta$と拡散係数$\zeta$を関連付けよう(導出はこちら\[[17](https://ar5iv.labs.arxiv.org/html/0903.4264#bib.bib17)\])。

$$
\zeta = Ca\eta \tag{23}
$$

ここで、$C$は流体と球面との境界条件によって定まる定数である。
最後の 2 つの等式を用いて拡散係数と摩擦の間にある Stokes-Einstein 関係式を得る\[[18](https://ar5iv.labs.arxiv.org/html/0903.4264#bib.bib18)\]。

$$
D\eta=\frac{k_BT}{Ca} \tag{24}
$$

厳密には、この関係が成立するのは拡散する粒子径が流体の分子よりも遥かに大きい場合だが、実際には同じ大きさの他の分子に囲まれた分子の自己拡散係数$D$を記述する際にも驚くほど正確に振る舞う。
しかし、Stokes-Einstein 関係式が破れる場合もある。
それは、拡散係数が有限の値であるにもかかわらず、粘性が超流動のヘリウムのように 0 であったり、弾性結晶のように無限大になったりする場合である。
後述するように、似たような状況がガラス転移点に近い過冷却液体でも生じる。
このとき、拡散係数$D$が$T/\eta$よりも緩やかに減少して$D\eta/T$がもはや定数ではなくなってしまうのだ。
