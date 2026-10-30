# A08 — Giới hạn kiểm chứng

## 1. Đã có bằng chứng

- Python golden model: kiểm tra vét cạn 256 đầu vào.
- RTL simulation: 266 vector, 0 sai lệch, 1322 lần kiểm tra bất biến, 0 vi phạm.
- Yosys synthesis: 22 cell chuẩn trong hierarchy, 0 cell tuần tự.
- Diện tích top module theo báo cáo synthesis: 240.2304 um^2.
- STA: đường tới hạn được báo cáo từ a[6] đến ones[3], slack 8.69 ns.
- Báo cáo power: tổng công suất ước lượng 1.08e-05 W.

## 2. Giới hạn

- Chưa chạy gate-level simulation.
- Chưa chạy post-layout simulation với SDF.
- Chưa xác nhận place-and-route hoàn tất.
- Chưa có bằng chứng GDSII được tạo.
- Chưa có báo cáo DRC/LVS chứng minh kết quả sạch.
- Mô phỏng RTL không chứng minh thiết kế không có glitch.
- Ước lượng công suất phụ thuộc vào điều kiện và giả định của công cụ; không phải phép đo trên chip thật.

## 3. Công cụ và thư viện

- Icarus Verilog: 12.0 stable.
- Yosys: 0.52.
- Liberty: sky130_fd_sc_hd__tt_025C_1v80.lib.

## 4. Phạm vi kết luận

Các kết quả PASS chỉ áp dụng cho những bước đã chạy và log hiện có.
Không suy diễn rằng thiết kế đã qua physical signoff hoặc sẵn sàng chế tạo.
