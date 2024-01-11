// your-script.js

document.addEventListener('DOMContentLoaded', function() {
    // 獲取所有按鈕元素
    var plusButtons = document.querySelectorAll('.plusButton');

    // 遍歷所有按鈕，為每個按鈕添加事件監聽器
    plusButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            
            // 視窗寬度和高度
            var windowWidth = 600;
            var windowHeight = 400;
            // 計算視窗在螢幕中央的位置
            var left = (screen.width - windowWidth) / 2;
            var top = (screen.height - windowHeight) / 2;


            // 獲取按鈕所在容器的值
            var value = this.parentNode.getAttribute('data-value');

            // 打開新視窗，將值作為 GET 參數傳遞
            var newWindow = window.open('list_add_song.php?song=' + encodeURIComponent(value), '_blank', 'width=' + windowWidth + ',height=' + windowHeight + ',left=' + left + ',top=' + top);

            // 如果需要在新視窗打開後執行其他操作，可以在這裡添加代碼
            if (newWindow) {
                // 新視窗已成功打開
            } else {
                // 新視窗被瀏覽器阻擋
                alert('Popup blocked! Please allow pop-ups for this site.');
            }
        });
    });
});

function confirmDelete(song_id,list_id) {
    // 使用 confirm 函數顯示確認對話框
    var confirmDelete = confirm('確定要刪除嗎？');

    // 如果用戶確定要刪除，執行相應的刪除代碼
    if (confirmDelete) {
        deleteSong(song_id,list_id);
    } else {
        // 可以添加取消刪除時的相應操作
        alert('取消刪除');
    }
}

function confirmDelete_list(list_id) {
    // 使用 confirm 函數顯示確認對話框
    var confirmDelete = confirm('確定要刪除嗎？');

    // 如果用戶確定要刪除，執行相應的刪除代碼
    if (confirmDelete) {
        deleteList(list_id);
    } else {
        // 可以添加取消刪除時的相應操作
        alert('取消刪除');
    }
}

// 可以根據需要添加刪除歌曲的相應功能
function deleteSong(song_id,list_id) {
    // 在這裡添加刪除歌曲的相應代碼
    alert('歌曲已刪除');
    window.location.href = 'song.php?song_id='+song_id+'&list_id='+list_id;
}

// 可以根據需要添加刪除歌曲的相應功能
function deleteList(list_id) {
    // 在這裡添加刪除歌曲的相應代碼
    alert('歌曲已刪除');
    window.location.href = 'list.php?list_id='+list_id;
}
