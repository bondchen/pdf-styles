# ISG Demo

## Test Case 1 ✅

Send sample xml file to PE server

``` bash
curl -H "Content-Type: application/pdf" -X POST -k "https://10.240.27.32/e3/servlet/e3?file-type=xml&type=pdf&f=convert" -d "@e3demo.xml" --output testcase1.pdf
```

## Test Case 2 ✅

zip sample xml file and Send to PE server

``` bash
curl -H "Content-Type: application/pdf" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=e3demo.xml&input-entry-type=xml&file-type=zip&type=pdf&f=convert" --data-binary "@e3demo.zip" --output testcase2.pdf
```

## Test Case 3 ❌

Send ISG dita project with default stylesheet to PE server

``` bash
curl -H "Content-Type: application/pdf" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&file-type=zip&type=pdf&f=convert" --data-binary "@DCGTest.zip" --output testcase3.pdf
```

## Test Case 4 ❌

Send ISG dita project with lenovo stylesheet to PE server

``` bash
curl -H "Content-Type: application/pdf" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_hel.style&file-type=zip&type=pdf&f=convert" --data-binary "@DCGTest.zip" --output testcase4.pdf
```

## Test Case 5 ❌

``` bash
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_hel.style&file-type=zip&type=pdf&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@DCGTest.zip" --output testcase5.zip
```

## Test Case 6 ✅

``` bash
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_zh-tw_app.style&file-type=zip&type=pdf&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@DCGTest.zip" --output testcase6.zip
```

## Test Case 7 ✅

``` bash
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_hel.style&file-type=zip&type=pdf&print-engine-override=fosi&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@DCGTest.zip" --output testcase7.zip
```

## Test Case 8 ✅

``` bash
curl -H "Content-Type: application/zip" -X POST -k "https://peklpdcgpm5.lenovo.com/e3/servlet/e3?input-entry=SE350_messages_reference.ditamap&stylesheet=E:/Program%20Files/PTC/Arbortext%20PE/custom/doctypes/ditabase/8.5x11_book_hel.style&file-type=zip&type=pdf&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@DCGTest.zip" --output testcase8.zip
```

``` bash
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_hel.style&file-type=zip&type=pdf&print-engine-override=fosi&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@se350_de.zip" --output se350_pdf_de.zip
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_hel.style&file-type=zip&type=pdf&print-engine-override=fosi&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@se350_es.zip" --output output/se350_pdf_es.zip
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_hel.style&file-type=zip&type=pdf&print-engine-override=fosi&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@se350_fr.zip" --output output/se350_pdf_fr.zip
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_hel.style&file-type=zip&type=pdf&print-engine-override=fosi&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@se350_it.zip" --output output/se350_pdf_it.zip
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_hel.style&file-type=zip&type=pdf&print-engine-override=fosi&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@se350_pt.zip" --output output/se350_pdf_pt.zip
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_hel.style&file-type=zip&type=pdf&print-engine-override=fosi&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@se350_ru.zip" --output output/se350_pdf_ru.zip
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_ja.style&file-type=zip&type=pdf&print-engine-override=fosi&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@se350_ja.zip" --output output/se350_pdf_ja.zip
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_ko.style&file-type=zip&type=pdf&print-engine-override=fosi&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@se350_ko.zip" --output output/se350_pdf_ko.zip
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_th.style&file-type=zip&type=pdf&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@se350_th.zip" --output output/se350_pdf_th.zip
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_zh-tw.style&file-type=zip&type=pdf&print-engine-override=fosi&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@se350_tw.zip" --output output/se350_pdf_tw.zip
curl -H "Content-Type: application/zip" -X POST -k "https://10.240.27.32/e3/servlet/e3?input-entry=SE350_maintenance_manual.ditamap&stylesheet=C:/DCGTest/ditabase/8.5x11_book_zh-cn.style&file-type=zip&type=pdf&print-engine-override=fosi&zip-root=DCGTest&zip-output=yes&zip-include-composerlog=yes&f=convert" --data-binary "@se350_cn.zip" --output output/se350_pdf_cn.zip

```
