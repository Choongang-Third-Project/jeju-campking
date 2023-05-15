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
![VS Code Insiders](https://img.shields.io/badge/VS%20Code%20Insiders-35b393.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)


<br>
<br>
<br>

### 🗓️ 개발 이력

---

```mermaid
timeline
    title Develop history [2023-05-15 ~ 2023-05-19]
    2023-05-15: [✅] v1.0.0 배포
            : [Front] URL 설계
            : [Front] Main page
            : [Front] My page
            : 🎯
            : [Back] dummy data + SQL
            : [Back] interceptor initial commit
    2023-05-16: []
            : [Front]
            : [Front]
            : 🎯
            : [Back]
            : [Back]
    2023-05-17: []
            : [Front]
            : [Front]
            : 🎯
            : [Back]
            : [Back]
    2023-05-18: []
            : [Front]
            : [Front]
            : 🎯
            : [Back]
            : [Back]
    2023-05-19: []
            : [Front]
            : [Front]
            : 🎯
            : [Back]
            : [Back] 
```

#

```mermaid
timeline
    title Develop history [2023-05-08 ~ 2023-05-12]
    2023-05-08: [✅] initial commit
            : [Front] 메인 페이지
            : [Front] 회원 가입 페이지
            : 🎯
            : [Back] DB 설계
            : [Back] 패키지 구조
    2023-05-09: [✅] initial commit
            : [Front] 웰컴 페이지
            : [Front] 게시판 페이지
            : [Front] 회원가입 페이지
            : 🎯
            : [Back] camp 테이블 설계
            : [Back] 멤버 기능 구현
    2023-05-10: [✅] 회원가입 기능 구현
            : [Front] 캠프 페이지
            : [Front] 게시판 페이지
            : [Front] 회원가입 페이지
            : 🎯
            : [Back] camp mapper post 테스트
            : [Back] 회원 서비스 구현
    2023-05-11: [✅] 서비스 시나리오 작성
            : [Front] 캠프장 목록 구현
            : [Front] 캠프장 상세 보기 구현
            : [Front] 같이 갈 사람 게시판 구현
            : [Front] login 메인 헤더 구현
            : 🎯
            : [Back] party 테이블 구성
            : [Back] 게시판 테이블 구성
    2023-05-12: [✅]
            : [Front] 헤더 구현
            : [Front] 공지사항 게시판
            : [Front] 캠프 파티 게시판
            : [Front] 캠프 파티 상세보기
            : 🎯
            : [Back] party 테이블 POSTMAN 테스트 완료
```

<br>
<br>
<br>

### 🖇️ Version Information

<br>

#### ✅ v2.0.0

```mermaid
flowchart LR
    서비스이용 --> 공지사항
    서비스이용 --> 캠프장
    서비스이용 --> 파티모집
```

- #### V2.0.0 개발 전략
    - [v2.0.0] 공지사항 서비스
      - 관리자는 공지사항을 등록, 읽기, 수정, 삭제 할 수 있다.
      - 일반 회원은 공지사항을 읽기 할 수 있다.
        - 공지사항 목록은 SSR 방식으로 페이징 처리 한다. 
      - 일반 회원은 공지사항에 댓글을 달 수 있다.
        - 댓글 작성은 CSR 방식으로 처리 한다.
      - 페이징 처리
    - [v2.0.0] 캠프장 서비스
      - 관리자는 캠프장을 등록, 읽기, 수정, 삭제 할 수 있다.
      - 일반 회원은 캠프장 목록을 볼 수 있다.
        - 검색, 정렬 기능
        - 검색 결과는 CSR 방식으로 제공 한다.
      - 일반 회원은 캠프장 상세보기 기능을 이용할 수 있다.
        - 지도뷰
        - 로드뷰
    - [v2.0.0] 파티 서비스
      - 같이 갈 멤버를 구하는 게시글을 작성, 수정, 삭제할 수 있다.
        - 모든 회원은 작성이 가능하다.
        - 본인이 작성한 글이 아니면 수정, 삭제는 불가하다.
      - 게시글에 쪽지를 보낼 수 있다.
        - 모든 회원은 파티 게시글에 대해 쪽지를 보낼 수 있다.
        - 본인이 작성한 글에는 쪽지를 보낼 수 없다.
        - 한 번 보낸 쪽지는 수정, 삭제가 불가하다. (보낸 사람 기준으로)
    - [v2.0.0] 마이 페이지 서비스
      - 내 정보를 수정할 수 있다.
        - 비밀번호, 닉네임, 핸드폰 번호
      - 내가 쓴 글을 조회할 수 있다.
        - 파티 게시판 글
      - 내가 보낸 쪽지를 조회할 수 있다.
        - 파티 게시판 쪽지
      - 내가 받은 쪽지를 조회할 수 있다.
        - 파티 게시판 쪽지
      

<br>
<br>
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
        - [Front] 홈페이지로부터 유저의 ID 와 password 를 입력받는다
        - [Back] 회원가입된 아이디는 DB에 저장된다
    - [v1.0.0] 회원가입을 성공시킨다
        - [Front] 홈페이지로부터 유저의 ID 와 password 를 입력받는다
        - [Back] 회원가입된 아이디는 DB에 저장된다
        - [Front] 홈페이지로부터 유저의 ID 와 password 를 입력받는다
        - [Back] 회원가입된 아이디는 DB에 저장된다

<br>
<br>
<br>

### 📀 DataBase Diagram

---

<br>

### 📜 멤버, 게시판, 리플

```mermaid
erDiagram
    TB_MEMBER ||--o{ TB_BOARD: member-board
    TB_BOARD ||--o{ TB_REPLY: board-reply
    TB_MEMBER ||--o{ TB_REPLY: member-reply

    TB_MEMBER {
        member_number INT(10) PK "AUTO_INCREMENT"
        member_email VARCHAR(50) UK "Not Null"
        member_password VARCHAR(200) "Not Null"
        member_name VARCHAR(30) "Not Null"
        member_phone VARCHAR(13) UK "Not Null"
        member_gender VARCHAR(1) "Not Null"
        member_nickname VARCHAR(50) UK "Not Null"
        member_session_id VARCHAR(200) "DEFAULT 'none'"
        member_cookie_date DATETIME
        member_age INT(3) "Not Null"
        member_join_date DATE "Not Null default current_timestamp"
    }


    TB_BOARD {
        board_number Int(10) PK "AUTO_INCREMENT"
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
```

#

### 📜 멤버, 캠프, 파티 모집 게시판, 파티 모집 게시판의 리플

```mermaid
erDiagram
    TB_MEMBER ||--o{ TB_PARTY: member-party
    TB_CAMP ||--o{ TB_PARTY: camp-party
    TB_PARTY ||--o{ TB_PARTY_REPLY: camp-party

    TB_MEMBER {
    }

    TB_PARTY {
        party_number INT(10) PK "AUTO_INCREMENT"
        party_title VARCHAR(200) "NOT NULL"
        party_content VARCHAR(2000) "NOT NULL"
        party_start_date DATE "NOT NULL"
        party_end_date DATE "NOT NULL"
        party_size INT(3)
        party_write_time TIMESTAMP "default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"

        member_number INT(10) FK "TB_MEMBER"
        camp_number INT(10) FK "TB_CAMP"
    }

    TB_PARTY_REPLY {
        party_reply_number INT(10) PK "AUTO_INCREMENT"
        party_reply_content VARCHAR(200) "NOT NULL"
        party_reply_time TIMESTAMP "DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"

        member_number INT(10) FK "TB_MEMBER"
        party_number INT(10) FK "TB_PARTY"
    }

    TB_CAMP {
        camp_number INT(10) PK "AUTO_INCREMENT"
        camp_name VARCHAR(100) "NOT NULL"
        camp_adress VARCHAR(200) "NOT NULL"
        camp_type_normal VARCHAR(20) "일반 or Not"
        camp_type_car VARCHAR(20) "자동차 or Not"
        camp_type_caravan VARCHAR(20) "카라반 or Not"
        camp_type_glamping VARCHAR(20) "글램핑 or Not"
        camp_type_latitude VARCHAR(20) "NOT NULL"
        camp_type_longitube VARCHAR(20) "NOT NULL"
    }
```

#

### 📜 파티 모집 메시지

```mermaid
erDiagram
    TB_MEMBER ||--o{ TB_PARTY_MESSAGE: member-party
    TB_PARTY ||--o{ TB_PARTY_MESSAGE: party-message

    TB_MEMBER {
    }


    TB_PARTY {
    }


    TB_PARTY_MESSAGE {
        party_message_number INT(10) PK "AUTO_INCREMENT"
        party_message_content VARCHAR(2000) "NOT NULL"
        party_message_sender INT(10) FK "TB_MEMBER"
        party_message_recipient INT(10) FK "TB_MEMBER"
        
        party_number INT(10) FK "TB_PARTY"
    }

```

<br>
<br>
<br>
<br>

### 📍 MindMap

---

<br>

#### 📌 2023.05.15 ~ 2023.05.19 V2.0.0

```mermaid
mindmap
  root((main Service))
    공지사항 v2.0
      등록
      읽기
      수정
      삭제
    캠프장 서비스 v2.0
      등록
      읽기
      수정
      삭제
    파티 서비스 v2.0
      등록
      읽기
      수정
      삭제
      쪽지 보내기
    마이 페이지 서비스 v2.0
      정보 수정
```

<br>
<br>



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
     $git switch develop  
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