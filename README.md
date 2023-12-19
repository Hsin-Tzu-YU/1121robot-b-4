# 👋TeamB-4 HOW DO WE DID
## 🙋成員
   M11251016 古晶德 智慧製造碩一
   
   M11251017 蔡善琪 智慧製造碩一
   
   M11251023 游昕慈 智慧製造碩一
   
## 🌱Basic Task 1: Pick-n-Place Criterion
<img src="https://github.com/Hsin-Tzu-YU/1121robot-b-4/blob/main/66A3C586-42F5-4057-883B-8D4C6D33A601.jpg" height="500px" width="300px" />

🐾Task1 說明    

    step1: 吸取圓形及方形物件至第二定點，並且判斷取料區是否有物件可以吸取
    
    step2: 將吸取的物件移至第二定點放置，並使物件對齊第二定點邊界
    
    step3: 將物件從第二定點移至第三定點，並依照相對應的形狀及物件順序擺放
    


  📈Task1 Flow Chat
  
<img src="https://github.com/Hsin-Tzu-YU/1121robot-b-4/blob/main/Task1.png" height="350px" width="800px">   
    
 ⌛測試時間
 - 實驗以不同速度觀察Task1的作業時間，當速度提高80%時，整體作業時間最快可在38秒完成。
       
   | 速度|時間|
   | --- |---|
   |速度30% |1min1sec|
   |速度40% |52sec|
   |速度50% |46sec|
   |速度60% |42sec|
   |速度70% |40sec|
   |速度80% |38sec|

   
  🎥Demo video
    https://www.youtube.com/watch?v=uC_HDgc2rOk
  
  🎥Improved demo video (偵測物件是否存在)
    [https://youtu.be/Fpp3zMXUIco](https://youtu.be/RmE2hJIVLPA)
  
  🎥Simulation video
    https://youtu.be/UZjdhSku-7U
    
## 🌱Basic Task 2: Stack-up Criterion
  ![image](https://github.com/Hsin-Tzu-YU/1121robot-b-4/blob/main/%E8%9E%A2%E5%B9%95%E6%93%B7%E5%8F%96%E7%95%AB%E9%9D%A2%202023-11-28%20133143.png)

   🐾Task2 說明   

      1. 取料區吸取圓形/方形物件
   
      2.移至第二定點交錯擺放

  
   ⌛測試時間
   
   - 實驗以不同速度觀察Task2的作業時間，當速度提高80%時，整體作業時間最快可在40秒完成。
         
      | 速度 |時間|
      | --- |---|
      |速度30% | 58sec|
      |速度50% | 50sec|
      |速度60% | 46sec|
      |速度70% | 42sec|
      |速度80% | 40sec|
 
  🎥Demo video
    https://www.youtube.com/watch?v=LIREwSrFIX4
    
  🎥Simulation video
    https://youtu.be/tB1uePA5Lgc
        
## 🌱Task 3  堆疊 + I/O整合任務(結合I/O按鈕執行吸取圓形及方形元件堆疊至指定位置) 
![image](https://github.com/gujingde/gujingde/blob/main/%E8%9E%A2%E5%B9%95%E6%93%B7%E5%8F%96%E7%95%AB%E9%9D%A2%202023-11-28%20040012.png)

  🐾Task3 說明   
  
      1. 當按下綠色按鈕則執行吸取圓形元件指令
      
      2. 當按下橘色按鈕則執行吸取方形元件指令
      
      3. 若熄滅按鈕則可以暫停，如恆亮則持續執行吸取指令

  📈Task3 Flow Chat
  
   <img src="https://github.com/Hsin-Tzu-YU/1121robot-b-4/blob/main/Task3%E6%B5%81%E7%A8%8B%E5%9C%96.png" height="350px" width="550px" />     

  🎥Demo video
    https://youtu.be/qJJRKkaPEbM
    
  🎥Simulation video
    https://youtu.be/rQu9swlRH6k

