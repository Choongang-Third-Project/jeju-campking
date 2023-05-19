package com.jeju_campking.campking.util.upload;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

public class FileUtil {

    /*
        1. 사용자가 파일을 업로드했을 때, '중복이 없는' 새로운 파일명을 생성해서 해당 파일명으로 업로드 하는 메서드
     */

    /**
     * @param file      - 사용자가 업로드한 파일 객체
     * @param rootPath - 서버에 파일 업로드 루크 경로 (ex: D:/campking-prj/upload/)
     * @return - 업로드가 완료된 파일의 위치 경로 (ex: /2023/05/16/ddgaghgfg_상어.jpg)
     */
    public static String uploadFile(MultipartFile file, String rootPath) {

        // 원본 파일명을 중복이 없는 랜덤 이름으로 변경
        // ex) 상어.png -> ajfhljgh-agjkgjak-agjlag_상어.png
        // 랜덤문자 만드는 방법
        String newFileName = UUID.randomUUID() + "_" + file.getOriginalFilename();

        /* 2. 이 파일을 저장할 날짜별 폴더를 생성 */
        // ex) D:/campking-prj/upload/2023/05/16/agagaggsd_상어.png -> private 메서드 생성
        String newPath = makeDateFormatDirectory(rootPath);

        /* 3. 파일 업로드 수행*/
        try {
            file.transferTo(new File(newPath, newFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }

        String fullPath = newPath + "/" + newFileName;


        return fullPath.substring(rootPath.length());
    }

    /**
     * 루트 경로를 받아서 일자별로 폴더를 생성한 후
     * 루트 경로 + 날짜 폴더 경로를 리턴
     *
     * @param rootPath - 파일 업로드 루트 경로
     * @return - 날짜 폴더 경로가 포함된 새로운 업로드 경로
     */

    private static String makeDateFormatDirectory(String rootPath) {

        // 오늘 연월일 날짜정보 가져오기
        LocalDateTime now = LocalDateTime.now();
        int y = now.getYear();
        int m = now.getMonthValue();
        int d = now.getDayOfMonth();

        List<String> dateInfo = List.of(
                String.valueOf(y),
                len2(m),
                len2(d)
        );

        String directoryPath = rootPath;
        for (String s : dateInfo) {
            directoryPath += "/" + s;
            File f = new File(directoryPath);
            if (!f.exists()) f.mkdir();
        }

        return directoryPath;
    }

    private static String len2(int n) {
        return new DecimalFormat("00").format(n);
    }


}