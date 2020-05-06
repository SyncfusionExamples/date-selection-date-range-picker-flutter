# How to get the selected date from the date range picker (SfDateRangePicker)


In the flutter date range picker, you can get the selected date of the date range picker using the `onSelectionChanged` callback.

## Step 1:
In initState(), set the default values for the selected date.

```xml
DateRangePickerController _controller;
DateTime _selectedDate;
String _date;
@override
void initState() {
  // TODO: implement initState
  _controller = DateRangePickerController();
  _selectedDate=DateTime.now();
  date=  DateFormat('dd, MMMM yyyy')
      .format(DateTime.now()).toString();
  super.initState();
}
```

## Step 2:
Implement the 'onSelectionChanged' callback of the flutter date range picker, to get the selected date. 

```xml
body: Column(
  children: <Widget>[
    Container(height:50
        ,child: Text('SelectedDate:''$_date')),
    Card(
      margin: const EdgeInsets.fromLTRB(50, 50, 50, 100),
      child: SfDateRangePicker(
        view: DateRangePickerView.month,
        selectionMode: DateRangePickerSelectionMode.single,
        onSelectionChanged: selectionChanged,
      ),
    )
  ],
),
```

## Step 3:
Using the `selectionChanged` event, you can get the selected date of the picker.

```xml
void selectionChanged(DateRangePickerSelectionChangedArgs args) {
  _date=DateFormat('dd, MMMM yyyy')
      .format(args.value).toString();
  SchedulerBinding.instance.addPostFrameCallback((duration) {
    setState(() {});
  });
}
```
**[View document in Syncfusion Flutter Knowledge base](https://www.syncfusion.com/kb/11410/how-to-get-the-selected-date-from-the-date-range-picker-sfdaterangepicker)**

**Screenshots**

<img alt="Selected date details" src="http://www.syncfusion.com/uploads/user/kb/flut/flut-892/flut-892_img1.png" width="250" height="250" />|
