abstract class BaseApiSerivce {
  Future<dynamic> getGetApiResponse(String url);
  Future<dynamic> getPostApiResponse(String url, dynamic data);
}
