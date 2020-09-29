import 'package:easy_localization/easy_localization.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:snaplist/snaplist.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderExample extends StatefulWidget {
  CarouselSliderExample({Key key}) : super(key: key);

  @override
  _CarouselSliderExampleState createState() => _CarouselSliderExampleState();
}

class _CarouselSliderExampleState extends State<CarouselSliderExample> {
  final dates = [
    DateTime(2020, 9, 20),
    DateTime(2020, 9, 21),
    DateTime(2020, 9, 22),
    DateTime(2020, 9, 23),
    DateTime(2020, 9, 24),
    DateTime(2020, 9, 25),
    DateTime(2020, 9, 26),
    DateTime(2020, 9, 27),
    DateTime(2020, 9, 28),
    DateTime(2020, 9, 29),
    DateTime(2020, 9, 30),
    DateTime(2020, 10, 01),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 60,
        viewportFraction: 0.4,
      ),
      itemCount: dates.length,
      itemBuilder: (BuildContext context, int itemIndex) => Container(
        child: Container(
          width: 120,
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Text(itemIndex.toString()),
        ),
      ),
    );
  }
}

class PageViewCustom extends StatefulWidget {
  PageViewCustom({Key key}) : super(key: key);

  @override
  _PageViewCustomState createState() => _PageViewCustomState();
}

class _PageViewCustomState extends State<PageViewCustom> {
  final dates = [
    DateTime(2020, 9, 20),
    DateTime(2020, 9, 21),
    DateTime(2020, 9, 22),
    DateTime(2020, 9, 23),
    DateTime(2020, 9, 24),
    DateTime(2020, 9, 25),
    DateTime(2020, 9, 26),
    DateTime(2020, 9, 27),
    DateTime(2020, 9, 28),
    DateTime(2020, 9, 29),
    DateTime(2020, 9, 30),
    DateTime(2020, 10, 01),
  ];

  PageController controller = PageController(viewportFraction: 0.1);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.custom(
        controller: controller,
        physics: BouncingScrollPhysics(),
        childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                width: 0,
                margin: EdgeInsets.all(1),
                child: DateOption(
                  date: dates[index],
                  isSelected: false,
                  isToday: false,
                ),
              );
            },
            childCount: dates.length,
            findChildIndexCallback: (Key key) {
              final ValueKey valueKey = key;
              final DateTime data = valueKey.value;
              return dates.indexOf(data);
            }),
      ),
    );
  }
}

class ListViewExample extends StatefulWidget {
  @override
  _ListViewExampleState createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  final DateTime currentDateTime = DateTime.now();
  int currentPage;
  final dates = [
    DateTime(2020, 9, 20),
    DateTime(2020, 9, 21),
    DateTime(2020, 9, 22),
    DateTime(2020, 9, 23),
    DateTime(2020, 9, 24),
    DateTime(2020, 9, 25),
    DateTime(2020, 9, 26),
    DateTime(2020, 9, 27),
    DateTime(2020, 9, 28),
    DateTime(2020, 9, 29),
    DateTime(2020, 9, 30),
    DateTime(2020, 10, 01),
  ];

  bool _isToday(DateTime date) {
    return date ==
        DateTime(
            currentDateTime.year, currentDateTime.month, currentDateTime.day);
  }

  FixedExtentScrollController fixedExtentScrollController =
      new FixedExtentScrollController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SnapList(
        count: dates.length,
        builder: (context, index, data) => DateOption(
          date: dates[index],
          isSelected: data.center == index,
          isToday: _isToday(dates[index]),
        ),
        separatorProvider: (index, data) => Size(0.0, 0.0),
        sizeProvider: (index, data) {
          // if (_isToday(dates[index])) {
          //   return Size(120, 40);
          // } else if (currentPage == index) {
          //   return Size(60, 40);
          // } else {
          //   return Size(40, 40);
          // }
          return Size(40, 60);
        },
      ),
    );
  }
}

class HorizontalLists extends StatefulWidget {
  HorizontalLists({Key key}) : super(key: key);

  @override
  _HorizontalListsState createState() => _HorizontalListsState();
}

class _HorizontalListsState extends State<HorizontalLists> {
  final DateTime currentDateTime = DateTime.now();
  var _focusedIndex;
  final dates = [
    DateTime(2020, 9, 25),
    DateTime(2020, 9, 26),
    DateTime(2020, 9, 27),
    DateTime(2020, 9, 28),
    DateTime(2020, 9, 29),
    DateTime(2020, 9, 30),
    DateTime(2020, 10, 01),
  ];

  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ScrollSnapList(
          onItemFocus: _onItemFocus,
          itemSize: 70,
          margin: EdgeInsets.all(0),
          itemCount: dates.length,
          focusOnItemTap: true,
          itemBuilder: (context, int index) => Container(
            width: 70,
            child: DateOption(
              index: index,
              date: dates[index],
              isSelected: _focusedIndex == index,
              isToday: _isToday(dates[index]),
            ),
          ),
        ),
      ),
    );
  }

  bool _isToday(DateTime date) {
    return date ==
        DateTime(
            currentDateTime.year, currentDateTime.month, currentDateTime.day);
  }
}

class DateSelectorSlider extends StatefulWidget {
  @override
  _DateSelectorSliderState createState() => _DateSelectorSliderState();
}

class _DateSelectorSliderState extends State<DateSelectorSlider> {
  int _currentSelectedDate = 3;
  double selectedPage;
  final DateTime currentDateTime = DateTime.now();
  final dates = [
    DateTime(2020, 9, 27),
    DateTime(2020, 9, 28),
    DateTime(2020, 9, 29),
    DateTime(2020, 9, 30),
    DateTime(2020, 10, 01),
  ];

  PageController controller = PageController(
    viewportFraction: 0.15,
    initialPage: 1,
  );

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {
        selectedPage = controller.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // card height
      child: PageView.builder(
        itemCount: dates.length,
        controller: controller,
        onPageChanged: _onPageChanged,
        itemBuilder: (_, index) {
          return ConstrainedBox(
            constraints: BoxConstraints.tight(Size(20, 20)),
            child: DateOption(
              index: index,
              date: dates[index],
              isSelected: _currentSelectedDate == index,
              isToday: _isToday(dates[index]),
            ),
          );
        },
      ),
    );
  }

  bool _isToday(DateTime date) {
    return date ==
        DateTime(
            currentDateTime.year, currentDateTime.month, currentDateTime.day);
  }

  void _onPageChanged(int index) {
    setState(() {
      if (DateTime.now().difference(dates[index]).inDays >= 1) {
        controller.animateToPage(
          1,
          duration: Duration(milliseconds: 600),
          curve: Curves.easeInExpo,
        );
      } else {
        _currentSelectedDate = index;
      }
    });
  }
}

class DateSelector extends StatefulWidget {
  const DateSelector({
    Key key,
  }) : super(key: key);

  @override
  _DateSelectorState createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  DateTime _currentSelectedDate = DateTime.now();
  int _currentPageIndex = 0;
  final DateTime currentDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(7, (index) {
          return DateOption(
            index: index,
            date: DateTime(2020, 9, 25 + index),
            isSelected: _currentPageIndex == index,
            isToday: _isToday(DateTime(2020, 9, 25 + index)),
            onChange: _onChange,
          );
        }),
      ),
    );
  }

  bool _isToday(DateTime date) {
    return date ==
        DateTime(
            currentDateTime.year, currentDateTime.month, currentDateTime.day);
  }

  void _onChange(int index, DateTime date) {
    setState(() {
      _currentSelectedDate = date;
      _currentPageIndex = index;
    });
  }
}

class DateOption extends StatelessWidget {
  final text;
  final isSelected;
  final isToday;
  final DateTime date;
  final DateFormat onlyDay = DateFormat('dd');
  final DateFormat completeDate = DateFormat('MMM d');
  final Function onChange;
  final int index;

  DateOption({
    Key key,
    this.text,
    this.isSelected,
    this.isToday,
    this.date,
    this.onChange,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60.0,
      width: 40.0,
      child: Stack(alignment: Alignment.center, children: [
        ButtonTheme(
          height: 25,
          padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
          minWidth: 0,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            color: isSelected ? Colors.red : Colors.white,
            splashColor: Colors.green,
            onPressed: () {
              onChange(this.index, this.date);
            },
            child: _renderDateText(),
          ),
        ),
        Visibility(
          visible: isToday && isSelected,
          child: Positioned(
            bottom: -2,
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(2),
              child: Text(
                'Hoje',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
        )
      ]),
    );
  }

  _renderDateText() {
    var finalText;

    if (this.isToday && isSelected) {
      // finalText = 'Hoje, ${completeDate.format(date)} de ';
      finalText = '${completeDate.format(date)}';
    } else if (isSelected) {
      finalText = '${completeDate.format(date)}';
    } else {
      finalText = onlyDay.format(date);
    }

    return Text(finalText,
        style: TextStyle(
          fontSize: 10,
          color: isSelected ? Colors.white : Colors.black,
        ));
  }
}
