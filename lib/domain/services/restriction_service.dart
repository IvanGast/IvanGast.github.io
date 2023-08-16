import 'package:myapp/domain/contracts/i_repositories/i_shared_pref_repository.dart';
import 'package:myapp/presentation/contracts/i_restriction_service.dart';

class RestrictionService implements IRestrictionService {
  RestrictionService({
    required this.sharedPref,
  });

  ISharedPref sharedPref;

  @override
  bool checkRestriction() {
    return sharedPref.isRestrictionPassed;
  }

  @override
  void setRestriction() {
    sharedPref.isRestrictionPassed = true;
  }
}
