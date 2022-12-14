class FirebaseAuthError {
  late Error error;

  FirebaseAuthError({required this.error});

  FirebaseAuthError.fromJson(Map<String, dynamic> json) {
    error = (json['error'] != null ? new Error.fromJson(json['error']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.error != null) {
      data['error'] = this.error.toJson();
    }
    return data;
  }
}

class Error {
  late int code;
  late String message;
  late List<Errors> errors;

  Error({required this.code, required this.message, required this.errors});

  Error.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['errors'] != null) {
      errors = <Errors>[];
      json['errors'].forEach((v) {
        errors.add(new Errors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.errors != null) {
      data['errors'] = this.errors.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Errors {
  late String message;
  late String domain;
  late String reason;

  Errors({required this.message, required this.domain, required this.reason});

  Errors.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    domain = json['domain'];
    reason = json['reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['domain'] = this.domain;
    data['reason'] = this.reason;
    return data;
  }
}