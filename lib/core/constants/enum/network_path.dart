enum NetworkPath {
  BASE_URL,
  LOGIN,
  REGISTER,
  POST_REFRESH_TOKEN,
  COLLECTION_LIST,
  COLLECTION_LIST_BY_USER_ID,
  USER_INFORMATION,
  GET_USER_FEED,
  GET_USER_FOLLOW_SUGGESTION,
  GET_USER_LATEST_POSTS,

  GET_TRENDING_CONTENTS,
  GET_SEARCHED_USER,
  GET_USER_COMMENTS,
  GET_SEARCHED_BOOK, //Searching only book
  GET_SEARCHED_FILM, //Searching only film/series
  GET_SEARCHED_MUSIC, //Searching only music
  FOLLOW_USER,
  UN_FOLLOW_USER,
  CHANGE_PASSWORD,
  CONNECT_SPOTFY,
  CONTACT_US,
  POST_ADD_COMMENT_BOOK,
  POST_ADD_COMMENT_FILM,
  POST_ADD_COMMENT_MUSIC,
  ADD_PROFILE_PICTURE,
  OTHER_USER_LIST
}

extension NetworkPathValue on NetworkPath {
  String get path {
    switch (this) {
      case NetworkPath.BASE_URL:
        return 'https://api.favrea.com/api/v1';
      case NetworkPath.LOGIN:
        return '/auth/login';
      case NetworkPath.REGISTER:
        return '/auth/register';
      case NetworkPath.POST_REFRESH_TOKEN:
        return '/auth/refresh-token';
      case NetworkPath.COLLECTION_LIST:
        return '/account/lists';
      case NetworkPath.COLLECTION_LIST_BY_USER_ID:
        return '/account/lists/user-lists';
      case NetworkPath.USER_INFORMATION:
        return '/account';
      case NetworkPath.GET_USER_FEED:
        return '/feed/home';
      case NetworkPath.GET_USER_FOLLOW_SUGGESTION:
        return '/feed/latest-users';
      case NetworkPath.GET_TRENDING_CONTENTS:
        return '/feed/trending-contents';
      case NetworkPath.GET_USER_LATEST_POSTS:
        return '/feed/discover/paged';
      case NetworkPath.GET_USER_COMMENTS:
        return '/feed/user-comments';
      case NetworkPath.GET_SEARCHED_USER:
        return '/account/';
      case NetworkPath.GET_SEARCHED_BOOK:
        return '/books/';
      case NetworkPath.GET_SEARCHED_FILM:
        return '/films/';
      case NetworkPath.GET_SEARCHED_MUSIC:
        return '/musics/';
      case NetworkPath.FOLLOW_USER:
        return '/account/follow-user/';
      case NetworkPath.UN_FOLLOW_USER:
        return '/account/unfollow-user/';
      case NetworkPath.CHANGE_PASSWORD:
        return '/account/change-password';
      case NetworkPath.CONNECT_SPOTFY:
        return '/account/connect-spotify';
      case NetworkPath.CONTACT_US:
        return '/account/contact-us';
      case NetworkPath.POST_ADD_COMMENT_BOOK:
        return '/books/add-comment/';
      case NetworkPath.POST_ADD_COMMENT_FILM:
        return '/films/add-comment/';
      case NetworkPath.POST_ADD_COMMENT_MUSIC:
        return '/music/add-comment/';
      case NetworkPath.ADD_PROFILE_PICTURE:
        return '/account/add-profile-picture';
      case NetworkPath.OTHER_USER_LIST:
        return '/account/lists/user-lists/:';
      default:
        throw 'Not Found';
    }
  }
}
