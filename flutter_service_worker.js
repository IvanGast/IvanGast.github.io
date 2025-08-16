'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "fe69fa4582ce28559784a43d3c3f36db",
"assets/AssetManifest.bin.json": "085115be2a2df2a3693a66d9e330f716",
"assets/AssetManifest.json": "a72a5c5491c87e448bfba4435620ad6c",
"assets/assets/badge/apple/cn.svg": "4641acc302b3ddc1937be912cef1da8d",
"assets/assets/badge/apple/de.svg": "b37fbda59ff4a48a379ec0f0fd7ffb1d",
"assets/assets/badge/apple/en.svg": "2928664fe1fc6aca88583a6f606d60ba",
"assets/assets/badge/apple/lt.svg": "a43f20522eade02a28db5c8c8c24087e",
"assets/assets/badge/apple/ru.svg": "bb9af37ca8b6d5d8d3fa3f19a01602bf",
"assets/assets/badge/apple/thai.svg": "dca5c1f72180309d1cc6bd34c2a37f07",
"assets/assets/badge/google/cn.png": "c38f6ffcbab3245ed2f9988188243ffe",
"assets/assets/badge/google/de.png": "3ea40ccd1d383ffeeeb82501c170d723",
"assets/assets/badge/google/en.png": "e6d552c5deec92675d47f9b89d816ab8",
"assets/assets/badge/google/lt.png": "265f1c8d5c77670c634b8c451381e27e",
"assets/assets/badge/google/ru.png": "736099d9ebd0a601d56befc9822cca50",
"assets/assets/badge/google/thai.png": "e56f4235ce956ce5743bf608de5e4966",
"assets/assets/font/orbitron-bold.otf": "09ab259d5e2eea3f66c23fe9393c437e",
"assets/assets/font/orbitron-light.otf": "9dd4520fabd05d483b5407eb7df041ef",
"assets/assets/font/orbitron-medium.otf": "5ae176a9f8dc825e92f4eaad32b23938",
"assets/assets/font/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/assets/font/Poppins-BoldItalic.ttf": "09775bde3e9448b38c063b746e21cb6b",
"assets/assets/font/Poppins-Italic.ttf": "5e956c44060a7b3c0e39819ae390ab15",
"assets/assets/font/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/assets/font/Poppins-SemiBold.ttf": "4cdacb8f89d588d69e8570edcbe49507",
"assets/assets/images/bg.png": "55c2d21b96f6c9f83873dd130800b1ed",
"assets/assets/images/compare.png": "5b56f9802676d4efefcb4a38cb58ed49",
"assets/assets/images/correctly.png": "642c02e4261d3ebcc3a9619c20430cee",
"assets/assets/images/flags/china.png": "64bfdc2e6022de7111889ea9c3da578c",
"assets/assets/images/flags/germany.png": "9853a2d3fb56281a87a491200ee68188",
"assets/assets/images/flags/lithuania.png": "671754bb43112cf3c80c538fd9e94c7e",
"assets/assets/images/flags/russia.png": "25dae180c200f216ae77798e0d7adc56",
"assets/assets/images/flags/thai.png": "d3ed51df0d46370fda0643c6fe04ba51",
"assets/assets/images/flags/uk.png": "3a8774e1b69bea1e3a3bc251b6f20916",
"assets/assets/images/justremember.png": "3eff129a026750e31184bdfc159898ad",
"assets/assets/images/letternumber.png": "458c00372bf02e2d6a9c315f9a6ba355",
"assets/assets/images/markthelast.png": "ea0bd24923342eae7d22106cf629ed8b",
"assets/assets/images/mentalcounting.png": "2fe15fb7020017030f84bcd71b9f7ecb",
"assets/assets/images/number_agility.png": "d9e85804bbf746ef6b1ad9493ceb6e28",
"assets/assets/images/remember_the_number.png": "137493d35398db1d4a6809f18f209a07",
"assets/assets/images/risingcolors.png": "cc8643bf4de00df01a450e9875b77ed5",
"assets/assets/images/sequence.png": "7dde8fd2f95383028c59428c1d86f150",
"assets/assets/images/sharp_eye.png": "973579904bb570350fb5c88f7703e3b8",
"assets/assets/images/simplecounting.png": "1695c949eea86cfcae9fc33236d86651",
"assets/assets/language/de.json": "a47ce9bed4db8650c7d84c4060b6cbe1",
"assets/assets/language/en.json": "bd667ef645a29a541efc54fbd0e824d8",
"assets/assets/language/lt.json": "a2587fb24ed30484604504e330eb9842",
"assets/assets/language/ru.json": "3ad7d1875d2225bbbfd05799e0b181a7",
"assets/assets/language/th.json": "ea011955fb2bf385e6bfa3db26b3e031",
"assets/assets/language/zh.json": "ad22680b956ae3f683cac55284bb88d4",
"assets/FontManifest.json": "93dd63c3acfe450760b52e856b59ada8",
"assets/fonts/MaterialIcons-Regular.otf": "ed8d24a5e6d7f5a0d9c3519d0ff88ae3",
"assets/NOTICES": "fedec6f4eac28c174ef34d671bbe33a1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.svg": "ea73034d8a3fea1d563845d299615296",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "43900db998853b078c9a42efee094cf5",
"icons/Icon-192.png": "0f518e98ecff2756254f85c903c5fbb6",
"icons/Icon-512.png": "7b5494969f920784f2bcbb84e4b9a90d",
"icons/Icon-maskable-192.png": "0f518e98ecff2756254f85c903c5fbb6",
"icons/Icon-maskable-512.png": "7b5494969f920784f2bcbb84e4b9a90d",
"index.html": "f79f7f27c8521ac14123c96442bb65bc",
"/": "f79f7f27c8521ac14123c96442bb65bc",
"main.dart.js": "4b183e8441192ec28c71ec13e97d1872",
"manifest.json": "01c3268c85bcf214bdd642e75fb5089c",
"version.json": "97fabf4d8d6068e21cf68a2f5e276769"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
