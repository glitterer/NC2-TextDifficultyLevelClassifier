<img width=100 src ="https://user-images.githubusercontent.com/50728605/187830290-a1e10186-9273-4962-96ce-52b930cfdf6d.png">

# NC2-TextDifficultyLevelClassifier
Scan text and immediately get the difficulty level of the text based of CEFR<br/>

<br/>

## ๐ Features
- ์ํ๋ ์ง๋ฌธ์ ์นด๋ฉ๋ผ๋ก ์ธ์์ํค๊ณ  ํด๋น ์ด๋ฏธ์ง๋ฅผ ํ์คํธ๋ก ๋ณํ (Scan Text)
- ์ํ๋ ์ง๋ฌธ ๋ฐ ํ์คํธ๋ฅผ ํค๋ณด๋๋ฅผ ํตํด ์ง์  ์๋ ฅ ๋ฐ Scan Text๋ฅผ ํตํด ๋ณํํ ํ์คํธ ์์ 
- British Council์ CEFR Reading Text ๋ฐ์ดํฐ๋ฅผ ๊ธฐ๋ฐ์ผ๋ก ํ text classification์ ํตํ ํ์คํธ์ CEFR ๋ ๋ฒจ์ ์ฌ์ฉ์์๊ฒ ์ ์ (Create ML)

<br/>

## ๐ฑ Screenshots
|๋ฉ์ธํ๋ฉด|์ฌ์ฉ๋ฐฉ๋ฒ์์|
|------|--------|
|<img width=250 src ="https://user-images.githubusercontent.com/50728605/187828475-ac2f05f3-fcfd-4f9c-81a9-81e2a71c052a.png">|<img width=250 src ="https://user-images.githubusercontent.com/50728605/187829879-052c58de-5388-4e5e-83df-908e47bdf82d.gif">|

<br/>

## ๐ Text Data Source
- https://learnenglishteens.britishcouncil.org/study-break/reading-zone
- https://learnenglish.britishcouncil.org/general-english/magazine-zone
- https://learnenglish.britishcouncil.org/skills/reading

<br/>

## ๐ค Reflection
- ์ ๋ง๋ก ์ ํ์ฑ์ ์ฌ๋ฆฌ๊ธฐ ์ํด์๋ stanford๊ฐ์ ๊ณณ์์ ์ด๋ฏธ pretrained๋ vocabulary analysis ๊ฐ์ ๋ชจ๋ธ์ ๊ฐ์ ธ์ค๋ ๊ฒ์ด ์ข๋ค๋ ํผ๋๋ฐฑ์ ๋ฐ์์ผ๋ฉฐ ์ด๋ฅผ ์ํ CoreML์ ํตํด ์ ํ์ฑ์ ์ฌ๋ฆด ํ์์ฑ์ด ์๋ค. ์๋ํ๋ฉด ์์ด์ชฝ์์์ dataset modelling์ด ๋๋ถ๋ถ ๋๋ฌ๊ธฐ ๋๋ฌธ์ ์ด์ ๋ํ ์ฐ๊ตฌ์ด ์๋ฃ๋ ์ ๋ขฐ๋๊ฐ ๋์ ๋ฐ์ดํฐ์์ ์ฌ์ฉํ๋ ์ข๋ค๋ ๊ฒ์ด๋ค.
- ์ด ํ๋ก์ ํธ์์ ์ฌ์ฉํ ๋ชจ๋ธ๊ณผ ๊ฐ์ด ์งง์ ์๊ฐ์ ์ง์  ๋ฐ์ดํฐ๋ฅผ ๋ง๋  ๋ชจ๋ธ์ ๊ฒฝ์ฐ์๋ ๋ฌธ์ฅ/๋ฐ์ดํฐ๋ฅผ ์ง์ด๋ฃ๋ โ์ฌ๋ ์์ฒดโ์ ์ํด์ bias๊ฐ ๋  ์ ๋ฐ์ ์๋ค (=human bias).
- CreateML์ ๊ฒฝ์ฐ์๋ ์ด๋ฏธ ์ ์ฒ๋ฆฌ ๊ณผ์ ์ ๋ค ํด์ฃผ๊ธฐ ๋๋ฌธ์ ๋ฐ์ดํฐ๋ฅผ ๋ ๋ฃ๋๋์ ๋ํ ๋ถ๋ถ์ ์ํด์ ์ ํ์ฑ์ด ์ฌ๋ผ๊ฐ๊ฑฐ๋ ํ  ๊ฐ๋ฅ์ฑ์ ์๋ค๊ณ  ๋ณด๋ฉด ๋๋ค. 
- **๊ฒฐ๋ก ์ ์ผ๋ก ์ดํ์ ๋ ์ ํํ ๋ชจ๋ธ์ ๋ง๋ค๊ธฐ ์ํด์๋ pretrained๋ชจ๋ธ์ ์ฌ์ฉํ๋ ๊ฒ์ด ์ข๋ค๊ณ  ์๊ฐ๋๋ค.**
