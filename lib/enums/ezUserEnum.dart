enum EzUserPermissions {
  Administrator,
  Contributor,
  User
}

var userPermissionFromEnum = (EzUserPermissions p) {
  switch(p) {
    case EzUserPermissions.Administrator:
      return "Administrator";
    case EzUserPermissions.Contributor:
      return "Contributor";
    case EzUserPermissions.User:
      return "User";
  }
};