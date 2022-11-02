import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Basic Widget gồm
///1.Scaffold :
///appBar :là 1 thanh ở trên cùng của Scaffold
///backgroundColor : màu nền của Scaffold
///body : là phần thân của Scaffold chứa 1 child
///bottomNavigationBar: là thanh điều hướng dưới cùng để hiển thị ở dưới cùng của Scaffold
///bottomSheet: là sheet dưới cùng để hiện thị (trên bottomNavigationBar)
///drawer là 1 bảng hiển thị được vuốt từ trái sang phải
///drawerDragStartBehavior : Xác định cách xử lý hành vi bắt đầu kéo được xử lý.
///drawerEdgeDragWidth: chiều rộng của khu  vực drawer
///drawerEnableOpenDragGesture: xác định xem có thể mở ra Scaffold hay không
///drawerScrimColor màu của drawer
///endDrawer một banner được hiển thị bên cạnh body được hiển thị bằng cách vuốt từ phải sang trái
///endDrawerEnableOpenDragGesture xác định nếu Scaffold.endDrawer có thể được mở bằng 1 cử chỉ trên mobile
///extendBody nếu đúng và  bottomNavigationBar or persistentFooterButtons liên tục được chỉ định thì body sẽ mở rộng xuống đáy của Scaffold thay vì chỉ mở rộng lên top của bottomNavigationBar hoặc của persistentFooterButtons
///extendBodyBehindAppBar nếu true nó sẽ cho giaoo diện nằm lên sau appBar luôn
///floatingActionButton tạo ra 1 nút hiển thị ở dưới góc phải dưới của body
///floatingActionButtonAnimator: hoạt ảnh khi di chuyển floatingActionButton đến floatingActionButtonLocation
///floatingActionButtonLocation chọn vị trí hiển thị cho FloatingActionButton trên giao diện
///onDrawerChanged: callback khi Scaffold.drawer is opened or closed
///onEndDrawerChanged: callback khi Scaffold.endDrawer is opened or closed
///persistentFooterButtons: list các widget button được hiển thị dưới bottom của body
///persistentFooterAlignment: set vị trí của các widget button trong persistentFooterButtons
///primary(mặc định là true) : nếu true thì chiều cao của appBar sẽ mở rộng bằng thanh trạng thái
///resizeToAvoidBottomInset: xác định Keyboard có làm ảnh hưởng đến giao diện hay không
///restorationId: nhập id để lưu hoặc khôi phục state của Scaffold
///2.AppBar:
///actions: là 1 list các widget hiển thị trên màn hình theo row sau title widget
///actionsIconTheme: set Thêm cho icon của action
///automaticallyImplyLeading: tự động thêm leading nếu leading null
///backgroundColor: set màu background cho appBar
///bottom: custom bottom của AppBar
///bottomOpacity: điều chỉnh Opacity của thuộc tính bottom
///centerTitle : true thì thanh title của appbar sẽ nằm ở giữa
///elevation: tạo độ để đặt thanh appbar liên quan đến parent
///excludeHeaderSemantics khi true thì tiêu đề sẽ được bao bọc bởi HeaderSemantics
///flexibleSpace tạo ra 1 widget nằm sau toolbar và tabbar
///foregroundColor set màu cho icon và title
///iconTheme custom theme icon của appBar
///leading: tạo 1 widget bên trái title(thường là icon,image,....)
///leadingWidth : xác định width của leading
///notificationPredicate : lắng nghe ScrollNotifications
///preferredSize : set chiều cao của toolbarHeight and the bottom
///primary : true, hiển thị thanh appBar ở top Screen
///scrolledUnderElevation : set độ cao cho cái gì đó có thể scroll bên dưới appBar
///shadowColor màu bên dưới appBar
///shape chỉnh shape cho appBar
///surfaceTintColor tạo lớp màu bao phủ
///systemOverlayStyle tạo kiểu cho lớp bao phủ
///title : set title cho appBar
///titleSpacing: set horizontal axis cho title(mặc định là 0.0)
///titleTextStyle dùng để set style cho title
///toolbarHeight dùng để xác định chiều cao của appBar
///toolbarOpacity tạo Opacity cho các thành phần trên appBar(mặc định là 1)
///toolbarTextStyle chỉnh style cho leading and action
///3.Container :
///alignment : căn chỉnh  child trong container
///child : container chứ 1 child Widget
///clipBehavior : khi Container.decoration is not null
///color set màu cho container
///constraints thêm contraints cho child  thông qua BoxConstraints
///decoration để decor phía sau cho child
///foregroundDecoration để decor phía trước cho child
///margin tạo khoảng cách bên ngoài decoration and child.
///padding tạo khoảng cách bên trong decoration and child.
///transform tạo độ nghiêng cho container
///transformAlignment : căn chỉnh cho transformAlignment
///4.Column :
///children: list các widget xếp theo hàng dọc
///mainAxisAlignment: căn chỉnh theo chiều ngang
///crossAxisAlignment: căn chỉnh theo chiều dọc
///mainAxisSize : không gian nên chiếm trong main(max or min)
///textBaseline : tạo đường cơ sở(ngang hay dọc )
///textDirection: tạo hướng đi cho text (ltr, rtl)
///verticalDirection: thiết lập thứ trự của các children(up, down)
///5.ElevatedButton :
///onPressed : nhấn sẽ nhận return
///child : có thể thêm 1 widget bất kì như text, img,..
///onLongPress : nhấn giữ sẽ nhận dc return
///onFocusChange: focus để nhận dc return
//onHover: hover để nhận dc return
///style tạo style cho button
/// focusNode
/// statesController

///6.FlutterLogo : tạo ra logo của flutter
///style : thêm chữ flutter cho logo
///size : kích thước của logo
///curve: tạo hiệu ứng cho logo
///duration : tạo thời gian chờ cho logo
///textColor : tạo màu chữ cho logo
///
///7.Icon :
/// Icons để tạo 1 icon
/// color : tạo màu cho icon
/// size : tạo kích thước  cho icon
/// semanticLabel : nhãn cho icon
/// textDirection : hướng cho text trong icon
/// shadows : tạo shadows cho icon

///8.Image : dùng để hiện thị 1 hình ảnh, có 5 cách : Image.new để lấy hình từ ImageProvider, Image.asset để lấy hình từ folder asset, Image.network để lấy hình trên mạng bằng URL,Image.file lấy hình từ file,  Image.memory lấy hình từ 1 Uint8List.
///alignment : chỉnh vị trí của hình trong giới hạn của nó
///height,width: chỉnh chiều cao và chiều rộng của hình
///centerSlice
///color :tạo color cho image được trộn với colorBlendMode
/// colorBlendMode được kết hợp với color
/// errorBuilder : hàm xử lý lỗi nếu k tải được hình
/// excludeFromSemantics : loại trừ hình ảnh ra khỏi semantics
///filterQuality : chất lượng kết xuất hình ảnh
///repeat : lặp hình
///semanticLabel : tạo label cho image
///opacity : tạo độ mờ cho image
///9.Placeholder: Giữ chỗ
/// child : tạo 1 child widget
/// color : tạo màu cho Placeholder
/// fallbackHeight,fallbackWidth: sử dụng để giữ chỗ trong những tình huống chiều cao,  chiều rộng k giới hạn
/// strokeWidth : nét đậm nhạt của trình các đường viền
///10.Row :là 1 hàng chứa các children (gồm 1 list các widget) xếp với nhau theo hàng ngang, có thể đặt các children theo ý thích bằng crossAxisAlignment và mainAxisAlignment
///tương tự như Column nhưng khác ở chỗ crossAxisAlignment là theo chiều dọc còn mainAxisAlignment theo chiều ngang
///11.Text : là widget hiển thị chữ
///data : nơi nhập text để hiển thị
///locale: để chọn 1 font khi cùng Unicode character
///maxLines : set line mà Text có được, nếu line ít hơn số chữ cần thì số chữ còn lại thì nó sẽ cắt theo overflow
///overflow xử lý khi bị tràn chữ
///selectionColor được sử dụng khi painting the selection.
///semanticsLabel : tạo label cho Text
///softWrap :
///strutStyle :
///style: tạo style cho text
///textAlign: căn chỉnh text theo chiều ngang
///textDirection: định hướng cho văn bản hiển thị rtl or ltr
///textScaleFactor : thêm số lượng pixel cho phông chữ
///textWidthBasis: xác định các đo chiều rộng của văn bản được hiển thị
class BasicWidget extends StatelessWidget {
  const BasicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(58, 248, 242, 246),
      bottomNavigationBar: const Text('bottomNavigationBar'),
      bottomSheet: const Text(
        "bottomSheet",
      ),
      drawer: Container(
        color: Colors.limeAccent,
        child: const Text(
          "drawer",
          style: TextStyle(fontSize: 40),
        ),
      ),
      drawerDragStartBehavior: DragStartBehavior.start,
      drawerEdgeDragWidth: 100.0,
      drawerEnableOpenDragGesture: true,
      drawerScrimColor: const Color.fromARGB(255, 228, 236, 243),
      endDrawer: const Text('endDrawer'),
      endDrawerEnableOpenDragGesture: true,
      onDrawerChanged: (isOpened) {
        // ignore: avoid_print
        print("onDrawerChanged");
      },
      onEndDrawerChanged: (isOpened) {
        // ignore: avoid_print
        print("onEndDrawerChanged");
      },
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        // ignore: avoid_returning_null_for_void
        TextButton(onPressed: () => null, child: const Text("data")),
        // ignore: avoid_returning_null_for_void
        TextButton(onPressed: () => null, child: const Text("data")),
      ],
      primary: true,
      extendBody: true,
      extendBodyBehindAppBar: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.navigation),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      resizeToAvoidBottomInset: true,
      restorationId: "id",
      // Tạo 1 khung bên ngoài
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.ac_unit_rounded,
          )
        ],
        automaticallyImplyLeading: true,
        backgroundColor: Colors.cyan,
        actionsIconTheme: const IconThemeData(
            size: 50, color: Color.fromARGB(255, 205, 20, 35)),
        title: const Text("Basic Widget"),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10.0),
          child: Container(
            color: Colors.orange,
            height: 4.0,
          ),
        ),
        bottomOpacity: 0.5,
        centerTitle: true,
        elevation: 1,
        excludeHeaderSemantics: true,
        flexibleSpace:
            // ignore: avoid_returning_null_for_void
            TextButton(onPressed: () => null, child: const Text("data")),
        foregroundColor: const Color.fromARGB(255, 10, 2, 2),
        iconTheme: const IconThemeData(size: 30),
        leading: const Icon(Icons.arrow_back_ios_rounded),
        leadingWidth: 70,
        notificationPredicate: (notification) => true,
        primary: true,
        scrolledUnderElevation: 0,
        shadowColor: Colors.deepPurple,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        surfaceTintColor: null,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.black),
        titleSpacing: 0,
        titleTextStyle: const TextStyle(color: Colors.black87, fontSize: 20),
        toolbarHeight: 70,
        toolbarOpacity: 1,
        toolbarTextStyle:
            const TextStyle(color: Color.fromARGB(221, 223, 15, 15)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          textBaseline: TextBaseline.ideographic,
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.down,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: FlutterLogo(
                size: 80,
                curve: Curves.decelerate,
                duration: Duration(seconds: 10),
                textColor: Colors.black,
                style: FlutterLogoStyle.markOnly,
              ),
            ),
            Row(
              children: const [
                Icon(
                  Icons.ac_unit_rounded,
                  color: Colors.lightBlue,
                  size: 70,
                  semanticLabel: "bông tuyến",
                  textDirection: TextDirection.ltr,
                  shadows: [BoxShadow(blurRadius: 20, color: Colors.white54)],
                )
              ],
            ),
            const Baseline(
              baseline: 100,
              baselineType: TextBaseline.ideographic,
              child: Placeholder(
                fallbackHeight: 80,
                fallbackWidth: 100,
                color: Colors.blueAccent,
                strokeWidth: 2,
                child: Text("Placeholder"),
              ),
            ),
            Container(
                transform: Matrix4.rotationZ(0.1),
                // transformAlignment: ,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(18.0),
                height: 400.0,
                width: 400.0,
                constraints: const BoxConstraints(
                    minWidth: 10, maxWidth: double.infinity),
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(60))),
                alignment: Alignment.center,
                clipBehavior: Clip.hardEdge,
                foregroundDecoration: const BoxDecoration(),
                transformAlignment: AlignmentDirectional.center,
                child: Column(
                  children: const [
                    Text("data"),
                    Image(
                      height: 100,
                      width: 100,
                      alignment: Alignment.bottomRight,
                      centerSlice: Rect.largest,
                      fit: BoxFit.fitHeight,
                      color: Colors.blueAccent,
                      colorBlendMode: BlendMode.hue,
                      excludeFromSemantics: true,
                      filterQuality: FilterQuality.medium,
                      repeat: ImageRepeat.repeat,
                      semanticLabel: "Image",
                      image: NetworkImage(
                          'https://is2-ssl.mzstatic.com/image/thumb/Purple124/v4/5b/3c/40/5b3c4039-1069-134c-b245-f75d836ed748/source/256x256bb.jpg'),
                    ),
                  ],
                )),
            const Text(
              "1234567890",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              selectionColor: Colors.amber,
              semanticsLabel: "Text",
              softWrap: false,
              strutStyle: StrutStyle.disabled,
              style: TextStyle(color: Colors.blue),
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: true),
              textScaleFactor: 2,
              textWidthBasis: TextWidthBasis.longestLine,
            ),
            const SizedBox(height: 30),
            const TextField(),
            ElevatedButton(
                autofocus: false,
                style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.black45;
                  }
                  return Colors.red; // Use the component's default.
                })),
                clipBehavior: Clip.hardEdge,
                onLongPress: () {},
                focusNode: FocusNode(debugLabel: "hai"),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Về Main"))
          ],
        ),
      ),
    );
  }
}
