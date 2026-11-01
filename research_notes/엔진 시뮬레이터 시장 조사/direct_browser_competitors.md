# Direct Browser/Mobile Competitors: Combustion Lab, Groundcode Engine Simulator, RevLab (build-your-engine) and Similar Tools

Research date: 2026-11-01. Method note: WebFetch could not resolve hn.algolia.com or build-your-engine.vercel.app (ENOTFOUND, blocked by this environment's network policy), so after those two failures no further pages were fetched. **Everything below is from WebSearch result snippets and summaries ("(snippet)")**, not full-page reads, unless noted otherwise. Product sites' claims about themselves are vendor claims, not independent checks.

## 1. Combustion Lab (combustionlab.net): platform, price, customization, sound, reception

### Takeaway
Combustion Lab is a free, no-login browser tool. It runs a single-zone (0-D) thermodynamic model and lists "synthesized engine sound" among its features. Its exposed parameters cover combustion and breathing (bore, stroke, con-rod, compression, cam duration, boost, spark timing), not layout geometry (bank angle, crank pins, firing order), and nothing found says how its sound is made. The brief's "~235 HN points" figure could not be confirmed: the only HN thread found was listed at **18 points**.

### Cited Findings
- **Positioning:** Its page title is "COMBUSTION LAB — Interactive Engine Dynamics Simulator" and the homepage calls it "an open educational engine-dynamics tool" (snippet) — [combustionlab.net](https://combustionlab.net/)
- **Model:** "Single-zone thermodynamic model: Wiebe heat release · Woschni heat transfer · Chen–Flynn friction · Livengood–Wu knock" (snippet) — [combustionlab.net](https://combustionlab.net/)
- **Feature tagline:** "Build an engine, watch it run, read the thermodynamics — dyno curves, P–V diagrams, knock prediction and synthesized engine sound, in your browser" (snippet). The site therefore claims real-time sound of some kind, but no snippet says how it is synthesized (thermodynamic pressure-driven, firing-pulse, or samples) — [combustionlab.net](https://combustionlab.net/)
- **Build sheet parameters:** bore, stroke, con-rod, compression and cam duration (snippet, as paraphrased by the search tool) — [combustionlab.net](https://combustionlab.net/)
- **Runtime controls:** boost, spark timing and compression ratio, with power, torque and knock risk updating as they change (snippet, Chinese-language write-up) — [zeli.app (zh)](https://zeli.app/zh/story/48795900)
- **Outputs:** P–V diagrams, dyno curves, IMEP/BMEP/BSFC/VE metrics and a knock indicator, computed at 0.5° crank-angle steps (snippet) — [daily.dev](https://daily.dev/posts/combustion-lab-interactive-engine-dynamics-simulator-lygb706c1)
- **Version header:** "CRANK-ANGLE-RESOLVED ENGINE DYNAMICS · v2.0" (snippet) — [youngju.dev blog (en)](https://www.youngju.dev/blog/2026-07-11-web-combustion-engine-simulator.en)
- **Access and price:** You assemble and run an engine in one browser tab with no install and no login (snippet). No snippet mentioned ads or a paid tier — [youngju.dev blog](https://www.youngju.dev/blog/2026-07-11-web-combustion-engine-simulator)
- **Self-described limits:** "a zero-dimensional teaching and concept aid — not a replacement for 1-D/3-D CFD or physical testing" (snippet) — [daily.dev](https://daily.dev/posts/combustion-lab-interactive-engine-dynamics-simulator-lygb706c1). The youngju.dev analysis also calls it a trend tool rather than a precise predictor, because a single-zone model ignores spatial effects (snippet) — [youngju.dev blog (en)](https://www.youngju.dev/blog/2026-07-11-web-combustion-engine-simulator.en)
- **youngju.dev post (2026-07-11, Korean):** Titled "브라우저 탭에서 엔진을 조립해 돌려보기 — Combustion Lab 뜯어보기" (roughly "Assembling and running an engine in a browser tab: taking Combustion Lab apart"). It opens with "Combustion Lab(combustionlab.net)이 최근 해커뉴스에 올라와 돌고 있다" ("Combustion Lab was recently posted on Hacker News and is circulating"), and covers the four strokes as P–V curves and dyno graphs (snippet) — [youngju.dev](https://www.youngju.dev/blog/2026-07-11-web-combustion-engine-simulator)
- **HN thread:** item 48795900, "Combustion engine web-based simulator", listed by an aggregator at **18 points** and dated July 5, 2026 (snippet) — [news.ycombinator.com/item?id=48795900](https://news.ycombinator.com/item?id=48795900); [zeli.app](https://zeli.app/story/48795900)
- **HN comments (partial, snippet):** One commenter pointed people to Ange Yaghi's engine-sim and his YouTube channel, explaining that Ange's sim "works by approximating physics of air fluid dynamics through a combustion chamber and exhaust, sound propagation, etc." Others linked the engine-sim GitHub repo and a personal fork. One referenced the archive having once been taken down. The snippets show no direct praise or criticism of Combustion Lab itself — [HN 48795900](https://news.ycombinator.com/item?id=48795900)

### Inferences
- The HN comments that surfaced compared Combustion Lab to Ange Yaghi's engine-sim mainly on *sound*. This suggests the HN audience saw Combustion Lab's strength as thermodynamics and dyno output rather than audio realism. That is an inference from a few comment fragments.
- Combustion Lab is the closest free competitor on the **physics/dyno** side. The planned product could still stand apart on (a) layout geometry (bank angle, crank pins, firing order), (b) intake/exhaust lengths, and (c) sound that verifiably follows from those parameters, none of which were found exposed in Combustion Lab.
- "Open educational tool" suggests it is free. No monetization was seen, but this is not verified.

### Gaps
- **The ~235 HN points figure was not confirmed.** The only thread found (48795900) was listed at 18 points. A separate, higher-scoring submission may exist but was not found (hn.algolia.com was blocked).
- How the sound is synthesized, and whether changing bore, stroke or cam changes it audibly, remains unknown.
- Whether cylinder count, layout, firing order or intake/exhaust length are configurable is unknown. None appeared in snippets.
- Author identity, open-source status (no GitHub repo found), sharing or gallery features, mobile support, and update cadence after v2.0 are all unknown.

## 2. Groundcode "Engine Simulator" / "Engine Simulator 3D" (engine-simulator.com): platforms, customization, sound, monetization, ratings

### Takeaway
Groundcode's app is an ad-supported 3D "toy" for iOS and Android, launched in late September to October 2026. There is **no general web version**; the only no-install option is a **Toss Mini App** inside the Korean Toss app. Customization means combining preset engines (inline or V, NA or turbo) with gearbox, exhaust length and tuning. Its sound is synthesized from revs, firing order and exhaust length, so changing the setup does change the sound, but the app exposes no geometry-level builder.

### Cited Findings
- **Platforms:** The site lists Google Play, the App Store and a "Toss Mini App" that needs no install. It is a 3D engine app for Android, iPhone and iPad (snippet) — [engine-simulator.com/en](https://engine-simulator.com/en)
- **Store IDs:** Android "Engine Simulator 3D", package io.groundcode.enginesimulator (snippet) — [Google Play](https://play.google.com/store/apps/details?id=io.groundcode.enginesimulator&hl=en); [Groundcode developer page](https://play.google.com/store/apps/dev?id=8850649951215963978). iOS "Engine Simulator 3D", id6814764131 (snippet) — [App Store](https://apps.apple.com/us/app/engine-simulator-3d/id6814764131)
- **Launch and version:** Android v1.2.5, with the Play listing dated October 2026 (snippet) — [AppBrain](https://www.appbrain.com/app/engine-simulator-3d/io.groundcode.enginesimulator). iOS v1.1.0, launched late September 2026 (snippet) — [IndieTower](https://indietower.com/apps/ios/6814764131). The App Store version history mentions a one-time rating request and better ad retry handling (snippet) — [App Store](https://apps.apple.com/us/app/engine-simulator-3d/id6814764131)
- **Sound:** "The sound is not a recording: it is synthesized on the spot from revs, firing order, and exhaust length" (snippet) — [engine-simulator.com/en](https://engine-simulator.com/en). The guide says exhaust pulses come from revs, cylinder count and firing interval, with exhaust-length resonance layered on top, so changing exhaust length changes the resonance (snippet) — [engine-simulator.com guide](https://engine-simulator.com/en/guide)
- **Customization:** "Switch between inline and V layouts, naturally aspirated and turbo, and drag the lever to shift gears yourself." Users can "Combine engines with different cylinder layouts and induction, gearboxes, exhaust lengths, and tuning." There is an optional manual clutch (snippet) — [engine-simulator.com/en](https://engine-simulator.com/en)
- **Self-positioning:** "It does not reproduce any real car or brand; it is closer to a toy for hearing how cylinder layout and rev character change the sound. The lineup keeps growing" (snippet) — [engine-simulator.com/en](https://engine-simulator.com/en)
- **Monetization (iOS):** The default inline-six is free. A rewarded ad unlocks another engine for 24 hours on that device, banner ads may appear at the bottom, and when a pass lapses the app reverts to the default engine without interrupting a running session (snippet) — [App Store](https://apps.apple.com/us/app/engine-simulator-3d/id6814764131); [engine-simulator.com/en](https://engine-simulator.com/en)
- **Monetization (Android):** Play lists the app as "Contains ads". Other engines can be previewed while stopped, and a rewarded ad is offered on first start (snippet) — [Google Play](https://play.google.com/store/apps/details?id=io.groundcode.enginesimulator&hl=en)
- **Reception:** One App Store review complains about the 24-hour ad passes and asks for a rotary engine; the snippet says a rotary is in the works (snippet) — [App Store](https://apps.apple.com/us/app/engine-simulator-3d/id6814764131)
- **Name collision:** A different Android app, "Engine Simulator" by grimvex (com.grimvex.simmoteur), advertises 13 forced-induction setups and sound built from cylinder count, firing order, exhaust and turbo. It uses a one-time purchase to remove ads. **It is not Groundcode's app** (snippet) — [Google Play (grimvex)](https://play.google.com/store/apps/details?id=com.grimvex.simmoteur&hl=en_US); [AppBrain (grimvex)](https://www.appbrain.com/app/engine-simulator/com.grimvex.simmoteur)

### Inferences
- Users pick from a growing list of curated presets, with exhaust length and "tuning" as the main continuous controls. Bank angle, crank pin angles, bore/stroke and cam timing are not mentioned anywhere, so it does not appear to offer a geometry-level builder.
- Its sound model (firing interval plus exhaust-length resonance) sits between simple firing-pulse synthesis and a full physics model. Some parameters clearly drive the sound, but it is not a combustion/thermodynamic simulation.
- Rewarded ads gating engines, plus a user complaint about them, open room for a fully free, ad-free competitor.
- The Toss Mini App gives it a no-install presence for Korean users. This matters if the planned product targets Korea.

### Gaps
- Star ratings and download counts were not found.
- Whether firing order is user-editable or fixed per preset is unknown.
- How many engines exist and the exact list is unknown (the site says the setup screen is authoritative).
- Whether engines can be shared, and whether there is a dyno or power curve, is unknown; none was found.
- Whether a plain-browser web build exists beyond Toss: none was found.

## 3. build-your-engine.vercel.app ("RevLab") and similar "build your engine" web tools

### Takeaway
build-your-engine.vercel.app is **RevLab**, a free browser engine-sound toy. It synthesizes sound live with the Web Audio API from layout, cylinder count, displacement, forced induction, exhaust and crank plane, and has a 6-speed gearbox. A related RevLab iOS app claims deeper geometry (firing order, crank geometry, exhaust manifold). The strongest browser competitor found is a different site, **Real Engine Simulator** (realenginesimulator.com, also at engine-sim-game.vercel.app). It exposes bank angle, typed firing orders and crank plane, with cycle-by-cycle physics, dyno and P-V output, but building your own engine is behind a paid **Pro** plan.

### Cited Findings — RevLab (build-your-engine.vercel.app)
- **Site title:** "RevLab" (snippet) — [build-your-engine.vercel.app](https://build-your-engine.vercel.app/)
- **Controls and sound:** You pick layout, cylinders, displacement, turbo or supercharger and exhaust. The sound is "synthesized live in your browser, no download", with no playback of recordings, generated in real time with the Web Audio API (snippet) — [build-your-engine.vercel.app](https://build-your-engine.vercel.app/)
- **Gearbox:** The setup includes a 6-speed gearbox (snippet) — [build-your-engine.vercel.app](https://build-your-engine.vercel.app/)
- **Crank plane:** The site suggests picking a V8 and toggling "Crank Plane" to compare the two sounds, and says crank behaviour is modelled automatically for any Flat-layout engine (snippet) — [build-your-engine.vercel.app](https://build-your-engine.vercel.app/)
- **iOS sibling:** "RevLab - Engine Simulator" (id6817417979) says cylinder count, firing order, crank geometry and exhaust manifold shape the sound. Whether it shares code with the web version is unverified (snippet) — [App Store](https://apps.apple.com/us/app/revlab-engine-simulator/id6817417979)

### Cited Findings — Real Engine Simulator (realenginesimulator.com / engine-sim-game.vercel.app)
- **Scope:** "Build, Tune & Rev Engines in Your Browser". It covers piston, radial, Wankel rotary and turbojet engines, with live cycle-by-cycle physics, synthesized sound, a dyno and a P-V trace. It is free and needs no download or sign-up to run, but requires JavaScript and WebGL (snippet) — [engine-sim-game.vercel.app/simulator](https://engine-sim-game.vercel.app/simulator); [engine-sim-game.vercel.app](https://engine-sim-game.vercel.app/); [realenginesimulator.com/simulator](https://realenginesimulator.com/simulator)
- **Sound method:** The site says its Web Audio "synthesizes the exhaust from the firing order, sample-accurately" (snippet) — [realenginesimulator.com](https://realenginesimulator.com/)
- **Editable firing order:** The spec panel has a text field: "type a new order, press enter, and the engine fires in that order immediately." On the V8 page, "The sound is the only thing the order changes" and the dyno curve stays the same (snippet) — [V8 5.0L page](https://realenginesimulator.com/engines/v8-5l)
- **Bank angle:** In its inline-6 vs V6 comparison, bank angle is the only variable. It reports identical power, attributes the difference in sound to exhaust-pulse routing through the manifolds, and says "Change the bank angle and nothing happens" to torque. The V6 page says bank angle never enters the torque calculation (snippet) — [Inline-6 vs V6 blog](https://realenginesimulator.com/blog/inline-6-vs-v6); [V6 3.0L page](https://realenginesimulator.com/engines/v6-3l)
- **Crank plane and crankpins:** A cross-plane V8 bank hears pulse gaps of 180/270/180/90 crank degrees versus 180/180/180/180 for flat-plane. A 45° twin with a shared crankpin is also modelled (snippet) — [Cross-plane vs flat-plane blog](https://realenginesimulator.com/blog/crossplane-vs-flatplane-v8); [Firing order blog](https://realenginesimulator.com/blog/firing-order)
- **Monetization:** The About page says a Pro plan pays for the site and there are no ads. **Building your own engine is the paid part**, and advanced piston settings need a free sign-in. The roster is 46 engines, some modelled on named real engines' published bore, stroke and compression ratio, and new engines are no longer added on request (snippet) — [About page](https://realenginesimulator.com/about); [Engine list](https://realenginesimulator.com/engines)
- **Trust:** A third-party scanner rates the domain 50/100 as newly registered with limited reputation data, and does not flag it as a scam (snippet) — [Gridinsoft](https://gridinsoft.com/online-virus-scanner/url/realenginesimulator-com)
- **Open source:** No evidence found (snippet) — [realenginesimulator.com](https://realenginesimulator.com/)

### Cited Findings — other similar web tools and repos (only surfaced; not examined)
- **Revheadz:** "Revheadz: engine sound simulator" (title only) — [revheadz.vercel.app](https://revheadz.vercel.app/)
- **Mechsimulator four-stroke tool:** Otto/Diesel cycle tool whose sound is at firing frequency (rpm × cylinders / 120), i.e. simple firing-pulse synthesis (snippet) — [mechsimulator.com](https://mechsimulator.com/tools/four-stroke-engine/)
- **Arcade-style web sims:** A browser sim offering V8, V12, boxer and inline-6 layouts, litre size, mild/race cam choice, small/big turbo, sport or straight-pipe exhaust, fuel grade and a dyno (snippet). These are coarse presets, not geometry — [anonarcade.com](https://www.anonarcade.com/car-games/engine-simulator/); also [practicalwebtools.com](https://practicalwebtools.com/games/engine-simulator)
- **GitHub browser projects:** [VinZu17/Engine-Sound-Simulator](https://github.com/VinZu17/Engine-Sound-Simulator) ("Browser-based engine sound simulator with realistic physics and audio synthesis"), [YigitSalihEmecen/Engine_Sim](https://github.com/YigitSalihEmecen/Engine_Sim) ("a realistic engine sound simulator that works on your browser"), [finicu212/REDLINE](https://github.com/finicu212/REDLINE), [Reysajju/engine-simulator](https://github.com/Reysajju/engine-simulator), and [hellotheweddingchapter-ops/firing-order](https://github.com/hellotheweddingchapter-ops/firing-order) ("Engine sounds for your Tesla, generated live from each engine's firing order"). One GitHub prototype reportedly generates sound per cylinder firing at its crank angle, with valve flow driven by cam timing, lift and valve sizes; the snippet did not say which repo (snippet) — search summary
- **Desktop reference point (not browser):** Ange Yaghi's engine-sim models each cylinder thermodynamically, and the resulting pressure waves are the sound. Its author says it is "NOT a scientific tool" (snippet) — [GitHub ange-yaghi/engine-sim](https://github.com/ange-yaghi/engine-sim); [starlog.is](https://starlog.is/articles/developer-tools/ange-yaghi-engine-sim/)
- **Mobile reference:** Trans4motor (iOS) lets users set bore, stroke, firing order and ignition timing (snippet) — [App Store](https://apps.apple.com/us/app/-/id899277186)

### Inferences
- RevLab's controls (layout, cylinders, displacement, induction, exhaust type, crank plane) are a mid-level parametric builder. No snippet mentions bank angle in degrees, individual crank pin angles, bore/stroke, cam timing or intake/exhaust lengths.
- Real Engine Simulator is the **most direct threat** to the differentiation claim. It already markets bank angle, editable firing order, crank-plane and crankpin effects, cycle-level physics, dyno and P-V output in the browser, backed by SEO blog content. Two caveats: by its own account bank angle does not affect the physics, and custom engine building is paid.
- Several hobby GitHub projects attempt physics-driven browser engine audio, so the space is crowded at the prototype level even if few are polished or maintained.

### Gaps
- RevLab's author, launch date, maintenance status, any sharing or dyno features, and whether "exhaust" means a length parameter or a preset type are all unknown, since the page could not be fetched.
- Whether Real Engine Simulator's Pro builder exposes bore/stroke, cam timing or intake/exhaust lengths, and its price, are unknown.
- Real Engine Simulator's launch date and reception (HN/Reddit) were not found. The domain is described as new.
- The GitHub projects' maintenance status and depth were not examined.

## 4. Verdict on the planner's differentiation claim

### Takeaway
The claim **mostly holds, but only narrowly, and needs qualifying.** No tool found pairs a *free* visual builder with the *full* geometry set (bank angle + crank pin angles/firing order + bore/stroke + cam timing + intake/exhaust lengths) driving physics-based sound. But individual pieces already exist for free or nearly free: Real Engine Simulator (bank angle, firing order, crank plane, cycle physics, dyno; custom builds paywalled), Combustion Lab (bore/stroke/con-rod/cam duration, thermodynamics, "synthesized sound"; free), RevLab (layout, cylinders, displacement, crank plane, Web Audio; free) and Groundcode (exhaust length, firing-order-based sound; mobile, ad-gated).

### Cited Findings
- Real Engine Simulator advertises firing-order-driven sound, an editable firing order, bank-angle comparisons and crank-plane modelling in the browser, while saying custom engine building is a Pro feature (snippet) — [realenginesimulator.com/about](https://realenginesimulator.com/about); [V8 page](https://realenginesimulator.com/engines/v8-5l); [Inline-6 vs V6](https://realenginesimulator.com/blog/inline-6-vs-v6)
- Combustion Lab exposes bore, stroke, con-rod, compression and cam duration in a free single-zone thermodynamic model with synthesized sound (snippet) — [combustionlab.net](https://combustionlab.net/)
- RevLab exposes layout, cylinders, displacement, forced induction, exhaust and crank-plane toggling, with live Web Audio synthesis (snippet) — [build-your-engine.vercel.app](https://build-your-engine.vercel.app/)
- Groundcode's sound is synthesized from revs, firing order and exhaust length, but it is a mobile/Toss app with rewarded-ad engine unlocks (snippet) — [engine-simulator.com/en](https://engine-simulator.com/en)

### Inferences
- A more defensible version of the claim: "the only free, no-login browser tool where *every* geometry parameter (bank angle, per-crankpin angles/firing order, bore/stroke, cam timing, intake/exhaust runner lengths) feeds a single physics model that produces *both* the sound and the dyno curve." The wedge is the combination of these points: free custom building (vs Real Engine Simulator's Pro paywall); layout geometry plus acoustics (vs Combustion Lab's thermodynamics-only parameters); real physics (vs RevLab's and Groundcode's pulse-plus-resonance sound); and intake/exhaust **lengths**, which no browser tool was confirmed to expose.
- Real Engine Simulator's own admission that bank angle "does nothing" to torque, with sound differences coming from manifold routing, suggests a real physics opening: modelling how bank angle, crank pins and runner lengths interact acoustically.
- Shareable engine links or a gallery were not found in any of the four main products, so that may be another point of difference. Not verified.

### Gaps
- No product page was fetched in full, so each tool's feature set may be broader than the snippets show (especially Combustion Lab's and RevLab's sound engines and Real Engine Simulator's Pro builder).
- Maintenance status ("live, maintained") could not be verified for Combustion Lab, RevLab or Real Engine Simulator beyond their being indexed in 2026. Groundcode is actively updated (versions 1.1.0 and 1.2.5 in September to October 2026).
- To close these gaps, allow hn.algolia.com, combustionlab.net, build-your-engine.vercel.app and realenginesimulator.com in the session's network settings and fetch them directly.
