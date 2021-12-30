// ignore_for_file: avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:galaxy_moon_app/ui/appColors.dart';
import 'package:galaxy_moon_app/ui/appStrings.dart';
import 'package:galaxy_moon_app/widget/title_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: AppColor.complementary_2),
                ),
              ),
              Column(
                children: [
                  const TitleWidget(AppString.search),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: (null),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColor.secondary)),
                      child: Text(
                        AppString.whatLooking,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                  const TitleWidget(AppString.newMessages),
                  const TitleWidget(AppString.conversations),
                ],
              ),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie varius consectetur. Praesent quis hendrerit ante, in commodo justo. Suspendisse auctor, lectus ac ultrices suscipit, justo turpis sollicitudin enim, in luctus ex dolor quis libero. Nam posuere auctor urna, vel eleifend tellus luctus suscipit. Cras mollis eget augue quis congue. Aliquam pellentesque ullamcorper ornare. Nam hendrerit gravida nibh. Donec ultrices metus id diam convallis, sed feugiat enim varius. Donec eget augue semper leo varius vulputate. Fusce id orci sagittis, hendrerit eros scelerisque, commodo est. Praesent interdum sapien faucibus turpis sodales tempor sit amet ut lacus. Aenean porta mattis dictum. Aenean at eros sed lorem ultricies tincidunt in ac lectus. Vivamus tincidunt mattis urna iaculis egestas. Aliquam blandit eros ac elit iaculis, et lobortis velit tempor. Phasellus molestie arcu eu diam semper mollis. Aliquam luctus ullamcorper felis, sit amet congue tellus convallis id. Suspendisse convallis magna orci, sit amet feugiat eros imperdiet vel. Morbi massa orci, aliquet a ante vitae, vestibulum porttitor ligula. Phasellus volutpat tincidunt volutpat. Donec cursus suscipit odio, id viverra augue consectetur ac. Suspendisse commodo nulla ut neque commodo sollicitudin. Aenean maximus quam diam, sit amet tempus justo viverra id. Proin at lorem luctus, tempor ex eu, rutrum magna. Vivamus sed euismod sapien, at tristique risus. Praesent aliquam tortor ac nisi ornare, in pulvinar risus sodales. Mauris suscipit sed lacus vel gravida. Curabitur laoreet quam ut pulvinar iaculis. Nunc molestie nec nisi in tristique. Pellentesque consequat et orci eu viverra. Nunc turpis nisl, finibus vel dignissim ac, iaculis sed massa. Cras semper ipsum id pulvinar rhoncus. Sed elit neque, laoreet a blandit sit amet, ullamcorper in erat. Cras maximus velit turpis, non dignissim diam tempus lobortis. Curabitur semper, lacus et suscipit sollicitudin, nisl nunc venenatis urna, in iaculis nisi sapien id leo. Donec tristique ullamcorper cursus. Aliquam id ante non tortor pulvinar bibendum. Proin imperdiet diam ac felis rutrum congue. Vivamus sagittis tellus nec tempus faucibus. Aenean facilisis hendrerit augue. Nam ullamcorper ipsum tellus, ac vehicula eros volutpat quis. Pellentesque venenatis viverra diam, vel congue augue suscipit at. Nulla eget pharetra ligula. Nunc iaculis lobortis sapien a feugiat. Vivamus dignissim lacus sed mattis iaculis. Quisque imperdiet condimentum mollis. Phasellus elementum iaculis lacus, ut dapibus est semper in. Pellentesque efficitur eros nisl, sit amet consequat erat scelerisque id. Phasellus ac laoreet sem, vel egestas est. Morbi in ornare nunc, id semper urna. Etiam vulputate feugiat purus eget gravida. Aliquam non elementum nibh. Maecenas id velit purus. Proin venenatis ornare libero ut auctor. Pellentesque scelerisque ante sit amet lacus ultrices dapibus. Quisque interdum, justo at convallis luctus, ipsum massa congue arcu, vel euismod velit turpis rhoncus sem. Sed ultrices, justo et elementum tincidunt, leo est dapibus est, volutpat interdum nibh massa sit amet enim. Mauris porttitor orci nec nulla sodales mattis. Nam et ex enim.',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.element,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
