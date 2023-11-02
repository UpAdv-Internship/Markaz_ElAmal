import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/features/booking/presentation/booking_cubit/booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(BookingInitial());

  //! Select Date
  DateTime? focusDate = DateTime.now();
  changeDate(selectedDate) {
    focusDate = selectedDate;
    emit(ChangeDateState());
  }

  //! Select Time
  List<String> dateList = [
    "12:00",
    "1:00",
    "2:00",
    "3:00",
    "4:00",
    "5:00",
    "6:00",
    "7:00",
    "8:00",
  ];
  int activeTime = 0;
  changeTime(index) {
    activeTime = index;
    emit(ChangeTimeState());
  }

  //! Select Payment
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = true;
  changeSelectedPayment(int x) {
    isSelected1 = isSelected2 = isSelected3 = false;
    switch (x) {
      case 1:
        isSelected1 = true;
      case 2:
        isSelected2 = true;
      case 3:
        isSelected3 = true;
        break;
      default:
    }
    emit(ChangeSelectedPaymentState());
  }
}
