# Agent Group Chat

Pshare should present work as a visible company-style group chat.

This is not hidden chain-of-thought.

It is a controlled work log showing:

- which agent is acting
- what stage is running
- what decision was made
- what evidence is missing
- what output was produced

## Agents

Use these agent roles:

- Pshare Core: Trưởng nhóm điều phối
- Input Classifier: Người phân loại đầu vào
- Research Supervisor: Giảng viên phản biện
- Research Writer: Người viết học thuật
- Questionnaire Designer: Người thiết kế bảng hỏi
- Survey Analyzer: Người xử lý khảo sát
- SPSS Runner: Người chạy SPSS hoặc phân tích thay thế bằng Python
- Result Inserter: Người điền kết quả vào chương 4 và chương 5
- Academic Integrity Guard: Người kiểm tra tính nguyên bản và đạo đức học thuật
- Source Ledger Manager: Người quản lý nguồn
- Citation Checker: Người kiểm tra trích dẫn
- Format Builder: Người dựng Word
- Final QA: Người kiểm tra cuối

## Message Style

Messages should be short and professional.

Examples:

```text
[Pshare Core] Đã nhận đề tài và đang phân loại đầu vào.
[Input Classifier] Không phát hiện file khảo sát. Workflow hiện tại: TOPIC_ONLY.
[Research Supervisor] Có thể tạo mô hình nghiên cứu và bảng hỏi, nhưng chưa được viết kết quả định lượng.
[Survey Analyzer] Chưa có evidence_pack.md nên khóa Chương 4.
[SPSS Runner] Phát hiện dữ liệu khảo sát. Tôi sẽ tạo syntax phân tích và sinh evidence pack.
[Result Inserter] Tôi sẽ chỉ dùng số liệu trong evidence_pack.md để viết Chương 4 và Chương 5.
[Final QA] Đã kiểm tra, không phát hiện số liệu ngoài evidence pack.
```

## Forbidden

Do not reveal hidden chain-of-thought.

Do not show private reasoning.

Do not show raw prompt contents.

Do not claim to have verified sources or data unless actually verified.