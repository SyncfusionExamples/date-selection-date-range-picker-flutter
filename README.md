# How to get the selected date from the date range picker (SfDateRangePicker)


In the flutter date range picker, you can get the selected date of the date range picker using the `onSelectionChanged` callback.

## Step 1:
Inside the state, set the default values for the selected date.

```xml
final DateRangePickerController _controller = DateRangePickerController();
String _date = DateFormat('dd, MMMM yyyy').format(DateTime.now()).toString();
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
        controller: _controller,
        initialSelectedDate: DateTime.now(),
        view: DateRangePickerView.month,
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
  SchedulerBinding.instance!.addPostFrameCallback((duration) {
    setState(() {
       _date=DateFormat('dd, MMMM yyyy').format(args.value).toString();
    });
  });
}
```
**[View document in Syncfusion Flutter Knowledge base](https://www.syncfusion.com/kb/11410/how-to-get-the-selected-date-from-the-date-range-picker-sfdaterangepicker)**

**Screenshots**

<img alt="Selected date details" src="http://www.syncfusion.com/uploads/user/kb/flut/flut-892/flut-892_img1.png" width="230" height="400" />|
