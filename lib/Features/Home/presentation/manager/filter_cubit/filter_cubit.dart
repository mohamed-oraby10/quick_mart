import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Home/domain/emuns/filter_type.dart';

class FilterCubit extends Cubit<FilterType?> {
  FilterCubit() : super(null);
    void selectFilter(FilterType filter) {
    emit(filter);
  }

  bool get hasSelection => state != null;
}
