# Hướng dẫn cài đặt và cập nhật dự án Laravel

## Cài đặt

1. **Clone dự án từ GitHub:**

   ```bash
   git clone https://github.com/MCK564/52200050_52200128_LaptopShopApp.git

2. **Cài đặt các composer:**

    composer install

3. **Tạo bản sao của tệp .env:**

    cp .env.example .env

4. **Tạo khóa ứng dụng**

    php artisan key:generate

5. **Thay đổi database nếu cần thiết**

    php artisan migrate

6. **Cài đặt các gói npm**

    npm install

7. **Chạy vite**

    npm run dev
    npm run build

8 **Chạy chương trình**

    php artisan serve



Đây là dự án laptop web/app được phát triển trên
    + framework Laravel version 10.0.
    + gói start-kit breeze
    + tailwind css
    + thư viện giao diện flowbite
    + Cơ sở dữ liệu: mysql 8

Yêu cầu:
    - php version > 8.0
    - cài đặt gói cài đặt npm (node packages management)

Mô tả:
    - LaptopShopApp cung cấp giao diện mua sắm laptop trực quan dễ sử dụng, người dùng có thể:
        + Tìm kiếm laptop theo tên, theo giá,..
        + Thêm laptop vào giỏ hàng, cập nhật số lượng.
        + Mua sắm bằng cách tạo mới đơn hàng.
        + Xem thông tin vận chuyển đơn hàng.
    
    - Với vai trò admin:
        + Thêm sửa, xóa, tìm kiếm :
            .laptop 
            .người dùng
            .đơn hàng(chỉ xóa hoặc cập nhật trạng thái)
        + Cập nhật trạng thái đơn hàng.
        + Khóa tài khoản người dùng.
