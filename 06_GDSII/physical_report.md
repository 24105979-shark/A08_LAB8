# A08 — Báo cáo Physical Design

## 1. Trạng thái

- RTL simulation: PASS.
- Python reference model: PASS.
- Yosys synthesis: PASS.
- Static Timing Analysis (STA): đã chạy và có báo cáo.
- Place-and-route: chưa xác nhận hoàn tất.
- GDSII: chưa có bằng chứng xác nhận đã tạo.
- DRC/LVS: chưa có báo cáo xác nhận đạt.

## 2. Kết quả synthesis

- Top module: `a08_popcount8`.
- Số standard cells trong hierarchy: 22.
- Số cell tuần tự: 0.
- Diện tích top module theo báo cáo synthesis: 240.2304 µm².
- Công cụ synthesis: Yosys 0.52.

## 3. Kết quả STA

- Startpoint: `a[6]`.
- Endpoint: `ones[3]`.
- Data arrival time: 1.31 ns.
- Data required time: 10.00 ns.
- Slack: 8.69 ns (MET).

Các số liệu trên thuộc cấu hình STA hiện tại, không thay thế kết quả timing signoff sau place-and-route.

## 4. Giới hạn

Chưa có bằng chứng xác nhận đã hoàn thành place-and-route, tạo GDSII hoặc đạt DRC/LVS. Vì vậy, báo cáo này không tuyên bố thiết kế đã hoàn tất physical signoff hoặc sẵn sàng chế tạo.

## 5. Tệp kết quả liên quan

- `synthesis/netlist.v`
- `synthesis/synth_stat.txt`
- `sta/summary.txt`
- `sta/timing_report_max.txt`
- `sta/wns.txt`
- `sta/tns.txt`
- `power/power_report.tx
