import 'package:crypto_wallet/model/currency_model.dart';
import 'package:crypto_wallet/model/transactions_model.dart';
import 'package:crypto_wallet/view_model/account_screen_view_model.dart';
import 'package:crypto_wallet/widgets/custom_button.dart';
import 'package:crypto_wallet/widgets/custom_textform_field.dart';
import 'package:crypto_wallet/widgets/gradient_container.dart';
import 'package:crypto_wallet/widgets/indicator.dart';
import 'package:crypto_wallet/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class AccountScreenView extends StatefulWidget {
  const AccountScreenView({Key? key}) : super(key: key);

  @override
  State<AccountScreenView> createState() => _AccountScreenViewState();
}

List<String> options = ["option 1", "option 2"];

class _AccountScreenViewState extends State<AccountScreenView> {
  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    final List<Curreny> _currencies = [
      Curreny(
          coinColor: const Color(0xff4B70FF).withOpacity(0.6),
          lineSource: "eth_line",
          title: "Ethereum",
          shortCut: "ETH",
          logo: "eth_logo",
          value: "6780",
          increment: "10.56"),
      Curreny(
          coinColor: const Color(0xffBE1AF7).withOpacity(0.4),
          lineSource: "btc_line",
          title: "Bitcoin",
          logo: "btc_logo",
          shortCut: "BTC",
          value: "6780",
          increment: "10.56"),
      Curreny(
          coinColor: const Color(0xff00F4C8).withOpacity(0.4),
          lineSource: "eth_line",
          title: "Ethereum",
          shortCut: "ETH",
          logo: "eth_logo",
          value: "6780",
          increment: "10.56"),
    ];
    final List<TransactinosModel> _transactionsList = [
      TransactinosModel(
          destionationAddress: "7x8348urijkj3878392",
          name: "Ahmed",
          value: "0.05",
          type: "eth"),
      TransactinosModel(
          destionationAddress: "8x094059ijkj3878392",
          name: "Khalid",
          value: "0.045",
          type: "btc"),
      TransactinosModel(
          destionationAddress: "92wjodkrijkj3878392",
          name: "Taha",
          value: "4.0345",
          type: "eth"),
      TransactinosModel(
          destionationAddress: "83jedkjmijkj3878392",
          name: "Yonius",
          value: "0.745",
          type: "btc"),
      TransactinosModel(
          destionationAddress: "1x8348urijkj3878392",
          name: "Samar",
          value: "0.1345",
          type: "eth"),
      TransactinosModel(
          destionationAddress: "2x8348urijkj3878392",
          name: "Mona",
          value: "1.0345",
          type: "btc"),
    ];
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff081534),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset("assets/imgs/profile.png"),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notification_important_outlined,
                      color: Colors.white38,
                    ))
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Profile Balance",
                style: TextStyle(color: Color(0xffAFB4C0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "0.0456788 ETH",
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 18),
                  ),
                  Indicator(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "My Portfolio",
                style: TextStyle(color: Color(0xffAFB4C0)),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.separated(
                itemCount: _currencies.length,
                itemBuilder: (context, index) =>
                    GradientContainer(model: _currencies[index]),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Last Transactions",
                    style: TextStyle(color: Color(0xffFFFFFF)),
                  ),
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => _buildTransferDialog());
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Color(0xffFFFFFF),
                      ))
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: ListView.separated(
                  itemCount: _transactionsList.length,
                  itemBuilder: (context, index) =>
                      _buildTransactionsList(_transactionsList[index]),
                  separatorBuilder: (context, index) => const Divider(),
                )),
          ],
        ),
      ),
    ));
  }

  Widget _buildTransferDialog() {
    final size = MediaQuery.of(context).size;
    final _destuinationAddress = TextEditingController();
    final _value = TextEditingController();

    return StatefulBuilder(builder: (context, setState) {
      //
      return Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          width: size.width * 0.5,
          height: size.height * 0.6,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xffBE1AF7),
                  const Color(0xff4B70FF).withOpacity(0.9),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xffFFFFFF)),
          child: Consumer<AccountScreenViewModel>(
            builder: (context, accountViewModel, child) =>
                accountViewModel.isLoading
                    ? const LoadingWidget()
                    : Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Making Transaction",
                                style: TextStyle(color: Color(0xffFFFFFF)),
                              ),
                              IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: const Icon(
                                    Icons.close,
                                    color: Color(0xffFFFFFF),
                                  ))
                            ],
                          ),
                          const Divider(
                            color: Color(0xffFFFFFF),
                          ),
                          CustomTextFormField(
                            controller: _destuinationAddress,
                            title: "Destionation",
                            titleStyle: const TextStyle(
                              color: Color(0xffAFB4C0),
                            ),
                          ),
                          CustomTextFormField(
                            controller: _value,
                            title: "Value",
                            titleStyle: const TextStyle(
                              color: Color(0xffAFB4C0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Radio(
                                  value: options[0],
                                  activeColor: const Color(0xff4B70FF),
                                  groupValue: currentOption,
                                  onChanged: (_val) {
                                    setState(() {
                                      currentOption = _val.toString();
                                    });
                                  }),
                              const Text(
                                "ETH",
                                style: TextStyle(color: Color(0xffFFFFFF)),
                              ),
                              const Spacer(),
                              Radio(
                                  value: options[1],
                                  activeColor: const Color(0xffBE1AF7),
                                  groupValue: currentOption,
                                  onChanged: (_val) {
                                    setState(() {
                                      currentOption = _val.toString();
                                    });
                                  }),
                              const Text("BTC",
                                  style: TextStyle(color: Color(0xffFFFFFF)))
                            ],
                          ),
                          CustomButton(
                            buttonName: "Transfer",
                            onPressed: () {
                              accountViewModel.changeLoading();
                              print(accountViewModel.isLoading);
                            },
                          )
                        ],
                      ),
          ),
        ),
      );
    });
  }

  Widget _buildTransactionsList(TransactinosModel model) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 3,
          color: const Color(0xff081534),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Currency Type :",
                    style: TextStyle(color: Color(0xffAFB4C0)),
                  ),
                  Text("User ", style: TextStyle(color: Color(0xffAFB4C0))),
                  Text("Value ", style: TextStyle(color: Color(0xffAFB4C0))),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(model.type,
                      style: const TextStyle(color: Color(0xffFFFFFF))),
                  Text(model.name,
                      style: const TextStyle(color: Color(0xffFFFFFF))),
                  Text(model.value,
                      style: const TextStyle(color: Color(0xffFFFFFF))),
                ],
              ),
              const Spacer(),
              SvgPicture.asset("assets/icons/${model.type}_logo.svg")
            ],
          ),
        ),
      );
}
