import 'dart:developer';
import 'dart:html' as html;
import 'dart:typed_data';

Future<void> sharePdfFunction(Uint8List pdfBytes, String fileName) async
{
  final blob = html.Blob([pdfBytes], 'application/pdf');
  final url = html.Url.createObjectUrl(blob);

  html.window.navigator.share({
    'title': 'Share PDF',
    'text': 'EgyCan Invoice Payment',
    'url': url,
    'files': [
      html.File([blob], 'EgyCan Invoice Payment.pdf')
    ],
  });
}