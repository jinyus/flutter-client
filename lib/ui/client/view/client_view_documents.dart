import 'package:flutter/material.dart';
import 'package:invoiceninja_flutter/ui/app/document_grid.dart';
import 'package:invoiceninja_flutter/ui/client/view/client_view_vm.dart';

class ClientViewDocuments extends StatelessWidget {
  const ClientViewDocuments({@required this.viewModel});

  final ClientViewVM viewModel;

  @override
  Widget build(BuildContext context) {
    final client = viewModel.client;

    return DocumentGrid(
      documents: client.documents.toList(),
      //onUploadDocument: (path) => viewModel.onUploadDocument(context, path),
      //onDeleteDocument: (document) => viewModel.onDeleteDocument(context, document),
    );
  }
}
