Java 1.8
Tomcat 9.0
Hướng dẫn chạy:
 vao link https://www.microsoft.com/en-us/download/details.aspx?id=54671,down driver ,giải nén
rồi vào project chuột phải chọn Build Path-> Configure Build Path ,chọn tab libraries, chọn
Add External JARs chọn file sqljdbc4.2.jar trong sqljdbc_4.2\enu\jre8 trong thư mục vừa giải nén.
Sau đó vào sqljdbc_4.2\enu\auth\x64  copy file  sqljdbc_auth.dll vào C:\Program Files\Java\jre1.8.0_191\bin

Tiếp theo mở project trong eclipse lên thấy file SQLServerConnection trong Java Resource ->src->
connection ,ta để ý cái string này chỉ áp dụng nếu sql server không dùng tài khoản user/password,
bạn nào dùng thì sửa thành như sau nhé
String Username="sa";  
String Password="123";  
String connectionUrl = "jdbc:sqlserver://localhost:1433;" +  
 "databaseName=Hotel;user="+Username+";password="+Password+";characterEncoding=utf8"; 
Username/Pass là theo máy của bạn nhé

Sau này mình sẽ tạo file .gitignore để bỏ file này vào để khi push lên ko bị conflict do tùy máy
mỗi người
OK có vẻ sẽ chạy được ,các bạn để ý trong WebContent->Web-INF->lib là các thư viện mình xài nhé
muốn xài thư viện nào thì bỏ vào
Servlet sẽ là file xử lí các chức năng giống controller 
Jsp sẽ là file thể hiện lên trang web
file jsp thì bỏ vào WebContent
file servlet bỏ vào Java Resource-> src->servlet
file Include.jsp là file sử dụng chung nếu có gì sử dụng chung cho nhiều trang thì bỏ vào ví dụ
css file, chú ý vị trí bỏ vào so với bootstrap,  có thể sẽ bị bootstrap đè lên 

