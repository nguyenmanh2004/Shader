# Shader

## Kiến thức về lập trình đồ họa và ngôn ngữ Shader

Shader là một loại chương trình chạy trên GPU (Bộ xử lý đồ họa) và được sử dụng để xử lý việc hiển thị đồ họa theo nhiều cách khác nhau. Shaders là yếu tố thiết yếu trong quy trình đồ họa hiện đại và có thể thực hiện các thao tác như:

- **Xử lý đỉnh (Vertex Processing)**: Biến đổi vị trí và thuộc tính của các đỉnh.
- **Xử lý fragment (Fragment Processing)**: Tính toán màu sắc và các thuộc tính khác của pixel (fragment) sẽ được hiển thị trên màn hình.
- **Xử lý hình học (Geometry Processing)**: Thao tác với hình học của các đối tượng.
- **Compute Shaders**: Thực hiện các phép toán tổng quát không nhất thiết liên quan đến việc hiển thị đồ họa.

Shaders cho phép tạo ra các hiệu ứng hình ảnh phức tạp, ánh sáng động và các kỹ thuật hiển thị tiên tiến khác.

## GLSL (OpenGL Shading Language)

GLSL (Ngôn ngữ lập trình shader của OpenGL) là một ngôn ngữ lập trình shader cấp cao được thiết kế đặc biệt để lập trình các shader trong API đồ họa OpenGL. Nó cho phép các nhà phát triển viết mã chạy trên GPU theo cách tương tự như lập trình C, nhưng với các cấu trúc cụ thể dành cho lập trình đồ họa.

### Các Tính Năng Chính của GLSL:

- **Kiểu Dữ Liệu và Biến**: GLSL hỗ trợ nhiều kiểu dữ liệu khác nhau, bao gồm các số nguyên (`int`, `float`), vector (`vec2`, `vec3`, `vec4`) và ma trận (`mat2`, `mat3`, `mat4`).
- **Hàm Tích Hợp**: GLSL cung cấp nhiều hàm tích hợp cho các phép toán toán học, lấy mẫu texture và tính toán ánh sáng.
- **Các Giai Đoạn Shader**: GLSL được sử dụng để viết các loại shader khác nhau, chẳng hạn như:
  - **Vertex Shaders**: Xử lý dữ liệu đỉnh.
  - **Fragment Shaders**: Xác định màu sắc của từng pixel.
  - **Geometry Shaders**: Tạo ra hình học mới từ các đỉnh hiện có.
  - **Compute Shaders**: Xử lý các tác vụ tổng quát trên GPU.
