
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocsObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
    /* смотрю изменения по стейтам. Проще понять что сейчас происходит и ошибки отлавливать */
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    /* можно ловить ошибки всех блоков и логировать куда-нибудь в аналитику firebase, например */

    print(bloc);
    print(error);
  }

}