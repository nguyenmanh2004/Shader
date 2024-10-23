# Ngôn ngữ HLSL và ShaderLab trong Unity

## Ngôn ngữ HLSL

**High-Level Shading Language (HLSL)** là ngôn ngữ lập trình được sử dụng để viết shader cho đồ họa 3D. HLSL cho phép các nhà phát triển định nghĩa cách mà các pixel, vertex, và các yếu tố khác trong một scene sẽ được xử lý và hiển thị trên màn hình. HLSL cung cấp các cấu trúc dữ liệu và cú pháp tương tự như C, giúp việc viết và bảo trì mã trở nên dễ dàng hơn.

## ShaderLab

**ShaderLab** là một ngôn ngữ và hệ thống mà Unity sử dụng để định nghĩa shader. ShaderLab cho phép bạn kết hợp HLSL với các thông tin và tính năng của Unity để tạo ra shader tùy chỉnh. Nó cung cấp các phần tử như:

- **Properties**: Để định nghĩa các thuộc tính có thể điều chỉnh từ Inspector trong Unity (như màu sắc, độ trong suốt, texture, v.v.).
- **SubShaders**: Để chỉ định nhiều cách thực hiện shader cho các tình huống khác nhau (ví dụ, cho các nền tảng khác nhau).
- **Passes**: Để chỉ định cách mà shader xử lý các bước rendering khác nhau.

## Tại sao Unity dùng HLSL và ShaderLab

1. **Tính linh hoạt**: HLSL cho phép các nhà phát triển tạo ra shader phức tạp và tối ưu hóa cho từng tình huống cụ thể.
2. **Tích hợp tốt với Unity**: ShaderLab được thiết kế để hoạt động tốt với Unity, giúp đơn giản hóa quy trình phát triển shader và cung cấp các tính năng đặc biệt như hỗ trợ cho các thuộc tính trong Editor.
3. **Hiệu suất**: Các shader được viết bằng HLSL có thể được biên dịch và tối ưu hóa cho nhiều loại GPU khác nhau, giúp cải thiện hiệu suất rendering trên các nền tảng khác nhau.
4. **Hỗ trợ cộng đồng**: HLSL và ShaderLab đã trở thành chuẩn trong phát triển game, với nhiều tài liệu và ví dụ có sẵn, giúp các lập trình viên dễ dàng học hỏi và áp dụng.
