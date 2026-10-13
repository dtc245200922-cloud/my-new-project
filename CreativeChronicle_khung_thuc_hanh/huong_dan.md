# Hoàn thiện trước khi nộp

Đây là khung hỗ trợ, chưa phải mã hoàn chỉnh.

1. Thanh tác giả: thêm nhóm avatar và thông tin; dùng d-flex align-items-center gap-3. Thanh ngoài dùng d-flex align-items-center justify-content-between flex-wrap gap-3. Đặt min-width: 0 và overflow-wrap: anywhere cho tên dài khi cần.
2. Gallery: thay các placeholder bằng img có alt. Chọn tỷ lệ khung ảnh bằng aspect-ratio; kiểm tra cả desktop lẫn mobile.
3. Recommended: thêm 4 div col-12 col-md-6 col-lg-3 dưới row g-3, mỗi cột chứa card h-100 và card-body.
4. Bootstrap: dưới 768px một cột, từ 768px hai cột, từ 992px bốn cột. mt-3 là margin-top 1rem; pb-2 là padding-bottom .5rem; gap-3 là gap 1rem theo thang mặc định.
5. Kiểm tra tại 375px, 768px, 1200px: không tràn ngang, tên dài xuống dòng, gallery không che văn bản, bài đề xuất có đúng 1/2/4 cột.
6. Nếu thêm ảnh mới: ảnh không có grid-area cố định sẽ được tự đặt vào các ô còn trống hoặc hàng ngầm. Không gán nhiều ảnh vào cùng vùng tên vì chúng sẽ chồng nhau.
7. Float vốn phục vụ văn bản bao quanh hình; cha chỉ có con float có thể không tự tính chiều cao nếu không tạo BFC hoặc clearfix. Flexbox không cần mẹo clear để chứa các flex item.
8. Upload creative_chronicle và hai file Markdown lên GitHub sau khi hoàn thiện, rồi nộp link repository.
