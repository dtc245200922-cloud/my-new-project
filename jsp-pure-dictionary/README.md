# Từ điển Anh – Việt bằng JSP

Yêu cầu: JDK 17, Maven, Tomcat 10.1.

## Chạy
Mở Terminal ở thư mục chứa pom.xml, chạy:

```powershell
mvn clean package
```

Copy target/jsp-pure-dictionary.war vào thư mục webapps của Tomcat, chạy bin/startup.bat.
Truy cập http://localhost:8080/jsp-pure-dictionary/ . Không chạy JSP bằng Live Server.

## Chức năng
Form index.jsp gửi POST với trường search sang dictionary.jsp. Scriptlet tạo Map và tra từ; Expression hiển thị nghĩa hoặc thông báo không tìm thấy. Bỏ khoảng trắng đầu/cuối, không phân biệt chữ hoa/thường. Dữ liệu nhập được mã hóa HTML khi hiển thị.

## Kiểm tra
- hello → Xin chào
- book → Quyển sách
- computer → Máy tính
- student → Sinh viên
- how → Thế nào
- BOOK hoặc khoảng trắng bao quanh book → Quyển sách
- unknown → Không tìm thấy
- Truy cập dictionary.jsp không có tham số → Không tìm thấy, không lỗi server

## Nộp bài
Đưa toàn bộ pom.xml và src lên GitHub, giữ nguyên cấu trúc Maven. Nộp link thư mục jsp-pure-dictionary. Không chỉ tải README hoặc ZIP lên GitHub.
