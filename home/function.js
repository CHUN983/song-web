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
