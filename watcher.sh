#!/bin/bash
echo "Đang khởi động chế độ tự động backup..."
# Theo dõi thư mục /workspaces/minecraft_server/mc-server
# Nếu có file nào thay đổi, nó sẽ đợi 10 giây (để tránh backup liên tục khi game đang lưu) rồi chạy backup.sh
inotifywait -m -r -e modify,create,delete /workspaces/minecraft_server/mc-server --format '%w%f' | while read FILE
do
    echo "Phát hiện thay đổi ở: $FILE. Đang chờ 10 giây để backup..."
    sleep 10
    cd ../
    ./backup.sh
done
