# Pshare NCKH Skill Pack — Euréka Fixed

Bản này sửa skill `pshare-nckh` theo chuẩn trình bày Euréka và các lỗi nhìn thấy trong file bài hiện tại.

## Cách dùng

Dùng lệnh:

```text
/nckh <đề tài hoặc yêu cầu>
```

Ví dụ:

```text
/nckh rà file Word này theo chuẩn Euréka
/nckh sửa bố cục và định dạng file này cho đúng Euréka
/nckh viết tiếp đề tài này nhưng chưa có dữ liệu khảo sát
/nckh phân tích file khảo sát thật và viết chương 4, chương 5
```

## Điểm sửa chính

- Thêm chế độ `STRICT_EUREKA`.
- Thêm module chuẩn Euréka.
- Chặn lỗi tóm tắt dài hơn 1 trang A4.
- Chặn lỗi body bị căn giữa toàn bộ.
- Chặn lỗi giãn dòng 1.0.
- Chặn lỗi lề trên/dưới 2.5 cm thay vì 2 cm.
- Chặn lỗi bảng rỗng/placeholder làm vỡ mục lục và danh mục bảng.
- Chặn lỗi để lại `Cập nhật sau khi mở Word`.
- Chặn lỗi để lại `[Cần bổ sung nguồn]` trong bản cuối.
- Bỏ `Lời cảm ơn` khỏi cấu trúc mặc định để tránh rủi ro lộ danh tính.
- Thêm kiểm tra ẩn danh: không tên tác giả, trường, logo trường, giảng viên hướng dẫn trong nội dung/phụ lục/bảng hỏi/metadata.
- Thêm render gate: nếu tạo/sửa `.docx`, phải render ra trang ảnh và kiểm tra layout trước khi giao.

## Cấu trúc

```text
pshare-nckh/
  SKILL.md
  README.md
  manifest.txt
  skills/
  templates/
  examples/
scripts/
  install-or-replace.ps1
```

## Cài nhanh vào repo hiện tại

Giải nén zip này vào thư mục repo `pshare-nckh`, rồi copy đè thư mục `pshare-nckh/` trong zip lên thư mục `pshare-nckh/` của repo.

Có thể dùng script PowerShell kèm theo:

```powershell
.\scripts\install-or-replace.ps1 -RepoRoot "C:\duong-dan\toi\pshare-nckh"
```

Sau đó commit và push:

```powershell
git status
git add .
git commit -m "Fix Euréka formatting skill"
git push
```
