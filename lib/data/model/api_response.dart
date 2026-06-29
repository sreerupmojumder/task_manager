class ApiResponse {
  final int responseCode;
  final dynamic resposeData;
  final bool isSuccess;
  final String? errorMessage;

  ApiResponse({
    required this.responseCode,
    required this.resposeData,
    required this.isSuccess,
    this.errorMessage,
  });
  
}
