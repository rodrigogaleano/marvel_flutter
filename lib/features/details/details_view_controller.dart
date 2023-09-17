import 'package:flutter/material.dart';

import 'details_view.dart';

abstract class DetailsViewProtocol extends DetailsViewModelProtocol {
  VoidCallback? onTapBack;
}

class DetailsViewController extends StatefulWidget {
  final DetailsViewProtocol viewModel;

  const DetailsViewController({required this.viewModel, super.key});

  @override
  State<DetailsViewController> createState() => _DetailsViewControllerState();
}

class _DetailsViewControllerState extends State<DetailsViewController> {
  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DetailsView(viewModel: widget.viewModel);
  }

  void _bind() {
    widget.viewModel.onTapBack = () {
      Navigator.of(context).pop();
    };
  }
}
