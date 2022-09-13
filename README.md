<img width=100 src ="https://user-images.githubusercontent.com/50728605/187830290-a1e10186-9273-4962-96ce-52b930cfdf6d.png">

# NC2-TextDifficultyLevelClassifier
Scan text and immediately get the difficulty level of the text based of CEFR<br/>

<br/>

## 📌 Features
- 원하는 지문을 카메라로 인식시키고 해당 이미지를 텍스트로 변환 (Scan Text)
- 원하는 지문 및 텍스트를 키보드를 통해 직접 입력 및 Scan Text를 통해 변환한 텍스트 수정
- British Council의 CEFR Reading Text 데이터를 기반으로 한 text classification을 통한 텍스트의 CEFR 레벨을 사용자에게 제시 (Create ML)

<br/>

## 📱 Screenshots
|메인화면|사용방법예시|
|------|--------|
|<img width=250 src ="https://user-images.githubusercontent.com/50728605/187828475-ac2f05f3-fcfd-4f9c-81a9-81e2a71c052a.png">|<img width=250 src ="https://user-images.githubusercontent.com/50728605/187829879-052c58de-5388-4e5e-83df-908e47bdf82d.gif">|

<br/>

## Text Data Source
- https://learnenglishteens.britishcouncil.org/study-break/reading-zone
- https://learnenglish.britishcouncil.org/general-english/magazine-zone
- https://learnenglish.britishcouncil.org/skills/reading

<br/>

## Reflection
- 정말로 정확성을 올리기 위해서는 stanford같은 곳에서 이미 pretrained된 vocabulary analysis 같은 모델을 가져오는 것이 좋다는 피드백을 받았으며 이를 위한 CoreML을 통해 정확성을 올릴 필요성이 있다. 왜냐하면 영어쪽에서의 dataset modelling이 대부분 끝났기 때문에 이에 대한 연구이 완료된 신뢰도가 높은 데이터셋을 사용하는 좋다는 것이다.
- 이 프로젝트에서 사용한 모델과 같이 짧은 시간에 직접 데이터를 만든 모델의 경우에는 문장/데이터를 집어넣는 “사람 자체”에 의해서 bias가 될 수 밖에 없다 (=human bias).
- CreateML의 경우에는 이미 전처리 과정을 다 해주기 때문에 데이터를 더 넣느냐에 대한 부분에 의해서 정확성이 올라가거나 할 가능성은 없다고 보면 된다. 
- **결론적으로 이후에 더 정확한 모델을 만들기 위해서는 pretrained모델을 사용하는 것이 좋다고 생각된다.**
