# JSP Servlet Demo — Thời gian hệ thống

## Yêu cầu
JDK 17, Maven và Apache Tomcat 10.1. Dự án sử dụng Jakarta Servlet 6.0, không dùng javax.servlet.

## Chạy trên Windows
1. Giải nén và mở Terminal trong thư mục chứa pom.xml.
2. Chạy `mvn clean package`.
3. Sau BUILD SUCCESS, copy `target/jsp-servlet-demo.war` vào thư mục `webapps` của Tomcat.
4. Chạy `bin/startup.bat` trong thư mục Tomcat.
5. Mở http://localhost:8080/jsp-servlet-demo/ hoặc http://localhost:8080/jsp-servlet-demo/hello.

Trên Linux/macOS dùng `bin/startup.sh`. Nếu Tomcat dùng cổng khác, thay 8080 bằng cổng cấu hình.

JSP cần Tomcat để xử lý Java; không mở bằng Live Server hoặc nhấp đúp file JSP.
Thời gian lấy từ máy chủ mỗi lần tải trang, không lấy từ đồng hồ trình duyệt.

## Nộp bài
Upload toàn bộ mã nguồn trong thư mục này lên GitHub. Không upload target. Nộp link repository.

## Trạng thái kiểm tra
Đã kiểm tra cấu trúc file và XML. Môi trường tạo mã nguồn không có Maven/Tomcat nên chưa chạy build hoặc triển khai; cần chạy các bước trên để kiểm tra thực tế.
