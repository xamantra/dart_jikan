import 'endpoints/anime/index.dart';
import 'endpoints/manga/index.dart';
import 'index.dart';

/// {@template jikan_docs}
/// # Jikan
/// [Jikan](https://jikan.moe/) is an **Unofficial** MyAnimeList API. It scrapes the website to satisfy the need for an API - which MyAnimeList lacks.
///
/// The word Jikan literally translates to Time in Japanese (時間). And that's what this API saves you of. ;)
///
/// Notice: Jikan does not support authenticated requests. You can not update your lists.
///
/// ⚡ Jikan is powered thanks to all its backers! 🙏 [[Become a backer](https://www.patreon.com/jikan)]
///
/// **API Path:** `https://api.jikan.moe/v3`
///
/// **API Version:** `v3.4`
///
/// [Status](https://status.jikan.moe/) | [Report an Issue](https://github.com/jikan-me/jikan-rest/issues/new) | [Discord](http://discord.jikan.moe/)
///
/// ## Information
/// ### Links
/// - [Jikan.moe](https://jikan.moe/)
/// - [About](https://jikan.moe/about)
/// - [Stuff using Jikan](https://jikan.moe/showcase)
///
/// ### Wrappers
/// Wrappers are available in more than 10 different languages, see the [Wrapper List](https://github.com/jikan-me/jikan#wrappers)
///
/// ### Rate Limiting
/// Daily Limit: **Unlimited**
/// - **30 requests** / minute
/// - **2 requests** / second
///
/// **Note: Cached requests are NOT throttled**
///
/// ### Bulk Requests
/// This API serves as a purpose for apps/projects that are user based and make a nominal amount of requests.
///
/// ⚠️ If you're using the service for the sake of populating data/making your own database;
/// - You are breaching [MyAnimeList's Terms Of Service](https://myanimelist.net/membership/terms_of_use). You are responsible for what you're doing.
/// - **You MUST use a delay of 4 (FOUR) SECONDS between each request**
/// - Requesting from multiple servers/IPs is being cheeky and is **NOT** allowed
/// - **ABUSING THE API WILL RESULT IN GETTING BLOCKED FROM THE SERVICE**
///
/// If you're not comfortable being that restrictive, consider setting up your own Jikan REST API - It's super easy.
/// - [Jikan REST API - GitHub](https://github.com/jikan-me/jikan-rest)
/// - [Jikan REST API - Docker](https://github.com/fethica/jikan-rest-docker)
///
/// ### Disclaimer
/// - Jikan is not affiliated with MyAnimeList.net
/// - Jikan is a free, open-source API. Use it responsibly!
///
/// ### JSON Notes
/// - Any property (except arrays) whose value does not exist or is undetermined, will be `null`
/// - Any array property whose value does not exist or is undetermined, will be **empty**
/// - Any `score` property whose value does not exist or is undetermined, will be `0`
/// - All dates and timestamps are returned in **ISO8601** format and in **UTC**
///
/// ### Caching
/// By "caching", we refer to the data parsed from MyAnimeList that is cached temporarily on our servers for better performance.
///
/// All requests by default are cached for 24 hours except for a few API endpoints which have their own unique cache expiry time.
///
/// |Request|Cache TTL|
/// |:-|:-|
/// |`All (Default)`|24 hours
/// |`Meta`|5 minutes
/// |`User`|5 minutes
/// |`Search`|120 hours (5 days)
///
/// The following Response Headers will detail cache information
///
/// |Header|Remarks
/// |:-|:-|
/// |`Expires`|Expiry timestamp for the cache|
/// |`X-Request-Cached`|(boolean) Is the request cached?|
/// |`X-Request-Cache-Ttl`|(integer) Cache Time-To-Live in seconds|
///
/// **FAQ: Why is X-Request-Cache-Ttl negative?**
///
/// If the cache expires, it queues a job in the background to update the cache. So you're getting stale cache until the cache update completes.
///
/// ### Allowed HTTP(s) requests
/// `GET: All requests are done via GET`
///
/// **The Jikan REST API does not provide authenticated requests for MyAnimeList.** This means you can not use it to update your anime/manga lists.
///
/// **Reasons:**
/// - Why on earth would you send your credentials to a 3rd party API?
/// - MyAnimeList will block our IP after multiple failed login attempts
///
/// However, do not fret. This is possible via their own website. [Read the Specification](https://github.com/jikan-me/jikan-auth/blob/master/SPECIFICATION.md)
///
/// Furthermore, [JikanAuth](https://github.com/jikan-me/jikan-auth) is a PHP API which you can use to update your lists - it implements the **Specification** above. So feel free to come up with your own client-side solution.
/// {@endtemplate}

/// {@macro jikan_docs}
class Jikan with JikanDocs {
  /// {@macro jikan_docs}
  Jikan();

  get getAnime => jikanGetAnime;
  get getAnimeCharacterStaff => jikanGetAnimeCharacterStaff;
  get getAnimeEpisodes => jikanGetAnimeEpisodes;
  get getAnimeNews => jikanGetAnimeNews;
  get getManga => jikanGetManga;
}
