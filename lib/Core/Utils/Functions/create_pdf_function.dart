import 'package:egycan_app/Core/Utils/Functions/total_invoice_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import '../../../Feature/Cart/Data/Repositories/Models/cart_model.dart';
import '../constant_colors.dart';
import 'package:pdf/widgets.dart' as pw;

Future<void> createPdfAndShareItFunction({required List<CartModel> allCartProducts, required BuildContext context, required String username, required String location}) async
{
  final pdf = pw.Document();
  final ralewayFontBold = await PdfGoogleFonts.ralewayBlack();
  final ralewayFontMedium = await PdfGoogleFonts.ralewayMedium();
  final poppinsFontMedium = await PdfGoogleFonts.poppinsMedium();
  final poppinsFontRegular = await PdfGoogleFonts.poppinsBlack();
  final cairoFontMedium = await PdfGoogleFonts.cairoMedium();

  final img = await rootBundle.load('Assets/Images/EgyCan.png');
  final imageBytes = img.buffer.asUint8List();
  double deliveryCost = totalInvoiceFunction(allCartProducts: allCartProducts) * 0.05;
  double totalCost = totalInvoiceFunction(allCartProducts: allCartProducts);

  pdf.addPage(
    pw.MultiPage(
      build: (pw.Context context) => [
        pw.Center(child: pw.Image(pw.MemoryImage(imageBytes), height: 190.h, width: 190.w)),

        pw.SizedBox(height: 10.h),

        pw.Center(child: pw.Text('#EgyCan Invoice Payment', style: pw.TextStyle(fontSize: 30.h, font: ralewayFontBold))),

        pw.SizedBox(height: 25.h),

        pw.Center(child: pw.Text(username, style: pw.TextStyle(fontSize: 20.h, font: poppinsFontRegular))),

        pw.SizedBox(height: 50.h),

        pw.Container(
          height: 50.h,
          decoration: pw.BoxDecoration(
            color: PdfColor.fromInt(pyramidsColor.value),
            borderRadius: pw.BorderRadius.circular(10),
          ),

          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(horizontal: 10.w),
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text('Items', style: pw.TextStyle(font: ralewayFontMedium, fontSize: 20.sp, color: PdfColor.fromInt(white.value))),

                pw.Text('Quantity * Price', style: pw.TextStyle(font: ralewayFontMedium, fontSize: 20.sp, color: PdfColor.fromInt(white.value))),
              ],
            ),
          ),
        ),

        pw.Column(
          children: List.generate(allCartProducts.length, (index) => pw.Padding(
            padding: pw.EdgeInsets.symmetric(vertical: 10.h),
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.SizedBox(
                  width: 275.w,
                  child: pw.Text(allCartProducts[index].productModel.productName, style: pw.TextStyle(font: cairoFontMedium, fontSize: 20.sp), textAlign: pw.TextAlign.end, maxLines: 2, textDirection: pw.TextDirection.rtl),
                ),

                pw.Text('(${allCartProducts[index].quantity} * \$${allCartProducts[index].productModel.productPrice})', style: pw.TextStyle(font: cairoFontMedium, fontSize: 20.sp)),
              ],
            ),
          )),
        ),

        pw.SizedBox(height: 10.h),

        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.SizedBox(
              width: 275.w,
              child: pw.Text(location == 'Within Vancouver' ? 'Delivery Cost (%5)' : 'Delivery Cost', style: pw.TextStyle(font: cairoFontMedium, fontSize: 20.sp), textAlign: pw.TextAlign.start, maxLines: 2),
            ),

            pw.Text(location == 'Within Vancouver' ? '\$${deliveryCost.toStringAsFixed(2)}' : 'Depends on destination', style: pw.TextStyle(font: poppinsFontMedium, fontSize: 20.sp)),
          ],
        ),

        pw.SizedBox(height: 50.h),

        pw.Center(
          child: pw.RichText(
            text: pw.TextSpan(
              style: pw.TextStyle(fontSize: 30.sp, font: poppinsFontRegular),
              children: [
                const pw.TextSpan(text: 'Total = '),

                pw.TextSpan(text: location == 'Within Vancouver' ? '\$${(totalCost + deliveryCost).toStringAsFixed(2)}' : '\$${totalCost.toStringAsFixed(2)}', style: pw.TextStyle(color: PdfColor.fromInt(green.value))),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  await Printing.sharePdf(bytes: await pdf.save(), filename: 'EgyCan Invoice Payment');
}