# w4-homework
Merhaba. 4. hafta odeviniz Ruby on Rails ile kucuk bir proje yapmak olacak. Proeyi Github'a koyacaksiniz ve Heroku'ya ya da istediginiz baska bir yere deploy edip bana linkini DM'den Discord'dan atacaksaniz.

## Book Sharing Platfrom
Amacimiz insanlarin kayit olarak kitaplarini girebildikleri ve diger insanlar ile paylasabildikleri bir websitesi yapmak. Ancak simdilik kucuk adimlarla gittigimiz icin az ozellik yaparak basliyoruz. Bu odevde sizden istediklerim:

1) User signin/signup ve signout olabilmeli. Bunu yapmak icin lutfen Devise Ruby Gem''ni kullanin. User'in email adresi ve username'i olacak.
2) User kendine ait kitaplari girebilir. Bir kitabin title, author ve pagecount adinda alanlari olacak.
3) User kendi girdigi kitaplari editleye bilir ve silebilir.
4) User diger user'larin paylasilmasini istedigi kitaplari gorebilir. Diger user'lar tarafindan paylasilmak istenmeyen kitaplar baskalari tarafindan gorulemez. Sadece o kitabi ekleyenler gorebilir.
5) websiteniz.com adresine gidince bir Welcome sayfasi istiyorum. Bu sayfasi sadece public'ler gorebilir. Login olmadan diger sayfalar gorunemez. Eger kullanici loginse bu sayfada paylasilabilen kitaplarin listesini ve o kitaplarin adin, yazarini ve kitabi hangi kullancinin paylastigini gorebilir.

Islerin nasil yapilacagini soylemiyorum. Iliskileri kurmak, yeni alanlar ekleyerek kitaplarin gorunup, gorunmemesini saglamak tamamen sizin mimari tasariminiza kalmis. 

### Validations
- User modelinde email ve username zorunlu alanlar. username'un uzunlugu 5 karakterden az 50 karakterden fazla olamaz.
- Book modelinde title ve author zorunlu alanlar. 

### Adim adim yapilacaklar
- websitesi.com'a gidince welcome page gorulmeli. signup olunabilmeli. login olunabilmeli. kitap uzerinde CRUD islemleri yapilabilmeli. Diger insanlarin paylastigi kitaplari gorebilmeliyim.

### Dikkat edilecekler
- Kod icerisinde bahsettigimiz butun best practice'ler uygulanmali.
- Tasarim gerekli degil cunku bahsetmedik.
- Scaffold kullanabilirsiniz ancak gereksiz kod gormek istemiyorum.

### Son teslim
Cumartesi gunu saat 23:59'dan sonra commit'lenen odevler gecersiz sayilacaktir.

