import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // theme
    var primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'درباره ما',
          style: TextStyle(color: Colors.white, fontSize: 14.0),
        ),
        backgroundColor: primaryColor,
      ),
      body: const Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text(
                textAlign: TextAlign.justify,
                'با کمال افتخار و احترام، ما، به عنوان سازنده آپلیکیشن آموزش قرآن کریم، از شما در خوش آمد گویی به این فضای معنوی و آموزشی، متشکریم. اینجا جایی است که ما به روشی متفاوت و با استفاده از فناوری، قرآن را به دلهای شما نزدیک می‌کنیم.'),
            SizedBox(height: 10.0),
            Text(
                textAlign: TextAlign.justify,
                'هدف ما از این پروژه، ارتقاء فرهنگ قرآنی و آگاهی بیشتر شما از معانی و مفاهیم این کتاب پر ارزش است. اعتقاد داریم که قرآن، منبعی است که همچون یک راهنمای کامل و کامیابی، راهنمای ما در هر زمان و مکان است. اما برای درک و استفاده بهتر از این کتاب زیبا، نیازمند آموزش و یادگیری معمولاً با روش‌های متنوع و شخصی سازی شده‌ای هستیم.'),
            SizedBox(height: 10.0),
            Text(
                textAlign: TextAlign.justify,
                'در اپلیکیشن آموزش قرآن کریم، ما همواره تلاش می‌کنیم تا هر فردی، با هر سطح دانشی که دارد، از مطالب قرآنی بهره‌مند شود. ویدیوهای آموزشی ما با استفاده از رویکردهای مدرن و فناورانه، علاوه بر ارائه محتوای معتبر و قابل اعتماد، سعی در جذابیت و دلبندی بیشتر مخاطبان دارند.'),
            SizedBox(height: 10.0),
            Text(
                textAlign: TextAlign.justify,
                'در اینجا، همراهی شما را در سفری خواهیم داشت که هدفش، نه تنها یادگیری مفاهیم و اصول قرآنی است، بلکه درک عمیق‌تر و ارتباط بیشتر با زندگی روزمره و ارزش‌های قرآنی است. امیدواریم این پروژه، با تلاش مشترک شما و ما، به رشد و شکوفایی معنوی شما و جامعه کمک کند.'),
            SizedBox(height: 10.0),
            Text(
                textAlign: TextAlign.justify,
                'با ما همراه باشید تا با دیدن و یادگیری از این اپلیکیشن آموزشی، هر روز به ارتقاء دانش و ایمان خود نزدیک‌تر شوید.'),
          ],
        ),
      ),
    );
  }
}
