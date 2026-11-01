# Monetization of a Free Browser-Based Engine Sound Simulator (Web Toy)

Research date: 2026-11-01. Source-access note: WebFetch failed with ENOTFOUND for developers.poki.com, docs.crazygames.com, support.google.com and app.cinevva.com. Those hosts are blocked by this environment's network policy, so findings from those domains come from WebSearch result snippets, not full-page reads. Most RPM/eCPM figures available on the open web come from vendor blogs and aggregators rather than primary datasets. They are labeled as such below.

## 1. Google AdSense for web tools/games: RPM by region, approval, and H5 Games Ads (Ad Placement API)

### Takeaway
No authoritative 2025–2026 AdSense RPM dataset by country exists in public. Blog and aggregator estimates put US page RPM around $5–$50 (one aggregate figure is ~$12) and Korean mobile-heavy blog traffic around $1–$2 page RPM, so the US-to-Korea gap is large (2–5x or more). Standard AdSense approval is a real risk for a single-page interactive tool ("low value content"). Google's separate H5 Games Ads product (Ad Placement API: interstitial and rewarded ads through `adBreak()`) is application-only, requires a site that hosts playable H5 games, and approval is not guaranteed.

### Cited Findings
**RPM / CPC by region (low-authority sources; ranges conflict)**
- No authoritative 2025 AdSense RPM-by-country dataset turned up. US estimates range from roughly $5 to $50 per 1,000 pageviews: one guide says $15–$40+, another $20–$50, and one reports a US average of $11.99 per 1,000 pageviews. All come from low-authority blogs, some over a year old. — [bloggingjoy](https://bloggingjoy.com/adsense-high-cpc-countries/); [techconda AdSense RPM Benchmarks 2025 (pub. 2026-02)](https://www.techconda.com/2026/02/adsense-rpm-benchmarks.html); [dicloak](https://dicloak.com/blog-detail/google-adsense-rpm-by-country-2025-how-to-maximize-revenue-across-countries); [superwebtricks](https://www.superwebtricks.com/adsense-earnings-per-views/)
- South Korea CPC data is thin and inconsistent. One table gives $0.10 per click, another $0.25–$1.40. — [thesrzone (originally a 2022 page, retitled "2025")](https://www.thesrzone.com/2022/03/adsense-cpc-rates-by-country-2022.html); [sarkarilist](https://sarkarilist.com/adsense-high-cpc-countries-list-2025/)
- A YouTube RPM tracker lists South Korea at $2.22 RPM (2026). This is YouTube revenue, not website AdSense, so it is not directly comparable. — [dynamoi YouTube AdSense RPM, 74 markets, 2026](https://dynamoi.com/data/youtube-adsense-rpm)
- Korean calculator/guide sites estimate that 70–85% of Korean blog traffic is mobile, and that mobile RPM is typically 50–70% of PC RPM. They report US traffic RPM tends to be 2–5x Korean RPM. Their worked example uses $1–$2 RPM for 1,000 PV/day, which gives about $30–$60/month. These are estimates, not measured data. — [calcnara AdSense revenue calculator](https://calcnara.com/calculators/adsense-revenue); [calcnara blog revenue guide](https://calcnara.com/guides/blog-revenue-guide)
- One Korean blogger case study: 100,000 pageviews at $1.28 RPM gave $128/month (individual anecdote). — [wikidocs blog](https://wikidocs.net/blog/@infoplant/19067/)
- A Korean blog cites 2025 example page RPMs of ₩3,000–6,000 (about $2–4). Its basis is unclear. — [adsensefarm.kr](https://adsensefarm.kr/cpm-change-response/)
- AdSense moved from CPC to CPM-based payment in 2024, along with the revenue-share update in February 2024. Publishers historically kept about 68% of ad spend for AdSense for content (Google kept about 32%). — [adsensefarm.kr](https://adsensefarm.kr/cpm-change-response/)

**Approval risk for single-page tools**
- A Google AdSense Community guide (about 3 years old) says AdSense is generally not suitable for web applications or "tools" sites. — [AdSense Community guide on "low value content"](https://support.google.com/adsense/community-guide/241032356/how-can-you-solve-the-low-value-content-adsense-disapproval-challenge?hl=en)
- Developers report "low value content" rejections for tool sites because pages show an interactive widget with little text, so crawlers see thin content. One developer was rejected even after adding FAQs and how-to text. — [toolpod.dev](https://toolpod.dev/blog/adsense-rejection-low-value-content); [neatforge](https://neatforge.com/guides/adsense-rejection-reasons-tool-sites/); [dev.to](https://dev.to/bdubs/i-applied-for-adsense-and-got-rejected-for-low-value-content-hog)
- Guides call a single-page application, or a site with broken or confusing navigation, a red flag. The usual advice is substantial original text, clear navigation, and About, Contact and Privacy pages. Some posts say site age and existing traffic also matter (anecdotal, not stated policy). — [dev.to blogzeros](https://dev.to/blogzeros/top-reasons-why-google-adsense-rejects-your-site-eog); [neatforge](https://neatforge.com/guides/adsense-rejection-reasons-tool-sites/)
- A 2026 guide on AdSense approval for gaming sites says the domain review checks that the site hosts actual H5 games, and that written gaming content alone does not qualify. — [adsenseaudit.net](https://adsenseaudit.net/guides/adsense-approval-gaming-sites)

**H5 Games Ads / Ad Placement API**
- Google says any publisher that owns an H5 games website can apply, provided it follows the Advertising and AdSense Program Policies. — [Google AdSense H5 Games Ads page](https://adsense.google.com/start/h5-games-ads/); [Get started with AdSense H5 Games Ads (help)](https://support.google.com/adsense/answer/9959170?hl=en)
- The Ad Placement API sign-up page (updated 2025-12-10 per snippet) describes a by-application product: "account approval is not guaranteed as it is subject to partner eligibility." Older third-party posts call it closed beta, which conflicts with Google's current page. — [developers.google.com Ad Placement sign-up](https://developers.google.com/ad-placement/docs/signup)
- A third-party guide says an approved AdSense account is required and that H5 eligibility does not replace the normal AdSense site review. I could not confirm this in Google's text. — [clickio blog](https://blog.clickio.com/h5-game-ads-google-ad-manager-adsense/); [yieldmonk](https://yieldmonk.com/blog/adsense-for-h5-games-heres-how-publishers-can-monetise-gaming/)
- Formats are interstitials and rewarded ads through `adBreak()`. The API ships inside the AdSense code. Placement types include `preroll` (before the UI renders), `start`, `pause`, `next`, `browse` and `reward`. Placements can be skipped with the statuses `frequencyCapped` or `noAdPreloaded`. — [Ad Placement API adBreak reference](https://developers.google.com/ad-placement/apis/adbreak); [Ad Placement API overview](https://developers.google.com/ad-placement/apis); [Example implementation](https://developers.google.com/ad-placement/docs/example)
- MonetizeMore markets AdSense H5 game ads as a "7-figure publisher's secret" (vendor marketing, no verifiable numbers). — [monetizemore](https://www.monetizemore.com/blog/game-monetize-online-games/)

### Inferences
- With mostly Korean, mostly mobile visitors, a realistic planning range for display page RPM is about $0.5–$2. With a US/EU-heavy audience, about $3–$15 is a more conservative planning band than the $20–$50 blog claims. These ranges come from the sources above, not from measured data for this project.
- To pass standard AdSense review, the engine simulator should not be a lone canvas page. It needs multiple crawlable content pages: engine explainers (firing order, cylinder layouts, why a V8 crossplane sounds different), how-to guides, a changelog and blog, plus About, Contact and Privacy pages.
- H5 Games Ads is the better format technically (pause and mute hooks, rewarded ads). Whether Google's reviewers treat a sound simulator as an "H5 game" is uncertain. Adding game-like structure (challenges, achievements, a "rev to redline" mini-game) would improve eligibility odds.

### Gaps
- No primary Google data on AdSense RPM by country or by category (games or tools) in 2025–2026. Google does not publish it.
- Could not read the full H5 Games Ads eligibility text (support.google.com blocked). It is unknown whether there are minimum traffic thresholds or region restrictions, such as availability for Korea-based publishers.
- No public data on H5 Games Ads eCPMs specifically, as distinct from general display ads.
- I could not source Google's rule on refreshing ads inside a single-page app (relevant because an SPA generates about one pageview per session). Check the AdSense program policies before adding any ad refresh.

## 2. Kakao AdFit: requirements, revenue levels, suitability for Korean visitors

### Takeaway
Kakao AdFit runs account review and per-media (per-site) review. It pays cash by bank transfer once confirmed earnings reach a ₩50,000 minimum. A rejected site cannot be re-reviewed. I found no credible public RPM or eCPM data for AdFit, so revenue cannot be benchmarked from public sources.

### Cited Findings
- Kakao reviews AdFit accounts, which are either individual or business type, "to ensure the reliability of ad supply and stable payment to members." Each registered site is reviewed separately, and a site that fails review cannot show ads. — [AdFit 서비스 운영정책 (official)](https://adfit.kakao.com/web/html/use_kakao.html)
- To be reviewed, a site must register the media and its ad units in the AdFit account and install the latest SDK and script. Review criteria include the site's content attributes, ad placement, and whether ad calls work. Review time varies. — [AdFit 운영정책 (official)](https://adfit.kakao.com/web/html/use_kakao.html); [Kakao Business AdFit guide](https://kakaobusiness.gitbook.io/main/partner/adfit)
- If a violation is found, the site is put on review hold with a warning and its ads stop. If a site is rejected, its ads stop and the same site cannot be re-reviewed (재심사가 불가). — [AdFit 운영정책 (official)](https://adfit.kakao.com/web/html/use_kakao.html); [2021 archived policy version](https://adfit.kakao.com/web/html/old/20210907/use_kakao.html)
- The minimum payout is ₩50,000, paid as cash to the registered bank account after Kakao reviews the payment request. For individual accounts, account changes are blocked while a payment request is pending. — [AdFit 운영정책 (official)](https://adfit.kakao.com/web/html/use_kakao.html)
- A user blog reports that payment requests can be made from the 21st to the end of each month, with payment around the 20th of the following month after review (anecdotal, not official). — [zibsin.net AdFit 수익 공개](https://zibsin.net/2558)
- One search summary suggested that AdFit sign-up may require Kakao's prior approval or an invitation, pointing to the AdFit info page. I could not corroborate this. — [AdFit info](https://adfit.kakao.com/info)

### Inferences
- Because a rejected site can never be re-reviewed, the site should be content-complete before applying to AdFit: explainer pages, policy pages, working ad slots. Applying with a bare simulator page could burn the domain for AdFit permanently.
- AdFit's advertiser demand is Korean (Kakao ecosystem), so it suits a mostly Korean audience. Its typical use is as a complement or backfill alongside AdSense rather than a replacement. That is common practice among Korean bloggers, but not sourced here.
- AdFit is a display-banner network. I found no evidence of rewarded or interstitial game formats comparable to H5 Games Ads, so it would be limited to banners outside the simulator canvas.

### Gaps
- No public RPM, eCPM or revenue-per-visitor figures for AdFit (2025–2026) from Kakao or credible publishers. Korean bloggers' payout screenshots exist but were not found in search snippets.
- Unknown whether AdFit has policies specific to game or interactive sites, or minimum traffic thresholds.
- Unknown whether AdFit offers a TCF-certified consent flow. This only matters if non-Korean EEA traffic is served AdFit ads.

## 3. Web game portals: CrazyGames, Poki, GameDistribution, itch.io

### Takeaway
Poki pays 100% of a game's earnings on traffic the developer brings and 50% on traffic Poki brings, but the revenue-share deal requires about 5-year web exclusivity (non-exclusive games get a one-time flat fee). CrazyGames does not publish its split, pays only for games selected for "Full Launch" with SDK-only ads, and caps the initial download at 50MB (20MB for mobile homepage). GameDistribution contractually pays 33% of net and has a history of payment complaints. itch.io takes a configurable 0–100% cut (10% default) but doesn't monetize embedded browser games through ads. Developer earnings data is sparse and anecdotal. The one per-play datapoint (about €1.20 per 1,000 plays on CrazyGames, older) implies large play counts are needed.

### Cited Findings
**Poki**
- Exclusive deals: "100% of the game's earnings when you bring the player. 50% of the game's earnings when Poki brings the player." Exclusivity covers only the open web, not Steam, app stores or consoles. The default term is 5 years. Poki says the term, revenue share and investment are "indicative" and set in each agreement. — [Poki Deal Types (sdk.poki.com)](https://sdk.poki.com/deals); [How we partner with you (developers.poki.com)](https://developers.poki.com/guide/revenue-deal-types)
- For games already live on other web platforms, or with a niche or short-term fit, Poki offers "a one-time flat license fee instead, with no revenue share." — [Poki Deal Types](https://sdk.poki.com/deals)
- Poki is curated, so submissions are reviewed. — [foundplay.io](https://foundplay.io/where-to-post-your-browser-game); [cinevva Poki guide (2026)](https://app.cinevva.com/guides/publish-game-poki)
- Scale: a March 2026 press release cites 100M monthly active players and 625M players overall, with no external funding. It says top performers earn up to €1M a year. Partner materials cite 90M monthly players. — [Yahoo Finance press release](https://finance.yahoo.com/sectors/technology/articles/poki-announces-milestone-625-million-050000965.html); [PocketGamer.biz](https://www.pocketgamer.biz/inside-pokis-vision-for-the-future-of-browser-gaming/)
- A third-party guide suggests about $500–$3,000/month as a "realistic" range for a first web game on Poki. This is anecdotal, and Poki publishes no averages. — [cinevva web game monetization (2026)](https://app.cinevva.com/guides/web-game-monetization)

**CrazyGames**
- Basic Launch: the SDK is optional and monetization is not available. Full Launch: the SDK and all integration requirements are mandatory. Developer Terms compensation requires a Full Launch release, no branding from other browser portals, a working SDK, no ads outside the SDK, and enough originality to stand apart from existing games. — [CrazyGames docs intro](https://docs.crazygames.com/requirements/intro/); [portalready CrazyGames](https://portalready.world/portals/crazygames/); [portalready Basic vs Full Launch](https://portalready.world/portals/crazygames-basic-launch-vs-full-launch/)
- File limits: up to 250MB total and 1,500 files. The initial download must be 50MB or less for Basic, and 20MB or less for mobile homepage eligibility. Without the SDK, total size counts and must be 50MB or less. With the SDK, measurement stops at the first gameplay-start event. — [CrazyGames technical requirements](https://docs.crazygames.com/requirements/technical/)
- The revenue share is not publicly disclosed. Compensation is calculated monthly from plays and ad performance. The 2026 CrazyGames x GameMaker jam terms give developers 60% of ad revenue after costs are recouped, and 70% of in-app purchases. These are jam terms, not the standard program. — [CrazyGames x GameMaker jam guide](https://crazygames.indiehero.io/cggmwj-jg/); [portalready portals compared](https://portalready.world/portals/)
- Agreeing to 2 months of exclusivity at launch reportedly raises the revenue share by 50% (third-party, older source). — [cinevva CrazyGames guide](https://app.cinevva.com/guides/publish-game-crazygames); [bountyboard](https://www.bountyboard.gg/blog/how-to-monetize-an-html5-game)
- Payouts are monthly via Tipalti once the balance passes €100. — [cinevva CrazyGames guide](https://app.cinevva.com/guides/publish-game-crazygames); [CrazyGames FAQ](https://docs.crazygames.com/faq/)
- The only per-play earnings benchmark found: about €1.20 per 1,000 plays on CrazyGames, from one developer's portfolio of simple games (older, anecdotal). — [cinevva CrazyGames guide (citing developer data)](https://app.cinevva.com/guides/publish-game-crazygames)

**GameDistribution (Azerion)**
- The developer agreement pays a fixed 33% of net revenue from in-game ads and purchases. Amounts under €100 roll over. Payment reportedly comes within 60 days of the monthly report. GD's FAQ instead markets an "equal" three-way split between publishers, developers and GD. — [GameDistribution developer terms](https://static.gamedistribution.com/terms/developer.html); [GD FAQ](https://gamedistribution.com/developers/faq/general-questions/why-should-i-upload-my-games-on-gamedistribution/); [portalready GameDistribution](https://portalready.world/portals/gamedistribution/)
- Older forum complaints (2018–2019): one developer had no payments for a year, and another claimed GD pays the first time and then stops. Posters also noted GD controls the gross-to-net calculation because it owns the ad stack and portals. Anecdotal and unverified. — [html5gamedevs "GameDistribution – Again and again"](https://www.html5gamedevs.com/topic/43494-gamedistribution-again-and-again-serious/); [html5gamedevs revenue share thread](https://www.html5gamedevs.com/topic/32413-gamedistributioncom-offers-revenue-share/)
- GD is a distribution network that syndicates games to many third-party sites, not a consumer portal. — [playgama comparison](https://playgama.com/blog/business-faqs/poki-vs-crazygames-vs-gamedistribution-revenue-share/)

**itch.io**
- Sellers set itch.io's cut anywhere from 0% to 100%, with a 10% default. One guide says embedded HTML5 games can accept donations only, so paid access needs a downloadable build. Another says no ads are allowed on itch pages. I could not verify either against itch.io docs. — [bountyboard](https://www.bountyboard.gg/blog/how-to-monetize-an-html5-game); [foundplay.io](https://foundplay.io/where-to-post-your-browser-game); [dinogame.gg](https://dinogame.gg/blog/how-to-monetize-a-browser-game/)

**Toys and simulators on portals**
- No source states Poki's or CrazyGames' policy on non-game toys or simulators. The relevant criteria found are CrazyGames' "originality" requirement for compensation and Poki's curation and "fit for our audience" language. — [portalready CrazyGames](https://portalready.world/portals/crazygames/); [Poki Deal Types](https://sdk.poki.com/deals)

### Inferences
- Portal math: at about €1.20 per 1,000 plays (older and anecdotal), €100/month needs about 83,000 plays/month and €1,000/month about 830,000 plays/month. Portals can deliver this, since Poki has about 90–100M MAU, but only if the title gets featured.
- Poki's 5-year web exclusivity conflicts with running your own AdSense or AdFit site for the same simulator. Choose one: (a) own site plus your own ads, or (b) a portal-exclusive version. A middle path is a lighter "portal edition" that is distinct from the full own-site version. Whether Poki would accept that needs confirming in negotiation.
- CrazyGames' 20MB initial-download cap for mobile homepage eligibility matters for an audio-heavy simulator. Engine samples or impulse responses must be lazy-loaded after the gameplay-start event, or the sound must be synthesized procedurally.
- A pure sound toy likely needs light game mechanics (objectives, unlocks, drag races, dyno challenges) to clear portal curation and CrazyGames' originality bar. This is an inference, since no explicit toy policy was found.
- GameDistribution's 33%-of-net share and its payment complaint history make it the weakest portal option. itch.io works best as a community and donation storefront, not an ad-revenue channel.

### Gaps
- Could not read Poki's or CrazyGames' full developer docs (blocked hosts). Toy and simulator acceptance, mobile requirements beyond file size, and Poki's technical limits remain unconfirmed.
- No r/gamedev or Reddit threads with recent (2025–2026) portal revenue numbers surfaced. Developer postmortems with plays-to-revenue figures are scarce.
- CrazyGames' standard revenue share is unknown, since only jam terms are public.
- No data on how much traffic a non-featured portal listing brings.

## 4. Alternative and complementary monetization: Patreon, Ko-fi, Steam, packs, sponsorships, YouTube

### Takeaway
The closest reference point, AngeTheGreat's Engine Simulator, earns about $4.6k–$5.4k/month on Patreon from about 1,000–1,300 paid members (about $4.30 per patron). Steam DLC sales freed the creator from relying on YouTube ads and sponsorships. Direct fan funding plus a paid desktop or Steam version appears to out-earn ads for this niche, but it depends on a large YouTube following. YouTube RPM for Korean viewers is low (about $2.22).

### Cited Findings
- Graphtreon (third-party tracker) lists ATG's Engine Simulator Patreon at about $5,429/month, 1,262 paid members, and $4.30 average per patron. — [Graphtreon](https://graphtreon.com/creator/atg_engine_simulator)
- PatreonStats showed 5,378 members and $4,594/month as of October 2025. Its estimated range is very wide ($3,036–$101,200/month) and should not be read as precise. — [PatreonStats](https://patreonstats.com/creator/atg_engine_simulator)
- Snapshots of the creator's own Patreon page show about 7,770 members and $5,111/month, with tiers from $3/month. An older snapshot showed 3,340 members, 1,059 paid, and $4,872/month. — [ATG's Engine Simulator Patreon](https://www.patreon.com/atg_engine_simulator); [Patreon about](https://www.patreon.com/user/about?u=78948597)
- The creator says the Patreon funds development costs rather than profit, and that the project is "fully funded." Patrons who contributed more than the game's release price get a free Steam key. — [Steam Community: Engine Simulator](https://steamcommunity.com/app/2381500); [Patreon post "Steam Engine Simulator Released"](https://www.patreon.com/atg_engine_simulator/posts/steam-engine-on-119808696)
- Sales of the Steam Engine Simulator DLC meant the creator is "no longer reliant on YouTube ads/sponsorships." Nearly 3,000 DLC keys went to past and current patrons. Posts are about 1–2 years old. — [Patreon post](https://www.patreon.com/atg_engine_simulator/posts/steam-engine-on-119808696)
- neal.fun, a free interactive web-toy collection, reportedly lets its creator make a full-time living from ad revenue (Wikipedia, citing interviews). Secondary sites estimate 8M+ monthly visitors, or 13.04M visits in March 2026. No revenue figure is public. — [Wikipedia: Neal Agarwal](https://en.wikipedia.org/wiki/Neal_Agarwal); [worldstoday](https://worldstoday.com/neal-fun/); [proearnly](https://proearnly.com/articles/neal-fun-creativity-success-story)
- YouTube RPM: South Korea about $2.22 (2026 tracker). — [dynamoi](https://dynamoi.com/data/youtube-adsense-rpm)
- Third-party guides describe licensing and sponsorship deals with portals: upfront or ongoing fees for exclusive or primary placement, not publicly standardized. — [Poki Deal Types](https://sdk.poki.com/deals); [generalistprogrammer Phaser monetization (2025)](https://generalistprogrammer.com/tutorials/phaser-game-monetization-guide)

### Inferences
- Patreon math at about $4.30 per paid patron (ATG's average): $100/month needs about 23 paid patrons and $1,000/month about 233. That is far fewer people than ad-based models need, but conversion depends on an engaged audience. ATG's funding grew out of popular YouTube devlogs.
- For a Korea-based creator, YouTube build or devlog videos are mainly a traffic and funnel driver. Korean-viewer RPM is low, so English-language videos reaching US/EU car enthusiasts would monetize better.
- A credible tiered model: a free web version (ads or no ads), a Patreon or Ko-fi tier with early access to new engines, and a paid Steam or desktop version with more engines, an engine editor, and offline or high-quality audio. ATG's Patreon-to-Steam path is the precedent.
- Steam's revenue split, fees, and Engine Simulator's Steam sales were not researched in detail here (no figures found).

### Gaps
- No public Steam sales numbers for ATG's Engine Simulator or its DLC.
- No data on Ko-fi or Buy Me a Coffee conversion rates, or on fees for creators in Korea (payout methods and KRW availability).
- No ATG YouTube subscriber count was sourced, so its Patreon conversion rate from YouTube audience is unknown.
- No sources on sponsorships (car brands, aftermarket exhaust brands) for engine-sound web toys.

## 5. Traffic math, session length, and ad formats for an audio app

### Takeaway
At Korean mobile-heavy RPMs (about $0.5–$2), $100/month needs roughly 50k–200k monetized pageviews/month, and $1,000/month needs roughly 0.5M–2M. US/EU traffic cuts that by about 2–5x or more. In a single-page simulator, long sessions don't create more display impressions by themselves. Revenue scales with ad events: pageviews, ad breaks and rewarded views. Banners and rewarded ads fit audio apps best. Interstitials must pause and mute audio through the Ad Placement API's `beforeAd`/`afterAd` callbacks.

### Cited Findings
- Monthly revenue = (pageviews ÷ 1,000) × page RPM. Visitors are not pageviews: 1,000 visitors/day × 1.5 pages ≈ 45,000 PV/month. Example: 1,000 PV/day at $1–$2 RPM ≈ $30–$60/month. — [calcnara](https://calcnara.com/calculators/adsense-revenue); [calcnara blog revenue](https://calcnara.com/calculators/blog-revenue)
- Format eCPMs for browser games (vendor and agency figures, which conflict): banners $0.50–$2, interstitials $3–$15, rewarded video $10–$50+ (Publift). Playgama's 2026 benchmark gives rewarded video at about $15–$28 in the US, $8–$15 in the EU, and $1–$3 in tier-3 markets. PixelGameCraft suggests planning around $8–$12 blended for global portal audiences. — [Publift game monetisation](https://www.publift.com/blog/game-monetisation); [PixelGameCraft HTML5 income (2026)](https://pixelgamecraft.com/blog/html5-game-income/); [cinevva (citing Playgama)](https://app.cinevva.com/guides/web-game-monetization)
- AppLixir says rewarded video often pays about 2x interstitials. MAF's US mobile benchmarks show a smaller gap: rewarded about $15.15 and interstitial about $12.65 eCPM. — [AppLixir](https://www.applixir.com/blog/rewarded-video-ads-vs-interstitial-ads-the-difference-explained/); [MAF rewarded ads stats](https://maf.ad/en/blog/rewarded-ads-stats/)
- Rewarded-ad opt-in is cited at 50–65% of active users as a 2026 benchmark (single vendor source, unverified). — [PixelGameCraft](https://pixelgamecraft.com/blog/html5-game-income/)
- Ad Placement API: in `beforeAd` "the game should pause and mute the sound. These actions must be done synchronously." `afterAd` restarts and unmutes. `adBreakDone` is always called. If no ad is available, `beforeAd`/`afterAd` are not called. Prerolls must not pass `beforeAd`/`afterAd`. Frequency capping can skip placements. — [Ad Placement API adBreak](https://developers.google.com/ad-placement/apis/adbreak)
- A Korean guide reports that informational and entertainment topics earn below-average RPM, while finance, legal and insurance earn above-average RPM. — [calcnara](https://calcnara.com/calculators/adsense-revenue)

### Inferences (worked numbers, built from the cited ranges)
- **Display ads on your own site, mostly Korean audience (page RPM $0.5–$2):** $100/month ≈ 50k–200k PV/month (about 1.7k–6.7k/day). $1,000/month ≈ 0.5M–2M PV/month (about 17k–67k/day).
- **Display ads, US/EU-heavy audience (page RPM about $3–$15):** $100/month ≈ 7k–33k PV/month. $1,000/month ≈ 67k–333k PV/month.
- **Rewarded ads (blended eCPM about $8–$12):** $1,000/month ≈ 83k–125k rewarded views/month. If 30% of sessions watch one rewarded ad (assumed, not sourced), that means about 280k–420k sessions/month. With a Korea-heavy audience, rewarded eCPM is likely lower, and no Korea-specific figure was found.
- **Portal (about €1.20 per 1,000 plays, older):** €100/month ≈ 83k plays, €1,000/month ≈ 830k plays.
- **Session length:** a simulator session can last many minutes but is usually one pageview. Long sessions raise revenue only through (a) natural ad-break points (switching engines, reloading a preset, entering a garage or menu), which map to `next`/`browse`/`pause` placements subject to frequency capping, (b) opt-in rewarded unlocks (a new engine, exhaust or turbo for 24 hours), or (c) multi-page site structure, where engine detail pages are separate URLs.
- **Audio-friendly ad design:** keep banners outside the canvas, where they never touch audio. Use rewarded ads for unlocks, which are user-initiated. Use interstitials only at user-paused moments, with synchronous mute in `beforeAd`. Avoid prerolls before the user's first rev, since they hurt first impressions and portals' engagement metrics. Avoid video or autoplay-sound ad units that would mix with engine audio. Ad-blocker prevalence in the car and PC enthusiast audience was not researched.

### Gaps
- No measured data on page RPM or eCPM for games, tools or entertainment specifically on Korean traffic.
- No public data on how session length correlates with ad revenue for web toys.
- No Korea-specific rewarded-video eCPM benchmarks for web.

## 6. Practical requirements: privacy policy, GDPR/CMP, ads.txt, COPPA

### Takeaway
To serve personalized AdSense ads to EEA and UK visitors (since 2024-01-16) and Swiss visitors (since 2024-07-31), a Google-certified, TCF-integrated CMP is required. Google's own "Privacy & messaging" CMP qualifies. ads.txt is not strictly mandatory, but AdSense shows an "Earnings at risk" warning without it. A car-themed toy is probably general or mixed audience, not child-directed. If some content is aimed at under-13s, AdSense's child-directed treatment tag disables interest-based ads.

### Cited Findings
- Google requires publishers serving personalized ads in the EEA and UK to use a Google-certified CMP integrated with IAB TCF, as of 16 January 2024. Switzerland followed on 31 July 2024. — [Google consent management requirements (AdSense Help)](https://support.google.com/adsense/answer/13554116?hl=en); [Google EU user consent policy help](https://www.google.com/intl/en_uk/about/company/user-consent-policy-help/)
- Google's own European regulations message in AdSense, Ad Manager and AdMob ("Privacy & messaging" tab) is certified under the TCF requirement. — [Google EU user consent policy help](https://www.google.com/intl/en_uk/about/company/user-consent-policy-help/); [How the Google CMP works (AdSense Help)](https://support.google.com/adsense/answer/16918505?hl=en)
- For Search Ads publishers, no ads serve if neither a certified TCF CMP nor the alternative parameter is present. — [Create a European regulations message (AdSense Help)](https://support.google.com/adsense/answer/14325056?hl=en)
- TCF version: third-party sources disagree. Some say v2.2, others v2.3. One 2026 guide says TCF v2.3 became mandatory for newly generated TC strings on 2026-03-01. Google's pages in the results don't name a version. — [secureprivacy](https://secureprivacy.ai/blog/adsense-certified-cmp); [selestl 2026–2027 guide](https://selestl.com/blog/google-adsense-cmp-setup-complete-2026-2027-guide); [datashyre](https://datashyre.com/google-consent-management-platform/); [Usercentrics press release (2024-01-31)](https://www.businesswire.com/news/home/20240131854508/en/Usercentrics-CMP-Is-Google-Certified-for-New-Publisher-Requirements)
- ads.txt: since 2019 AdSense has warned "Earnings at risk" for sites without a root-domain ads.txt, or whose ads.txt lacks the publisher ID. Sources disagree on impact: "not mandatory," versus "may reduce advertiser demand." A forum claim that Google stops buying on sites with incorrect IDs is unverified. Fixes reportedly clear within 24–48 hours of a recrawl. — [Search Engine Roundtable](https://seroundtable.com/google-adsense-ads-txt-file-28229.html); [Raptive help](https://help.raptive.com/hc/en-us/articles/360028451832); [mrvirk](https://mrvirk.com/ads-txt.html); [WebmasterWorld](https://www.webmasterworld.com/google_adsense/4874783.htm)
- AdSense offers a tag for child-directed treatment that disables interest-based and remarketing ads. It can be set per ad request, and request-level tags override site-level settings. — [AdSense help topic](https://support.google.com/adsense/topic/9020627?hl=en); [Ad Manager program policies](https://support.google.com/admanager/answer/4442399)
- A policy-analysis site says sites directed at under-13s must serve only non-personalized ads (not verified against Google's text). — [conductatlas](https://conductatlas.com/platform/google-ads/google-adsense-program-policies/child-directed-content-restrictions/)
- Mixed-audience sites, which are partly child-directed but where children aren't the primary audience, can use a neutral age screen and apply COPPA only to users under 13. A law-firm blog says the 2025 COPPA Rule formally recognizes this category. — [flexyconsent](https://flexyconsent.com/blog/coppa-childrens-privacy-mobile-games/); [promise.legal](https://blog.promise.legal/coppa-mixed-age-audience-actual-knowledge/)

### Inferences
- Minimum compliance checklist for the own-site route: privacy policy page (also commonly cited as needed for AdSense approval), Google CMP enabled in Privacy & messaging for EEA, UK and Swiss traffic, ads.txt at the domain root with the exact pub-ID line, and AdFit's ads.txt or script requirements if AdFit is used. Use your own domain, not a github.io subdomain, so ads.txt can sit at the root.
- An engine-sound simulator aimed at car enthusiasts is most plausibly general audience. Avoid kid-targeted branding (cartoon mascots, "for kids" copy) so the site is not classified as child-directed, which would mean non-personalized ads only and lower RPM. If marketed to children, tag ad requests as child-directed.
- Portals such as Poki and CrazyGames handle consent and ad compliance inside their SDKs. That is one practical advantage of the portal route for a solo developer (inferred from SDK-only ad rules, not from portal docs).

### Gaps
- Korean privacy law (PIPA) requirements for a Korea-based operator collecting analytics or ad identifiers were not researched, and no sources were found in this pass.
- Google's own ads.txt help page could not be read (support.google.com blocked).
- Whether AdFit requires or supports any consent mechanism for non-Korean visitors is unknown.
- Exact current TCF version requirement: sources conflict (v2.2 vs v2.3).
