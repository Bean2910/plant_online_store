import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/walkthrough_controller.dart';

class WalkthroughView extends GetView<WalkthroughController> {
  WalkthroughView({Key? key}) : super(key: key);
  final _controller = WalkthroughController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(32),
          child: Stack(
            children: [
              PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.SelectedPageIndex,
                itemCount: _controller.walkthroughPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    //margin: EdgeInsets.all(32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Expanded(
                            flex: 3,
                            child: Image(
                              image: _controller
                                  .walkthroughPages[index].imageAsset.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: Expanded(
                            flex: 2,
                            child: Text(
                              _controller.walkthroughPages[index].title,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Container(
                margin: EdgeInsets.only(bottom:70),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        _controller.walkthroughPages.length,
                        (index) => Obx(() {
                              return Container(
                                margin: EdgeInsets.all(4),
                                width: _controller.SelectedPageIndex == index
                                    ? 32
                                    : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: _controller.SelectedPageIndex == index
                                        ? Color(0xff01B763)
                                        : Color(0xffE0E0E0),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            })),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: _controller.forwardAction,
                  child: Obx(() {
                    return Text(
                        _controller.isLastPage ? "Get Started" : 'Next');
                  }),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff01B763),
                      foregroundColor: Colors.white,
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
