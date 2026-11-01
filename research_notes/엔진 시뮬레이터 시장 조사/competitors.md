# Competitor Landscape: Real-Time Engine Sound Simulators (focus: engine customization depth)

Research date: 2026-11-01. Method note: in this environment only github.com could be fetched directly. Fetches to store.steampowered.com, steamcommunity.com, apps.apple.com, practicalwebtools.com, build-your-engine.vercel.app, engine-simulator.com and itch.io subdomains failed with ENOTFOUND (blocked by network policy). For those hosts, the findings below come from WebSearch result snippets only. Treat snippet-only claims as lower confidence; they are marked "(snippet)". No Reddit thread content was retrievable.

## 1. AngeTheGreat's engine-sim (desktop, open source): customization, difficulty, platform, CPU, GUI editors

### Takeaway
Engines in engine-sim are defined by hand-written text scripts in the ".mr" Piranha language. The official app has no GUI engine editor, builds only on Windows, and needs a fast single-thread CPU. The original repo now points to a distribution-only "Community Edition", which is itself marked as being replaced by a newer, "more capable" commercial version. That version is "Engine Simulator" on Steam (app 2381500): release date TBA, a planned 3D graphical editor, Patreon-funded. The community GUI editors (Enginette) are archived or abandoned. Ports to other platforms and to the web are recent and small.

### Cited Findings
**Repo status and platform**
- ange-yaghi/engine-sim: MIT license, about 9.6k stars and 955 forks. The README says "this project currently only builds on Windows!" Build dependencies are CMake, SDL2, SDL2_image, Boost, Flex and Bison, and CMake generates a Visual Studio solution. The README now carries a banner saying the project "has moved" to the Community Edition for newer releases. The README describes only a minimal keyboard/mouse UI, with Enter to "reload the engine script", and mentions no GUI editor. — [GitHub: ange-yaghi/engine-sim](https://github.com/ange-yaghi/engine-sim)
- An upstream issue requesting WebAssembly/browser support dates from roughly 3.4 years ago (snippet). It shows no official WASM build. — [Issue #428](https://github.com/ange-yaghi/engine-sim/issues/428)
- The Community Edition repo is "only for the distribution of the Engine Simulator application and there is no application code here". It is "no longer actively maintained as it is being replaced by a newer and more capable version". Updates are announced via Discord and YouTube (snippet). — [Engine-Simulator/engine-sim-community-edition](https://github.com/Engine-Simulator/engine-sim-community-edition)
- Issue #76 on the Community Edition, opened 2025-05-12, asks whether the project is still maintained. It has no maintainer reply. The only later comment (2026-08-14) is from carlesonielfa, who announces a cross-platform fork "meant to be community driven". — [Issue #76](https://github.com/Engine-Simulator/engine-sim-community-edition/issues/76)

**How engines are customized (the ".mr" scripts)**
- Engines are written in .mr scripts. A script "defines an engine by instantiating nodes and connecting them through actions" and is processed top to bottom (DeepWiki summary, snippet). — [DeepWiki: scripting system](https://deepwiki.com/ange-yaghi/engine-sim/7-scripting-system)
- Adding a custom engine means copying assets into the engine-sim root, adding an import line to `main.mr`, and pointing `set_engine` at the engine node. The garage repo that documents this was tested on v0.1.9a (snippet). — [eff3n/engine-sim-garage](https://github.com/eff3n/engine-sim-garage)
- A community tutorial walks through creating a .mr file, importing the core library, the impulse-response library and units. It notes that as of v0.1.9a "every engine is DOHC" (2 cams per bank) (snippet). — [SnowyHype tutorial](https://github.com/SnowyHype/engine_sim_tutorial_angethegreat)
- A community parts catalog exists (catalog.engine-sim.parts / engine-sim.parts). It hosts shared tunes (for example a 2JZ main.mr) and asks users to credit the creator and AngeTheGreat (snippet). — [catalog.engine-sim.parts](https://catalog.engine-sim.parts/parts/1013)

**CPU and performance**
- The physics runs at a rate equivalent to about 80,000 simulation steps per second (snippet). — [The Drive](https://www.thedrive.com/news/hear-this-absurdly-accurate-homebrew-engine-sim-rev-a-chevy-big-block)
- A FlightGear proposal notes that engine-sim "requires over 80000 FPS" for correct sound and lists Windows-only as a limitation (snippet). — [FlightGear wiki](https://wiki.flightgear.org/Hackathon_Proposal:Realtime_Engine_Sounds)
- Community reports say the simulator is "mostly single threaded and prefers high HZ CPUs". An FX-6300 was too slow; a Ryzen 5800X was fine, but V8–V12 engines needed "some optimizations" (snippet, forum). — [assettocorsamods forum](https://assettocorsamods.net/goto/post?id=21176)
- The Community Edition tutorial says the app "requires a fairly powerful CPU". Setting the simulation-speed value above 80 causes audio distortion or framerate drops, and there are "no adjustments ... to solve this right now" (snippet). — [CE getting-started tutorial](https://github.com/Engine-Simulator/engine-sim-community-edition/blob/master/tutorial/01_getting_started/01_getting_started.md)

**GUI editors and community tools**
- **Enginette**: an "engine maker/editor for the Engine Simulator" with a web front end at enginette.netlify.app. It converts parameters into a Piranha script via the "Python Engine Generator". It is at v0.1.1, warns "Some stuff may not work", has 16 open issues and 55 stars, and was archived (read-only) on 2025-12-14. — [GitHub: Enginette](https://github.com/Enginette/enginette)
- **Official wiki "Community projects" list** (last edited October 2022):
  - Enginette ("An online tool for building engines without dealing with all the technicalities of programming").
  - Engine Importer (changes the loaded engine without editing files).
  - Mod Loader (a fork exposing internals via Lua bindings).
  - Engine Sim Recorder (records sounds and can export to BeamNG.drive).
  - Vojka's fork (built-in engine switching).
  - Engine Hoist ("A GUI application for changing engines". It switches engines; it is not an editor).
  - Source: [engine-sim wiki: Community projects](https://github.com/ange-yaghi/engine-sim/wiki/Community-projects)
- **Open Engine Simulator** (carlesonielfa): an MIT fork targeting WebAssembly + WebGL 2 for the browser, plus Windows x86_64, macOS arm64 (unsigned) and Linux x86_64. Customization is still via a reloadable engine script; no GUI editor is described. It has 6 stars and 4 forks. Browser audio needs an "Enable audio" click. The fork says it "cannot be expected to provide accurate figures for engineering or engine tuning". — [GitHub: carlesonielfa/open-engine-sim](https://github.com/carlesonielfa/open-engine-sim)
- **f1nando "Engine Sim Lab"**: an unofficial modernization fork adding selectable telemetry graphs and portable Windows builds (snippet). — [GitHub: f1nando/engine-sim-community-edition](https://github.com/f1nando/engine-sim-community-edition)

**Official successor: "Engine Simulator" on Steam (app 2381500)**
- Developer: Ektorom Software. Release date "to be announced", in development.
- Planned features: a 3D graphical editor for laying out components and tubing, real-time engine modifications, a "physically-based audio generator", and an offline audio exporter for higher-than-real-time quality.
- It warns that it "will require a modern, fast CPU".
- The developer says the original prototype was a free, text-scripted tool, and the new version adds a graphical interface. Development is funded through Patreon rather than early-access sales.
- All points are from snippets; the Steam pages could not be fetched. — [Steam store](https://store.steampowered.com/app/2381500/Engine_Simulator/); [Steam Community](https://steamcommunity.com/app/2381500)

### Inferences
- For non-programmers, the barrier is high on several fronts:
  - writing a .mr text script with node/action semantics;
  - editing main.mr imports by hand;
  - version-specific community tutorials (v0.1.9a era);
  - no error-tolerant GUI;
  - a heavy CPU requirement.
- The only web GUI editor (Enginette) is archived, and the wiki list is stale (2022).
- The official GUI (Steam 2381500) is still unreleased as of the available data. When it ships, it will be the strongest desktop competitor for deep customization. It is paid or Patreon-funded and desktop-only, not a free browser tool.
- engine-sim's ~80 kHz physics step and single-thread demand mean a faithful WASM port is CPU-bound in the browser. A browser product likely needs a lighter synthesis model, or a quality/CPU slider.

### Gaps
- Could not confirm the Steam 2381500 price, platforms (Windows-only?), or any 2026 release window. No source confirmed a launch.
- Could not retrieve the exact .mr parameter list (bank angle, crank pin/firing order, cam lobe profiles, intake/exhaust runner lengths) from primary docs. The source code was not inspected.
- No official minimum CPU spec was found for engine-sim; only community anecdotes.
- Enginette's exact editable parameter set was not stated on its README.

## 2. Browser-based engine simulators: features, customization depth, sound quality, monetization

### Takeaway
There are now many browser engine-sound toys, mostly small hobby projects from 2025–2026. They split into two groups: (a) WASM ports of engine-sim that run engine-sim's preset engines and offer little or no in-browser editing, and (b) standalone Web Audio synthesizers with preset or slider-level customization (layout, cylinder count, displacement, turbo, exhaust "character"). I found no browser product that exposes engine-geometry-level parameters such as bank angle, crank pin angles, cam timing and runner lengths in a visual builder. Monetization could not be verified for most, because their pages were blocked.

### Cited Findings
**WASM ports of engine-sim**
- **Practical Web Tools "Engine Simulator"** (practicalwebtools.com/games/engine-simulator): claims to run Ange Yaghi's MIT-licensed engine-sim v0.1.11a in the browser via WebAssembly as a "community port". It is described as "embedded unmodified from its public host". Controls are the original keyboard scheme: S for the starter, Q/W/E/R for throttle. Snippet only; fetch blocked. — [practicalwebtools.com](https://practicalwebtools.com/games/engine-simulator)
- **engine-sim-game.vercel.app**: titled "Real-physics engine simulator — free, in your browser". It is a static web app; "simulation runs locally, nothing uploaded". Its relation to engine-sim and its customization features are unknown (snippet only). — [engine-sim-game.vercel.app](https://engine-sim-game.vercel.app/)
- **Open Engine Simulator web build** (WASM/WebGL 2): see section 1. The live site open-engine-sim.onielfa.com is unconfirmed as a playable demo. — [GitHub](https://github.com/carlesonielfa/open-engine-sim)

**Standalone Web Audio synthesizers**
- **RevLab** (build-your-engine.vercel.app): pick layout, cylinder count, displacement, aspiration and exhaust. Sound is "synthesized live in your browser" through the Web Audio API, with a 6-speed gearbox. Snippet only; fetch blocked. — [RevLab](https://build-your-engine.vercel.app/)
- **Engine_Sim by YigitSalihEmecen** (live at yigitsalihemecen.github.io/Engine_Sim):
  - All audio is "synthesised live from firing geometry and a simulated drivetrain". Each cylinder firing is an AudioWorklet event at its crank angle, with jitter and misfires, and the exhaust uses digital waveguide pipes.
  - Engines: 16 preset types (inline, V, flat/boxer, rotary, diesel, cross-plane V8). 5 chassis presets, and turbo on any engine.
  - Sound shaping (EQ, reverb, cabin/exterior position) with JSON presets.
  - There are no direct cylinder-count or firing-order controls; these follow from the engine type.
  - 8 stars on GitHub.
  - Source: [GitHub: YigitSalihEmecen/Engine_Sim](https://github.com/YigitSalihEmecen/Engine_Sim)
- **Engine Sound Lab** (fonnesx, itch.io): 16 engine configurations, with controls for redline, idle RPM, displacement and exhaust character (snippet). — [itch.io: eslab](https://fonnesx.itch.io/eslab)
- **Engine Tone** (engine-tone.github.io): play and customize engines "such as V6, V8, and up to V12" with "a range of configuration options". Details unverified (snippet). — [Engine Tone](https://engine-tone.github.io/)
- **Hyper-Engine Simulator** (Reysajju, GitHub): procedurally generated V-configuration engines from V2 upward. Sound is synthesized from cylinder count and RPM; it runs as a local HTML file (snippet). — [GitHub: Reysajju/engine-simulator](https://github.com/Reysajju/engine-simulator)
- **Engine Sim (devaero, itch.io)**: exists, but its details could not be retrieved (fetch blocked). — [devaero.itch.io/engine-sim](https://devaero.itch.io/engine-sim)

**Educational and other**
- **MechSim Four-Stroke Engine Simulator**: an educational Otto/Diesel cycle tool with 2/4/6/8-cylinder presets and a 1–12 cylinder slider. Sound is computed from firing frequency (RPM × cylinders) (snippet). — [mechsimulator.com](https://mechsimulator.com/tools/four-stroke-engine/)
- Other browser "engine simulator" sites surfaced only by title or short snippet. Their features and monetization are unverified:
  - realenginesimulator.com ("Free Browser-Based Combustion & Jet Engine Physics") — [link](https://realenginesimulator.com/)
  - combustionlab.net ("Interactive Engine Dynamics Simulator") — [link](https://combustionlab.net/)
  - anonarcade.com ("Build and Rev a 3D Car Engine"), apparently an arcade/ad-supported game portal embed — [link](https://www.anonarcade.com/car-games/engine-simulator/)
- One browser "Engine Simulator" describes a dyno pull plotting horsepower (red) and torque (blue) at every rpm. The snippet did not identify which site (snippet). — [anonarcade.com](https://www.anonarcade.com/car-games/engine-simulator/)
- A "Combustion engine web-based simulator" was posted to Hacker News; only the title was available. — [HN mirror](https://hn.nuxt.dev/item/48795900)
- **EV·ENGINE** (ev-engine.com): a browser-based tool that works on iOS/Android, "free, with no app" (snippet). — [ev-engine.com](https://ev-engine.com/)

### Inferences
- The browser space is crowded at the "toy" level (preset pick plus a few sliders) and at the "port" level (engine-sim presets). Neither group offers a visual builder for deep geometry. The closest to physics-informed synthesis in pure JS is YigitSalihEmecen's firing-event + waveguide approach, and it still uses fixed engine types.
- Arcade/game portals such as anonarcade and practicalwebtools already host engine-sim-like content alongside ads. Ad-supported engine-sim content is therefore already present, though at low customization depth.
- Several projects (vercel.app / github.io / itch.io) look recent and hobbyist. The field is fragmented and has no clear brand leader on the web.

### Gaps
- Monetization (ads or paid) could not be verified for any browser product; the pages were blocked.
- No sound-quality reputation data (Reddit or YouTube reviews) for any browser product was retrievable.
- The exact parameter lists for RevLab, Engine Tone and Engine Sound Lab are snippet-level only.
- Whether practicalwebtools or engine-sim-game.vercel.app allow loading custom .mr scripts is unknown.

## 3. Steam/desktop games with engine building + sound

### Takeaway
Automation is the dominant engine designer game. It has deep mechanical design (cylinders, layout, valvetrain, induction, fuel) but sample-based sound with only coarse adjustment, and its sound pipeline into BeamNG has known issues. BeamNG uses FMOD RPM-sample blending with some tuning parameters. AngeTheGreat's commercial Engine Simulator (Steam 2381500) promises physics audio with a 3D editor but is unreleased. "Steam Engine Simulator" (2381620) is a free steam-engine spin-off, not an internal-combustion engine simulator. Middleware for game devs (CrankCase REV, RES2) exists but is costly or sample-based.

### Cited Findings
**Automation (Camshaft Software)**
- The game has three components: Engine Designer, Car Designer and Company Manager. — [Wikipedia: Automation](https://en.wikipedia.org/wiki/Automation_(video_game))
- The engine designer sets cylinder count and arrangement, valvetrain type, forced induction and fuel systems, each affecting power, reliability and efficiency (snippet). — [Wikipedia: Automation](https://en.wikipedia.org/wiki/Automation_(video_game))
- In the open beta, engine sound can be adjusted in "advanced trim settings" under the fixtures tab (forum snippet). — [Steam discussion](https://steamcommunity.com/app/293760/discussions/2/3712685279009069774)
- A developer reply says the in-game loudness measure reflects cabin loudness, not exterior noise (snippet). — [Steam discussion](https://steamcommunity.com/app/293760/discussions/2/6770657417442003738)
- Exported cars sometimes have no engine sound folder in BeamNG, so the engine is silent. The thread raises a possible FMOD conflict. — [Steam discussion](https://steamcommunity.com/app/293760/discussions/0/3159763879060384387)
- A tutorial works around export issues by swapping in stock BeamNG engine sounds. — [Automation forum](https://discourse.automationgame.com/t/automation-beamng-diesel-car-tutorial-a-simple-method-for-converting-exported-cars/46882)
- Very loud Automation sounds come across distorted in BeamNG. — [BeamNG forum](https://www.beamng.com/posts/1006258/)
- Exported sound settings can be edited in camso_engine.jbeam (snippet). — [Steam discussion](https://steamcommunity.com/app/293760/discussions/2/3712685279009069774)

**BeamNG.drive**
- BeamNG has used FMOD since v0.10.0. Engine sound sets are per engine, built from on-load and off-load sample arrays tied to specific RPMs, which the engine blends linearly by RPM. — [BeamNG wiki: Sound](https://wiki.beamng.com/Sound)
- BeamNG's engine sound tuning docs expose parameters such as eqFundamentalGain (engine-order emphasis) and intakeMuffling (snippet). — [BeamNG docs: Engine Sound Tuning](https://documentation.beamng.com/modding/vehicle/sections/sounds/engine_audio/)
- Engine Sim Recorder can export engine-sim recordings to BeamNG. — [engine-sim wiki](https://github.com/ange-yaghi/engine-sim/wiki/Community-projects)

**Steam Engine Simulator (app 2381620)**
- Ektorom Software; free to play; released 2023-06-07. Based on a January 2023 AngeTheGreat video. About 95.58% positive across roughly 9,000 reviews (SteamDB snippet). It simulates a miniature steam engine, not an internal-combustion engine. — [SteamDB](https://steamdb.info/app/2381620/)

**Engine Simulator (app 2381500)**
- See section 1. Unreleased, release "to be announced", planned 3D graphical editor, physically-based audio, needs a modern fast CPU (snippets). — [Steam store](https://store.steampowered.com/app/2381500/Engine_Simulator/)

**Middleware for game developers**
- CrankCase Audio REV sounded best in one developer's comparison but cost about $1,500 for the engine plus $1,500 for the editor. They also could not route it for spatial 3D audio. The devlog is older; its date was not shown. — [That's Racing devlog (itch.io)](https://imphenzia.itch.io/thats-racing/devlog/37275/engine-audio)
- Realistic Engine Sounds 2 (RES2) is a sample-based engine-sound tool sold on Fab, with separately sold sound packs (Formula V12 with 22 exterior + 22 interior looping RPM recordings, etc.). One listing says engines "can be customized during runtime, and in editor, to change the tone and revving behavior" (snippet). — [Fab listing](https://www.fab.com/listings/4fe4f1d8-fb85-4452-8f5f-b43b6a471d02)

**Unverified Steam listing (app 5358500)**
- One snippet attributed to store.steampowered.com/app/5358500 described a "Steam port of the simulator". It mentions audio quality from Low to Ultra "as far as your CPU allows" and a CPU load meter.
- A follow-up search found nothing for that app ID, so the existence and identity of this listing are UNVERIFIED. — [store.steampowered.com/app/5358500](https://store.steampowered.com/app/5358500/)

### Inferences
- Desktop games split along one fault line. Automation and Car Mechanic Simulator-style games offer deep mechanical design with canned, sample-based sound. engine-sim offers deep physical sound but needs scripting (GUI promised, not shipped).
- Players moving Automation engines into BeamNG hit sound problems (silence, distortion, swapping in stock sounds). This suggests demand for sound that follows the designed engine.
- No desktop product combines a friendly visual builder, physical sound, free access and cross-platform support today. Steam 2381500 may cover the first two when it launches.

### Gaps
- Car Mechanic Simulator: no information was found on its engine sound model or customization. The searches returned nothing relevant.
- Automation player reviews on sound quality and what's missing: Steam reviews could not be fetched, and only forum snippets were obtained.
- Automation's synthesis method (sample-based via FMOD?) was not confirmed from a primary source. It is inferred from the FMOD and export context.

## 4. Mobile apps (iOS/Android)

### Takeaway
Mobile engine-sound apps are mostly sample-based "rev a preset car" apps. RevHeadz is the established leader, with about 4.2 stars from about 105K ratings on Google Play, plus OBD-II car-sync and "engine sound under your music" apps. In 2025–2026 a few apps appeared that claim physics or procedural synthesis with engine building:
- Groundcode's "Engine Simulator" (engine-simulator.com): inline/V, NA/turbo, sound from firing order and exhaust length.
- An App Store "Engine Simulator" (id6772016143): build from layout, bore, stroke, cam and firing order, with a dyno and on-device AI generation.

Store listings could not be fetched; descriptions are from snippets and partly conflict.

### Cited Findings
**RevHeadz Engine Sounds (iOS/Android)**
- Google Play: 4.21 stars from 105.2K ratings (third-party tracker), last updated 2025-08-19 (v68). — [AppGoblin](https://appgoblin.info/apps/au.com.revheadz.revheadz)
- Uses "sonic models of real engine sounds" with turbo, supercharger and backfire logic (snippet). — [revheadz.com.au](https://www.revheadz.com.au/)
- Has an OBD-II driving mode via an ELM adapter (snippet). — [RevHeadz App Store](https://apps.apple.com/app/id793064343)
- Reviews are mixed: complaints about connecting to specific car models, a desire for more free cars, and occasional distortion; praise for realism. — [Kimola review analysis](https://kimola.com/reports/revheadz-engine-sounds-comprehensive-feedback-analysis-google-play-tr-148898)

**Groundcode "Engine Simulator" / "Engine Simulator 3D"**
- Android: Google Play package io.groundcode.enginesimulator. Also on iOS.
- A free 3D engine you start, rev and shift through a manual gearbox. Sound is "synthesized on the spot from revs, firing order, and exhaust length" rather than from recordings. Inline and V layouts, NA and turbo. More engines and gearboxes are "on the way".
- No dyno was confirmed on Groundcode's pages (snippets). — [engine-simulator.com](https://engine-simulator.com/en); [Groundcode project page](https://groundcode.io/en/projects/engine-simulator); [Google Play](https://play.google.com/store/apps/details?id=io.groundcode.enginesimulator&hl=en)

**App Store "Engine Simulator" (id6772016143)**
- Described as a "physics-based piston engine sandbox". You can build an engine from scratch (layout, bore, stroke, cam, firing order) or "describe what you want and have it generated on device". It shows live power and torque on a dyno (snippet). — [App Store](https://apps.apple.com/us/app/engine-simulator/id6772016143)
- The same listing reportedly calls the iOS version an "unofficial port". Another snippet describes iOS/visionOS "Engine Simulator" apps advertising "live 3D, real audio, ECU tuning with OBD-II codes, and a global leaderboard". These descriptions conflict, and it is unclear whether they are the same app, the Groundcode app, or a port of engine-sim. Ratings and price are unknown. — [App Store](https://apps.apple.com/us/app/engine-simulator/id6772016143)

**Other mobile apps**
- **EngineSim (Android APK site)**: "28 live synthesized engines, manual shifting and clutch". Distributed as a third-party APK, with no iOS build (snippet). Its provenance is unverified. — [enginesim.net](https://enginesim.net/)
- **Engine Sound: Car & EV Sound (iOS)**: "synthesizes a lifelike engine in real time" under your music, via Bluetooth or CarPlay. Preset engines, not a builder (snippet). — [App Store](https://apps.apple.com/us/app/engine-sound-car-ev-sound/id6816795459)
- **Potenza Drive**: simulates engine and exhaust sound via OBD2 (ELM327) in a real car (snippet). — [YouTube](https://www.youtube.com/watch?v=qCT7q5rOwwI)
- Surfaced by title only, details unknown: "Engine Sim - Sound Simulator" (iOS, [mwm.ai](https://mwm.ai/apps/enjine-sim-engine-sound-sim/6787443044)), "Car Sound Engine Simulator" ([TapTap](https://www.taptap.io/app/276128)), "Trans4motor - Engine Simulator" (iOS, [App Store](https://apps.apple.com/us/app/trans4motor-engine-simulator/id899277186)), and "V8 Engine Simulation" on the Meta Quest store ([queststoredb](https://queststoredb.com/app/v8-engine-simulation-7771662346196748/)).

### Inferences
- The incumbent mobile category (RevHeadz and clones) is sample-based and car-catalog-driven, monetized by unlocking more cars. Customization means picking a car, not designing an engine.
- Physics or procedural mobile builders appeared very recently (2025–2026), from small developers. Mobile physics synthesis is no longer a total gap but is immature, and ratings data is absent.
- Groundcode publishes on both web (engine-simulator.com) and app stores with a similar feature set: synthesized sound, inline/V, turbo. That makes it the closest direct competitor to the planned product found, but its customization appears shallower than the plan (no confirmed bank angle, crank pins, bore/stroke or dyno).

### Gaps
- Ratings, download counts and prices for Groundcode's Engine Simulator and App Store id6772016143 could not be retrieved; the stores were blocked.
- Whether the "physics-based" mobile apps are true gas-dynamics models or simpler procedural synthesis cannot be verified from marketing text.
- RevHeadz's actual synthesis method is unconfirmed. "Sonic models of real engine sounds" suggests recorded-sample modeling.

## 5. Synthesis approaches: sample-based vs physics-based vs granular

### Takeaway
Physics-based approaches simulate cylinder gas dynamics and pressure pulses through exhaust pipes:
- engine-sim and its forks and ports;
- the upcoming Steam Engine Simulator;
- reportedly the Groundcode and App Store id6772016143 mobile apps (from claims);
- in a lighter "firing-event + waveguide" form, the JS Engine_Sim.

Mainstream games and mobile apps (BeamNG via FMOD, RES2, RevHeadz, most likely Automation) are sample-based, blending RPM-indexed loops. Granular middleware (CrankCase REV) is expensive. Many simple web toys use firing-frequency oscillators.

### Cited Findings
**Physics-based**
- engine-sim simulates cylinder gas dynamics and combustion rather than playing recordings; one browser listing says so explicitly (snippet). — [practicalwebtools.com](https://practicalwebtools.com/games/engine-simulator)
- The physics step runs at about 80 kHz-equivalent. — [The Drive](https://www.thedrive.com/news/hear-this-absurdly-accurate-homebrew-engine-sim-rev-a-chevy-big-block)
- engine-sim imports an impulse-response library in .mr scripts (snippet). — [SnowyHype tutorial](https://github.com/SnowyHype/engine_sim_tutorial_angethegreat)
- Steam Engine Simulator 2381500 advertises a "physically-based audio generator" that can simulate spatial effects, jet noise and exhaust sound (snippet). — [Steam store](https://store.steampowered.com/app/2381500/Engine_Simulator/)

**Procedural / hybrid (firing events + waveguide)**
- YigitSalihEmecen/Engine_Sim uses AudioWorklet per-cylinder firing pulses at crank angles, digital waveguide exhaust pipes, and a compliant drivetrain with backlash. — [GitHub](https://github.com/YigitSalihEmecen/Engine_Sim)
- Groundcode synthesizes from "revs, firing order, and exhaust length" (snippet). — [engine-simulator.com](https://engine-simulator.com/en)

**Simple oscillator (firing frequency)**
- MechSim computes sound from firing frequency (snippet). — [mechsimulator.com](https://mechsimulator.com/tools/four-stroke-engine/)
- Hyper-Engine Simulator synthesizes from cylinder count and RPM (snippet). — [GitHub: Reysajju](https://github.com/Reysajju/engine-simulator)

**Sample-based**
- BeamNG uses FMOD, blending on-load and off-load samples linearly by RPM. — [BeamNG wiki](https://wiki.beamng.com/Sound)
- RES2 uses looping RPM recordings plus runtime tone tweaks. — [Fab](https://www.fab.com/listings/4fe4f1d8-fb85-4452-8f5f-b43b6a471d02)

**Granular / commercial middleware**
- CrankCase Audio REV: about $1,500 plus $1,500 for the editor. — [itch.io devlog](https://imphenzia.itch.io/thats-racing/devlog/37275/engine-audio)
- That REV is granular-based is from general background knowledge, not a fetched source. UNVERIFIED in this research.

### Inferences
- Only physics-based or firing-event synthesis makes engine-geometry customization (crank pin angles, firing order, runner lengths) audibly meaningful. With sample-based systems, a "custom engine" cannot produce a new sound. This is the technical moat for the planned product.
- The tradeoff is CPU. Full engine-sim physics needs about 80k steps per second on a fast single core. A browser product likely needs a reduced-order model (per-cylinder pulse train shaped by crank angle + waveguide pipes + turbo whine layer), like the Engine_Sim JS approach, possibly with a quality toggle.

### Gaps
- No primary technical documentation was retrieved on engine-sim's exact acoustic model (waveguides vs. convolution). Only the impulse-response import is evidenced.
- No benchmark of WASM engine-sim performance in browsers was found.

## 6. Where the gaps are (and competitor matrix)

### Takeaway
The clearest open position is a free, browser-based engine builder with a visual (non-script) GUI that exposes geometry-level parameters and makes them audibly matter. The parameters in question: cylinder count, inline/V/boxer, bank angle, crank pin angles/firing order, bore/stroke, cam timing, intake/exhaust lengths and turbo. The product would add sharing (links or engine files) and a dyno curve.
- Existing browser tools are either engine-sim ports (deep sound, no in-browser editing) or slider toys (shallow parameters).
- The only GUI editor for engine-sim (Enginette) is archived.
- The official GUI (Steam 2381500) is unreleased and will be desktop and paid/Patreon.
- Mobile physics builders exist but are new, with unverified depth.

### Cited Findings
- Script-only customization in engine-sim; no GUI editor in the official app. — [GitHub: engine-sim](https://github.com/ange-yaghi/engine-sim)
- The only web GUI editor, Enginette, was archived on 2025-12-14 and was buggy. — [GitHub: Enginette](https://github.com/Enginette/enginette)
- The official GUI editor is planned in the unreleased Steam Engine Simulator (TBA, Patreon-funded) (snippet). — [Steam Community](https://steamcommunity.com/app/2381500)
- Windows-only builds for upstream; cross-platform and web only via a 6-star fork from August 2026. — [GitHub: engine-sim](https://github.com/ange-yaghi/engine-sim); [GitHub: open-engine-sim](https://github.com/carlesonielfa/open-engine-sim)
- The heavy CPU requirement limits who can run physics audio. — [CE tutorial](https://github.com/Engine-Simulator/engine-sim-community-edition/blob/master/tutorial/01_getting_started/01_getting_started.md); [assettocorsamods forum](https://assettocorsamods.net/goto/post?id=21176)
- Engine sharing today happens via text .mr files in GitHub repos and an external parts catalog. There is no in-app sharing. — [engine-sim-garage](https://github.com/eff3n/engine-sim-garage); [catalog.engine-sim.parts](https://catalog.engine-sim.parts/parts/1013)
- Community feature requests on the stalled Community Edition (2025-05) include an external API and an RPM-based brake. The issue has no maintainer reply. — [Issue #76](https://github.com/Engine-Simulator/engine-sim-community-edition/issues/76)
- Automation-to-BeamNG users struggle with silent or distorted sound and swap in stock sounds. This points to demand for designed-engine sound that "just works". — [Steam discussion](https://steamcommunity.com/app/293760/discussions/0/3159763879060384387); [Automation forum](https://discourse.automationgame.com/t/automation-beamng-diesel-car-tutorial-a-simple-method-for-converting-exported-cars/46882)
- Dyno curves exist in some products: engine-sim's dyno (D key) in forks, App Store id6772016143's "live power and torque on the dyno", and an unidentified browser sim's HP/torque plot (snippets). — [open-engine-sim](https://github.com/carlesonielfa/open-engine-sim); [App Store](https://apps.apple.com/us/app/engine-simulator/id6772016143)

### Competitor matrix (synthesis of findings above; see per-section citations)

| Product | Platform | Synthesis | Customization depth | Price / monetization | Key gaps |
|---|---|---|---|---|---|
| engine-sim (ange-yaghi, v0.1.x) | Windows desktop | Physics (gas dynamics, ~80 kHz step) | Very deep but text-script (.mr) only | Free, MIT | No GUI, Windows-only, heavy CPU, upstream inactive/moved |
| Engine-sim Community Edition | Windows desktop (binary only) | Physics | Same as above | Free | "Being replaced"; no code; stalled issues |
| Engine Simulator (Steam 2381500, Ektorom/AngeTheGreat) | Desktop (Steam); platforms unconfirmed | Physics + offline exporter | Planned 3D graphical editor, real-time mods | Patreon-funded; price TBA | Unreleased (TBA); modern fast CPU required |
| Open Engine Simulator (carlesonielfa fork) | Win/macOS arm64/Linux/Web (WASM) | Physics (engine-sim core) | Script-based; engine catalog; no GUI editor | Free, MIT | 6 stars; very early (2026-08) |
| Enginette | Web (netlify) | n/a (generates .mr scripts) | GUI-ish parameter form | Free | Archived 2025-12-14; buggy; desktop engine-sim still needed |
| Practical Web Tools "Engine Simulator" | Browser (WASM port v0.1.11a) | Physics (engine-sim) | Preset engines, original keyboard controls; editing unknown | Unknown (likely ad-supported tools site; unverified) | No visual builder confirmed |
| engine-sim-game.vercel.app | Browser | Claims "real physics" | Unknown | Free | Details unverified |
| RevLab (build-your-engine.vercel.app) | Browser | Web Audio synthesized (method unknown) | Layout, cylinder count, displacement, aspiration, exhaust, 6-speed | Unknown | No confirmed bank angle/firing order/cams |
| Engine_Sim (YigitSalihEmecen) | Browser (GitHub Pages) | Firing-event AudioWorklet + waveguide exhaust | 16 preset engine types, 5 chassis, turbo, sound EQ, JSON presets | Free, open source | No cylinder/firing-order/geometry editing |
| Engine Sound Lab (fonnesx, itch.io) | Browser (itch.io) | Synthesized (unverified) | 16 configs; redline, idle, displacement, exhaust character | Unknown | Geometry not exposed |
| Engine Tone | Browser (github.io) | Unknown | V6/V8/up to V12 with config options | Unknown | Unverified |
| Hyper-Engine Simulator | Local HTML | Oscillator from cylinders × RPM | V2 and up, procedural | Free | Simplistic sound |
| MechSim Four-Stroke | Browser | Firing-frequency tone | 1–12 cylinders; educational | Unknown | Not a sound-quality product |
| Automation (Camshaft) | Windows (Steam) | Sample-based (likely FMOD; unconfirmed) | Deep mechanical design; coarse sound trim | Paid | Sound doesn't follow geometry; BeamNG export sound issues |
| BeamNG.drive | Windows (Steam) | FMOD RPM-sample blending + EQ params | Mod-level sound tuning (jbeam params) | Paid | No engine-geometry-driven sound |
| Steam Engine Simulator (2381620) | Windows (Steam) | Physics (steam engine) | Steam engine controls | Free; ~95.6% positive of ~9k | Not an internal-combustion engine |
| CrankCase REV / RES2 | Game-dev middleware | Granular (REV, unverified) / samples (RES2) | Runtime tone tweaks | ~$1.5k + $1.5k (REV); paid packs (RES2) | Not consumer tools |
| RevHeadz Engine Sounds | iOS/Android | Sample-modeling of real engines | Car catalog; turbo/supercharger/backfire; OBD-II | Freemium (more cars wanted) | No engine design; ~4.2 stars/105K |
| Engine Simulator (Groundcode) | iOS/Android + web marketing page | Synthesized from revs/firing order/exhaust length | Inline/V, NA/turbo, manual gearbox | Free (per site) | Depth appears limited; dyno unconfirmed |
| "Engine Simulator" App Store id6772016143 | iOS (+visionOS?) | Claims physics-based | Layout, bore, stroke, cam, firing order; dyno; on-device AI generation | Unknown | Conflicting descriptions ("unofficial port"); ratings unknown |
| EngineSim APK | Android (third-party APK) | "Live synthesized" | 28 engines, manual + clutch | Unknown | Provenance unverified |
| Engine Sound: Car & EV Sound | iOS | Real-time synthesized | Presets; plays under music, CarPlay | Unknown | No builder |

### Inferences
- Gap 1, visual builder in the browser: no live, maintained browser product offers a visual engine builder with geometry-level parameters such as bank angle, crank pin angles and runner lengths. This is the strongest differentiation. The closest is the App Store id6772016143 mobile app (claims bore/stroke/cam/firing order), not a browser.
- Gap 2, sharing: engine sharing is file- and GitHub-based for engine-sim. A shareable-URL engine (parameters encoded in the link) plus a gallery would be novel among the products found, and it also fits ad-funded traffic loops.
- Gap 3, accessibility: engine-sim's script barrier, Windows-only builds and CPU demands exclude casual, Mac, Chromebook and mobile users. A browser tool with an adaptive-quality synthesizer addresses this.
- Gap 4, dyno with sound: dyno and power curves exist only sporadically (engine-sim dyno, one mobile app, one unidentified browser sim). Pairing an approximate torque/HP curve with the custom engine is uncommon in browser tools.
- Competitive risks:
  - AngeTheGreat's Steam release (GUI + physics) could dominate enthusiast mindshare when it launches, though it will be desktop and paid.
  - WASM ports of engine-sim give browser users physics-quality sound for free now.
  - Groundcode/App Store builders may expand into deep customization on web and mobile.

### Gaps
- No Reddit or YouTube comparison content was retrievable to confirm user-perceived sound-quality rankings across these products.
- No traffic, usage or revenue data for any browser engine simulator was found, so ad-revenue potential cannot be benchmarked from this research.
- Monetization of most browser competitors is unverified because their pages were blocked.
