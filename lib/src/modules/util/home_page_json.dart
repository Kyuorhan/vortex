import 'package:tmdb_api/tmdb_api.dart';

final tmdbWithCustomLogs = TMDB(
  //TMDB instance
  ApiKeys(
      'https://api.themoviedb.org/3/movie/550?api_key=23f2aa225f50dc713735d0cce965abe0',
      'apiReadAccessTokenv4'),
  logConfig: ConfigLogger(
    showLogs: true, //must be true than only all other logs will be shown
    showErrorLogs: true,
  ), //ApiKeys instance with your keys,
);

const List sliders = [
  'https://www.nerdsite.com.br/wp-content/uploads/2019/12/Wonder-Woman-1984-Timeline-Explained.jpg',
  'https://www.okseries.co/wp-content/uploads/2017/05/the-100-saison-7-5-768x450-1.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kxFxtYdaIaGsp3N9KEtPSj7yqEE.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/j5f5bRlpChRuyHdexmeSnQmklDt.jpg',
];

const List buttons = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qrT2rEzUuaqdC2QOE28WK36ue9H.jpg',
  'https://www.okseries.co/wp-content/uploads/2017/05/the-100-saison-7-5-768x450-1.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
];

const List continueWatchings = [
  {
    "name": "Assistir",
    "timeline": 90.0,
    "imageUrl":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sWgBv7LV2PRoQgkxwlibdGXKz1S.jpg"
  },
  {
    "name": "S1:E10",
    "timeline": 40.0,
    "imageUrl":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cm5xwxoWl2ZWuCKzwa0umHHsbmI.jpg"
  },
  {
    "name": "S2:E12",
    "timeline": 50.0,
    "imageUrl":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cfhfcEt4bOXuVZkTC0nNBpqqiWb.jpg"
  },
  {
    "name": "Space...",
    "timeline": 70.0,
    "imageUrl":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/u1RSyTfhoKBMlVqXfoEzGldlDtL.jpg"
  },
];

const List keepWatching = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/t0fSUE2KsFNGXwui9knxd3XsW8n.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
];

const List recomended = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/t0fSUE2KsFNGXwui9knxd3XsW8n.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zByhtBvX99ZiCQhac1sh9d9r6nb.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/h5UzYZquMwO9FVn15R2eK2itmHu.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tBrbDkZSiWbCEOpIV8GaDcPFDet.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wZ2cQ4moYnIrJVaave1KUqH33Gc.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1iVjKCGHPVNj7IQVB1DdpL8U7Y8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/719aIhGrTrJ0yzkZ806Ea4rbonV.jpg',
];

const List action = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lBw4rwfoLsHAs5pTISgIOFnRk2c.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kVelEAAPWMMXCNwsX7YVE8iOlYs.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/oktTNFM8PzdseiK1X0E0XhB6LvP.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nsoRsiUEakEO7VMIoa6Jkw4cPHs.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ArrOBeio968bUuUOtEpKa1teIh4.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tBrbDkZSiWbCEOpIV8GaDcPFDet.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/44aCR6cjH0FbzW6PMw3Ega178iW.jpg',
];

const List comedy = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/f496cm9enuEsZkSPzCwnTESEK5s.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ARIEA8fMTk8HLy8AyLbKyUjsqC.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7BCUw3eFDZBnPzqGyyjlZ62U6G.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hYNFywlOCBGBz8ZX7nDVpDHbsSG.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lH8CLypeehddHZt172TzUGWutH8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/22WUYECiv0phV61rBbfS7DvS6kT.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1iMnLhpgIf9nouTjpba9GBC9swI.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/n221QfWjZRb6QLDNcdomWjJrYVc.jpg',
];

const List romance = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
];

const List cartoon = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
];

const List horror = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
];

const List scienceFiction = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
];

const List documentary = [
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
  'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hq2igFqb31fDqGotz8ZuUfwKgn8.jpg',
];
