class SearchResult {
  String query;
  List<String> results;

  SearchResult({
    required this.query,
    required this.results,
  });

  factory SearchResult.fromMap(Map<String, dynamic> data) {
    return SearchResult(
      query: data['query'],
      results: List<String>.from(data['results']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'query': query,
      'results': results,
    };
  }
}

class Explore {
  List<String> trendingHashtags;
  List<String> recommendedPosts;

  Explore({
    required this.trendingHashtags,
    required this.recommendedPosts,
  });

  factory Explore.fromMap(Map<String, dynamic> data) {
    return Explore(
      trendingHashtags: List<String>.from(data['trendingHashtags']),
      recommendedPosts: List<String>.from(data['recommendedPosts']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'trendingHashtags': trendingHashtags,
      'recommendedPosts': recommendedPosts,
    };
  }
}
