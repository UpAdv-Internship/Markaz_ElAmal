import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/features/booking/presentation/booking_cubit/booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(BookingInitial());

  //! Select Date
  DateTime? focusDate = DateTime.now();
}
