# basic-detect-arp-poisining-tool

Arp poisining saldirisinin sonucunda orta cikan sonuclara gore bu arac yazilmistir.
Eger arp poisining saldirisi basariyla gerceklesti ise demek ki <b>gateway</b>’imiz degismistir.

Bizde kodumuzda o andaki <b>gateway</b> degerini ogreniyoruz. Sonrasinda hep <b>gateway</b>’i kontrol ediyoruz.
Eger degisiklik var ise demekki saldiriya ugradik.

Bu arac icin gerekli araclar:
<ul>
  <li><b>GnuBash</b></li>
  <li>route</li>
  <li>awk</li>
  <li>notify-send</li>
</ul>

<b>GnuBash</b> haricinde diger araclarin sisteminizde olup olmadigini kontrol etmenize gerek yok. Script kontrol edicektir.

# Calistirma

```bash
  $ chmod +x detect-arp-poisining.sh
  $ ./detect-arp-poisining
  CurrentGateway: 192.168.1.1 ; NextGateway: 192.168.1.1
  Ayni, devam!
  CurrentGateway: 192.168.1.1 ; NextGateway: 192.168.1.1
  Ayni, devam!
  ...
  $ # Eger saldiri oldugunda program durur ve masaustunuzde bilgilendirir.
```


# Bu dokuman yazilirken kullanilan araclar:
<ul>
	<li><a href="https://github.com/neilsustc/vscode-markdown">Markdown All in One</a></li>
	<li><a href="https://github.com/yzane/vscode-markdown-pdf">Markdown PDF</a></li>
</ul>