# powershell_scrape

Anti Normal I'm not robot captcha.
![im_robot_screen_prove](easy_ps.JPG)


```python
convert image to binary
img = cv2.imread('ff.jpg', 2)
  
ret, bw_img = cv2.threshold(img, 127, 255, cv2.THRESH_BINARY)
  
# converting to its binary form
bw = cv2.threshold(img, 127, 255, cv2.THRESH_BINARY)
  
cv2.imshow("Binary", bw_img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```
