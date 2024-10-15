import 'package:egycan_app/Core/Utils/singleton_shared_preferences.dart';
import 'package:egycan_app/Feature/Cart/Presentation/Views/Widgets/location_list_item.dart';
import 'package:flutter/material.dart';

class LocationList extends StatefulWidget
{
  const LocationList({super.key,});

  @override
  State<LocationList> createState() => _LocationListState();
}

class _LocationListState extends State<LocationList>
{
  int location = -1;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(2, (index) => LocationListItem(
        onPressed: () async
        {
          setState(() => location = index);
          String clientLocation = location == 0 ? 'Within Vancouver' : 'Outside Vancouver';
          await SingletonSharedPreferences.instance.setString('location', clientLocation);
        },
        location: location,
        index: index,
      )),
    );
  }
}
