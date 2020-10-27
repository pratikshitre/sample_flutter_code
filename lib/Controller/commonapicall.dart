import 'package:matrimony/View/Config/global.dart';

class MyApiCall {
  static Map<String, String> myApiCall = {
    "login": url + "appLogin/loginvue",
    "drawer-links":url + "appLogin/getrolelinks",
    "send-otp": url + "appLogin/verifyemail",
    "verify-otp": url + "appLogin/verifyotp",
    "password-change": url + "appLogin/savechangepassword",
    "getcertificate": url + "AppCertificate/getDocumentDropdown",
    "get-selected-document":url+"AppCertificate/getDocDetails",
    "delete-request":url+"AppCertificate/cancelRequest",
    "certificate-request-status":url+"AppCertificate/getCertificateStatus",
     "Division-allottment":url+"AppLearnerRegistration/divisionallotment",
     "subject-registration":url+"AppLearnerRegistration/showsubjectregistration",
     "exam_result":url+"AppLearnerExamination/getmarksheetslist",
     "assignment_submission":url+"AppAssignmentPortalSubmission/getinfo",
     "payfess":url+"appAccountsOnlineTransaction/allfeesdetails",
     "fees_recipts":url+"appAccountsReceipts/getStudentFeeRecipt",
    "subject-registration-priority":url+"appLearnerRegistration/subjectregistration",



     "testing":url+"AppLearnerAccounts/studentGuardianTeacher",
  };
}
