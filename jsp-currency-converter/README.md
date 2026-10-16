# Chuyển đổi USD sang VNĐ bằng JSP

Yêu cầu: JDK 17, Maven và Apache Tomcat 10.1.

## Chạy trên Windows
1. Giải nén, mở thư mục chứa pom.xml trong VS Code hoặc IntelliJ.
2. Mở Terminal tại thư mục đó, chạy `mvn clean package`.
3. Khi BUILD SUCCESS, copy `target/jsp-currency-converter.war` vào thư mục `webapps` của Tomcat.
4. Chạy `bin/startup.bat` trong thư mục Tomcat.
5. Mở http://localhost:8080/jsp-currency-converter/ (nếu Tomcat dùng cổng khác, thay 8080).

Không mở JSP bằng Live Server hoặc nhấp đúp file. JSP cần Tomcat xử lý Java.

## Kiểm tra
- Tỉ giá 25000, USD 100: kết quả 2.500.000 VNĐ.
- USD 0: kết quả 0 VNĐ.
- Tỉ giá 0, số âm, dữ liệu thiếu hoặc không phải số: không chấp nhận.
- Mở converter.jsp trực tiếp khi chưa nhập: hiển thị thông báo dữ liệu không hợp lệ.

## Cấu trúc và xử lý
index.jsp gửi rate và usd qua POST sang converter.jsp. Trang xử lý sử dụng Scriptlet để đọc dữ liệu, chuyển sang double, nhân USD với tỉ giá; Expression hiển thị kết quả. Tỉ giá 25000 chỉ là giá trị minh họa, không phải tỉ giá trực tuyến.

## Nộp bài
Tạo repository GitHub, chọn Add file > Upload files. Tải lên pom.xml, src, README.md và .gitignore; không tải thư mục target. Commit rồi sao chép link repository vào phần nộp bài. GitHub Pages không chạy được JSP.
