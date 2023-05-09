# ⛺️ CampKing Project

<br>

### 🎉 개요

---

- 저희 서비스는 캠프 여행을 혼자다니기 외로우신 분들을 위해 만들게 되었습니다.
- 여행지를 기준으로 같이 캠핑을 갈 멤버들을 모집할 수 있습니다.
- 저희는 우선 제주도를 시작으로 전국적으로 확대해 나갈 예정입니다.
- 캠프 여행을 혼자가기 싫다면 이 앱을 이용해보세요.

<br>

### 💻 Members

---

| 개발자       | 담당              | gitHub                                       | 한 마디   |
|-----------|-----------------|----------------------------------------------|--------|
| 🧑‍💻 송유근 | 👉 PM & Front   | [🐈‍⬛ gitHub](https://github.com/golddrone7) | 하면 된다! |
| 👩‍💻 박수민 | 👉 Front        | [🐈‍⬛ gitHub](https://github.com/330sum)     | 하면 된다! |
| 👩‍💻 조예원 | 👉 Front & Back | [🐈‍⬛ gitHub](https://github.com/JOY0987)    | 하면 된다! |
| 👩‍💻 최예진 | 👉 Back         | [🐈‍⬛ gitHub](https://github.com/Yajani)     | 하면 된다! |
| 🧑‍💻 이기덕 | 👉 Back         | [🐈‍⬛ gitHub](https://github.com/lkdcode)    | 하면 된다! |

<br>
<br>

### 📚 Skill Stack

---

- #### 📜 FRONT

![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)  
![TailwindCSS](https://img.shields.io/badge/tailwindcss-%2338B2AC.svg?style=for-the-badge&logo=tailwind-css&logoColor=white)
![DaisyUI](https://img.shields.io/badge/daisyui-5A0EF8?style=for-the-badge&logo=daisyui&logoColor=white)

- #### 🛠️ BACK

![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring](https://img.shields.io/badge/spring-%236DB33F.svg?style=for-the-badge&logo=spring&logoColor=white)

- #### 📀 DB

![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white)

- #### ✂️ Tool

![IntelliJ IDEA](https://img.shields.io/badge/IntelliJIDEA-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white)


<br>
<br>
<br>

### 🗓️ 개발 이력

---

```mermaid
timeline
    title Develop history [2023-05-08 ~ 2023-05-12]
    2023-05-08: [✅] initial commit
            : [Front] 메인 페이지
            : [Front] 회원 가입 페이지
            : 🎯
            : [Back] DB 설계
            : [Back] 패키지 구조
    2023-05-09: [ ] 회원가입 기능 구현
            : [Front] index.html
            : [Front] login.html
            : 🎯
            : [Back] DB 테이블 생성
            : [Back] member
    2023-05-10: [ ]
    2023-05-11: [ ]
    2023-05-12: [ ]
```

<br>
<br>
<br>

### 🖇️ Version Information

<br>

#### ✅ v1.0.0

---

```mermaid
flowchart LR
    회원가입 --> 로그인 --> 서비스이용
```

- #### V1.0 개발 전략
    - [v1.0.0] 회원가입을 성공시킨다
        - [Front] 홈페이지로부터 유저의 ID 와 password 를 입력받는다
        - [Back] 회원가입된 아이디는 DB에 저장된다

<br>
<br>
<br>

### 🚀 Class Diagram

---

```mermaid
classDiagram
    member --> Gender

    class member {
        - Long memberNumber
        - String memberID
        - String memberPassword
        - String memberName
        - String memberPhone
        - String memberEmail
        - Gender memberGender
        - String memberNickname
        - LocalDateTime memberJoinDate
        - int memberBirthDate
    }

    class Gender {
        M, F
    }

    class Board {
        - int boardNumber
        - String boardTitle
        - String boardContent
        - int memberNumber
    }

    class Reply {
        - int replyNumber
        - String replyWriter
        - String replyContent
        - int boardNumber
    }

    class Camp {
        - int campNumber
        - String campAdress
        - String campDetail
        - String campTypeNormal
        - String campTypeCar
        - String campTypeCaravan
        - String campTypeGlamping
    }

```

<br>
<br>
<br>

### 📀 DataBase Diagram

---

<br>

```mermaid
erDiagram
    TB_MEMBER ||--o{ TB_BOARD: member-board
    TB_BOARD ||--o{ TB_REPLY: board-reply
    TB_MEMBER ||--o{ TB_REPLY: member-reply

    TB_MEMBER {
        member_number INT(10) PK, FK "AUTO_INCREMENT"
        member_email VARCHAR(50) UK "Not Null"
        member_password VARCHAR(200) "Not Null"
        member_name VARCHAR(30) "Not Null"
        member_phone VARCHAR(13) UK "Not Null"
        member_gender VARCHAR(1) "Not Null"
        member_nickname VARCHAR(50) UK "Not Null"
        member_age INT(3) "Not Null"
        member_join_date TIMESTAMP "Not Null default current_timestamp"
    }

    TB_BOARD {
        board_number Int(10) PK, FK "AUTO_INCREMENT"
        board_title VARCHAR(200) "Not Null"
        board_content VARCHAR(2000) "Not Null"
        board_time TIMESTAMP "Not Null default current_timestamp"
        member_number INT(10) FK "TB_MEMBER"
    }

    TB_REPLY {
        reply_number INT(10) PK "AUTO_INCREMENT"
        reply_content VARCHAR(1000) "Not Null"
        reply_time TIMESTAMP "Not Null default current_timestamp"
        member_number INT(10) FK "TB_MEMBER"
        board_number INT(10) FK "TB_BOARD"
    }

    TB_CAMP {
        camp_number INT(10) PK
        camp_adress VARCHAR(80) "Not Null"
        camp_detail VARCHAR(500) "Not Null"
        camp_type_normal CHAR(1) "1 or 0"
        camp_type_car CHAR(1) "1 or 0"
        camp_type_caravan CHAR(1) "1 or 0"
        camp_type_glamping CHAR(1) "1 or 0"
    }

```

<br>
<br>
<br>
<br>

### 📍 MindMap

---

#### 📌 2023.05.08 ~ 2023.05.12 V1.0.0

```mermaid
mindmap
  root((Campking App))
    회원 v1.0
      회원가입 v1.1.0
      로그인 v1.0.1
        비밀번호 찾기 v1.0.2
    글 작성 v2.1.0
        글 삭제 v2.0.1
        글 추천 v2.0.2
      댓글 달기 v2.2.0
        추천 v2.2.1
         좋아요 v2.2.2
         싫어요 v2.2.3
    Party board v3.0
      sub_service v3.0.1
      sub_service v3.0.1
      sub_service v3.0.1
```

<br>
<br>

### 🪵 Git Flow

---

<br>

- #### main : 우리의 서비스가 출시되는 브랜치

> 1. 태그를 달아서 버전을 알려줍니다.
> 2. develop 브랜치만 merge 합니다.  
     $git merge develop  
     $git tag "v1.0.0"

- #### develop : 다음 출시 버전을 개발하는 브랜치

> 1. feat 브랜치들에서 개발한 병합합니다.
> 2. 커밋 이력을 남기기 위해 '--no-ff' 옵션을 부여합니다.  
     $git merge --no-ff feat/[name]/기능

- #### feat/[name]/front : Front 기능을 개발하는 브랜치
- #### feat/[name]/back : Back 기능을 개발하는 브랜치
- #### feat/이름이니셜/개발내용. ex) feat/lkd/member

> 1. feat/[이름 이니셜]/구현 기능 요약  
     $git switch -c feat/lkd/member  
     $작업중...  
     $작업 완료...  
     $git branch develop  
     $git merge --no-ff feat/lkd/member

- #### hotfix : 출시 버전에서 발생한 버그를 수정하는 브랜치

<br>
<br>

```mermaid
gitGraph
    commit id: "main" tag: "v0.0.0"
    branch develop
    checkout develop
    branch feat/name/front1
    branch feat/name/back1
    checkout feat/name/front1
    commit id: "메인 페이지 구현"
    commit id: "회원가입 페이지 구현"
    commit id: "로그인 페이지 구현"
    checkout feat/name/back1
    commit id: "DB 테이블 설계"
    commit id: "패키지 구조 설계"
    checkout develop
    merge feat/name/front1 id: "front merge"
    checkout feat/name/back1
    commit id: "엔티티 설계"
    commit id: "컨트롤러 설계"
    checkout develop
    merge feat/name/back1 id: "back merge"
    checkout main
    merge develop id: "v1.0.0" tag: "v1.0.0"
```

<br>
<br>
<br>
<br>

### 🖇️ Reference

---

- [COMMON]  
  [👉 UML](https://www.nextree.co.kr/p6753/)      
  [👉 클래스 다이어그램 툴](https://app.diagrams.net/?src=about)  
  [👉 README_mermaid](https://mermaid.js.org/syntax/flowchart.html)  
  [👉 Git_flow1](https://techblog.woowahan.com/2553/)  
  [👉 Git_flow2](https://www.youtube.com/watch?v=wtsr5keXUyE&ab_channel=%EC%9A%B0%EC%95%84%ED%95%9C%ED%85%8C%ED%81%AC)


- [FRONT]  
  [👉 daisy_UI](https://daisyui.com/components/)    
  [👉 font_awesome](https://fontawesome.com/search?o=r&m=free)    
  [👉 tail_wind](https://nerdcave.com/tailwind-cheat-sheet)


- [BACK]  
  [👉 Java 컨벤션](https://developerfarm.wordpress.com/2012/02/03/object_calisthenics_summary/)  
  [👉 디자인 패턴](https://refactoring.guru/ko/design-patterns/what-is-pattern)


- [DB]  
  [👉 Null](https://naver.com)