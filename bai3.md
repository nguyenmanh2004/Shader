# Shader trong Unity

Shader trong Unity được viết bằng sự kết hợp giữa ngôn ngữ HLSL (High-Level Shading Language) và ShaderLab.

## HLSL

- HLSL là ngôn ngữ lập trình được sử dụng để định nghĩa logic và tính toán của shader.
- Các hàm, biến, và cấu trúc dữ liệu trong shader được viết bằng HLSL.
- HLSL cho phép các nhà phát triển tạo ra shader phức tạp và tối ưu hóa cho từng tình huống cụ thể.

## ShaderLab

- ShaderLab là ngôn ngữ và hệ thống mà Unity sử dụng để định nghĩa shader.
- ShaderLab cho phép kết hợp HLSL với các thông tin và tính năng của Unity để tạo ra shader tùy chỉnh.
- Các phần tử của ShaderLab bao gồm:
  - **Properties**: Định nghĩa các thuộc tính có thể điều chỉnh từ Inspector trong Unity.
  - **SubShaders**: Chỉ định nhiều cách thực hiện shader cho các tình huống khác nhau.
  - **Passes**: Chỉ định cách mà shader xử lý các bước rendering khác nhau.

## Các khái niệm quan trọng

### Vertex Shader

- Vertex shader là một loại shader chịu trách nhiệm xử lý từng đỉnh (vertex) của một lưới 3D.
- Trong vertex shader, bạn có thể thay đổi vị trí, màu sắc, uv, và các thuộc tính khác của các đỉnh.
- Vertex shader được chạy một lần cho mỗi đỉnh trước khi chuyển sang fragment shader.

### Fragment Shader

- Fragment shader là loại shader chịu trách nhiệm xử lý màu sắc và các thuộc tính của từng pixel (fragment) trong lưới 3D.
- Fragment shader được chạy một lần cho mỗi pixel sau khi vertex shader đã xử lý các đỉnh.
- Trong fragment shader, bạn có thể tính toán các hiệu ứng như chiếu sáng, texture, alpha blending, v.v.

### Attributes

- Attributes là các thông tin được truyền từ Unity vào shader, như vị trí, normal, uv, màu sắc, v.v.
- Attributes được định nghĩa trong mesh và được sử dụng trong vertex shader.

### Uniforms

- Uniforms là các biến toàn cục được chia sẻ giữa shader và Unity.
- Uniforms có thể được thiết lập từ script hoặc Inspector trong Unity.
- Uniforms thường được sử dụng để truyền các thông số như ma trận biến đổi, ánh sáng, texture, v.v.

### Textures

- Textures là các hình ảnh 2D được sử dụng trong shader để tạo ra các hiệu ứng như bề mặt, bump mapping, v.v.
- Textures có thể được thiết lập như uniforms để sử dụng trong shader.

### Lighting Model

- Lighting model là thuật toán được sử dụng để tính toán ảnh hưởng của ánh sáng đến bề mặt.
- Một số mô hình ánh sáng phổ biến là Lambert, Blinn-Phong, và Physically Based Rendering (PBR).

### Passes

- Passes là các bước riêng biệt trong quá trình rendering, như vẽ geometry, tính toán đổ bóng, xử lý hiệu ứng, v.v.
- Shader có thể định nghĩa nhiều passes để xử lý các tình huống khác nhau.

Hiểu rõ các khái niệm này sẽ giúp bạn tạo ra các shader tùy chỉnh phức tạp và nâng cao chất lượng đồ họa trong game và ứng dụng của mình.
