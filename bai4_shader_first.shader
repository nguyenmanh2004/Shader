// định nghĩa shader 
Shader "Custom/SimpleRedShader"
{
    //Định nghĩa các thuộc tính có thể chỉnh sửa từ Inspector
    Properties
    {
        _Color ("Color", Color) = (1, 1, 1, 1) // Màu đỏ
    }
    // phần chính của shader, nơi định nghĩa cách thức làm việc của shader
    SubShader
    {
        //Chỉ định loại vật liệu, trong trường hợp này là "Opaque" (không trong suốt)
        Tags { "RenderType"="Opaque" }
        // LOD (Level of Detail): Chỉ định mức độ chi tiết của shader, ảnh hưởng đến cách Unity xử lý shader cho các đối tượng ở xa camera
        LOD 200
        // Chỉ định một bước trong quá trình rendering.
        Pass
        {
            // Bắt đầu phần mã HLSL cho shader.
            CGPROGRAM
            //Chỉ định hàm vert là hàm vertex shader.
            #pragma vertex vert
            //Chỉ định hàm frag là hàm fragment shader.
            #pragma fragment frag

            // Định nghĩa các biến

            /*appdata_t: Cấu trúc để lưu trữ dữ liệu đầu vào cho vertex shader.
            float4 vertex : POSITION;: Vị trí của đỉnh.
            float3 normal : NORMAL;: Pháp tuyến, không sử dụng trong shader này nhưng có thể hữu ích cho tính toán ánh sáng.
            float2 uv : TEXCOORD0;: Tọa độ UV cho texture mapping.
            Tọa độ UV là một hệ tọa độ 2D, thường được biểu diễn bằng hai giá trị:
            U: Tương ứng với trục ngang (hoặc chiều rộng) của texture.
            V: Tương ứng với trục dọc (hoặc chiều cao) của texture.
            */
            struct appdata_t
            {
                float4 vertex : POSITION; // Vị trí đỉnh
                float3 normal : NORMAL;   // Pháp tuyến
                float2 uv : TEXCOORD0;    // Tọa độ UV
            };

            struct v2f
            {
                float2 uv : TEXCOORD0; // Tọa độ UV
                float4 vertex : SV_POSITION; // Vị trí sau biến đổi
            };

            fixed4 _Color; // Màu từ Properties

            // Hàm vertex
            /*vert: Hàm vertex shader.
            appdata_t v: Tham số đầu vào chứa dữ liệu từ mesh.
            v2f o;: Khởi tạo biến đầu ra.
            o.vertex = UnityObjectToClipPos(v.vertex);: Chuyển đổi vị trí đỉnh từ không gian đối tượng sang không gian clip.
            o.uv = v.uv;: Chuyển UV từ đầu vào sang đầu ra.
            return o;: Trả về dữ liệu đầu ra.*/
            v2f vert (appdata_t v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex); // Chuyển đổi vị trí
                o.uv = v.uv; // Khởi tạo UV
                return o;
            }

            // Hàm fragment
            /*frag: Hàm fragment shader.
            return _Color;: Trả về màu sắc được xác định từ thuộc tính _Color.*/
            fixed4 frag (v2f i) : SV_Target
            {
                return _Color; // Trả về màu
            }
            //ENDCG: Kết thúc phần mã HLSL.
            ENDCG
        }
    }
    // shader dự phòng 
    FallBack "Diffuse"
}