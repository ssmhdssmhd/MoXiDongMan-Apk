package com.wsw.cospa.utils;

import android.content.ContentResolver;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.dao.DatabaseHelper;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.wsw.cospa.utils.switch, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cswitch {
    /* renamed from: break, reason: not valid java name */
    public static void m27083break(ContentResolver contentResolver, DocumentFile documentFile, InputStream inputStream) throws IOException {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream = null;
        try {
            OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(documentFile.mo26658final());
            if (outputStreamOpenOutputStream == null) {
                m27087do(inputStream);
                throw new FileNotFoundException();
            }
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream, 8192);
            try {
                bufferedOutputStream = new BufferedOutputStream(outputStreamOpenOutputStream, 8192);
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i = bufferedInputStream2.read(bArr);
                        if (i == -1) {
                            outputStreamOpenOutputStream.flush();
                            m27087do(bufferedInputStream2, bufferedOutputStream);
                            return;
                        }
                        bufferedOutputStream.write(bArr, 0, i);
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    m27087do(bufferedInputStream, bufferedOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream = null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static String[] m27084case(DocumentFile documentFile, String... strArr) {
        ArrayList arrayList = new ArrayList();
        if (documentFile.mo26667super()) {
            for (DocumentFile documentFile2 : documentFile.mo26664public()) {
                if (documentFile2.mo26669throw()) {
                    String strMo26653catch = documentFile2.mo26653catch();
                    int length = strArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        if (strMo26653catch.endsWith(strArr[i])) {
                            arrayList.add(strMo26653catch);
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m27085catch(ChapterListBean chapterListBean, ComicContentImgBean comicContentImgBean, ContentResolver contentResolver, DocumentFile documentFile, InputStream inputStream) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream = null;
        try {
            OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(documentFile.mo26658final());
            if (outputStreamOpenOutputStream == null) {
                m27087do(inputStream);
                throw new FileNotFoundException();
            }
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream, 8192);
            try {
                bufferedOutputStream = new BufferedOutputStream(outputStreamOpenOutputStream, 8192);
            } catch (Throwable th) {
                th = th;
                bufferedOutputStream = null;
            }
            try {
                byte[] bArr = new byte[2048];
                while (true) {
                    int i = bufferedInputStream2.read(bArr);
                    if (i == -1) {
                        break;
                    } else {
                        bufferedOutputStream.write(bArr, 0, i);
                    }
                }
                outputStreamOpenOutputStream.flush();
                List<ComicContentImgBean> listG = DatabaseHelper.m26016switch().g(comicContentImgBean.getIndexPape(), chapterListBean.getDurChapterUrl());
                if (listG == null || listG.size() <= 0) {
                    comicContentImgBean.setIsDownload(true);
                    comicContentImgBean.setLocalPath(documentFile.mo26658final().getPath());
                    DatabaseHelper.m26016switch().m26034package(comicContentImgBean);
                } else {
                    ComicContentImgBean comicContentImgBean2 = listG.get(0);
                    comicContentImgBean2.setIsDownload(true);
                    comicContentImgBean2.setLocalPath(documentFile.mo26658final().getPath());
                    DatabaseHelper.m26016switch().k(comicContentImgBean2);
                }
                m27087do(bufferedInputStream2, bufferedOutputStream);
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = bufferedInputStream2;
                m27087do(bufferedInputStream, bufferedOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream = null;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m27086class(ContentResolver contentResolver, DocumentFile documentFile, String str) throws IOException {
        BufferedWriter bufferedWriter;
        OutputStream outputStream = null;
        try {
            OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(documentFile.mo26658final());
            try {
                if (outputStreamOpenOutputStream == null) {
                    throw new IOException();
                }
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStreamOpenOutputStream));
                try {
                    bufferedWriter.write(str);
                    bufferedWriter.flush();
                    m27087do(outputStreamOpenOutputStream, bufferedWriter);
                } catch (Throwable th) {
                    th = th;
                    outputStream = outputStreamOpenOutputStream;
                    m27087do(outputStream, bufferedWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter = null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static void m27087do(Closeable... closeableArr) throws IOException {
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.content.ContentResolver] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.io.Closeable[]] */
    /* renamed from: else, reason: not valid java name */
    public static char[] m27088else(ContentResolver contentResolver, DocumentFile documentFile, int i) throws Throwable {
        BufferedReader bufferedReader;
        Object obj = null;
        try {
            try {
                contentResolver = contentResolver.openInputStream(documentFile.mo26658final());
                if (contentResolver != 0) {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(contentResolver));
                        try {
                            char[] cArr = new char[i];
                            if (bufferedReader.read(cArr, 0, i) == i) {
                                m27087do(new Closeable[]{contentResolver, bufferedReader});
                                return cArr;
                            }
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            m27087do(new Closeable[]{contentResolver, bufferedReader});
                            return null;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        bufferedReader = null;
                    } catch (Throwable th) {
                        th = th;
                        documentFile = null;
                        obj = contentResolver;
                        m27087do(new Closeable[]{obj, documentFile});
                        throw th;
                    }
                } else {
                    bufferedReader = null;
                }
                m27087do(new Closeable[]{contentResolver, bufferedReader});
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
            contentResolver = 0;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            documentFile = null;
            m27087do(new Closeable[]{obj, documentFile});
            throw th;
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public static DocumentFile m27089for(DocumentFile documentFile, String... strArr) {
        if (documentFile != null) {
            for (String str : strArr) {
                documentFile = documentFile.mo26657else(str);
                if (documentFile == null) {
                    return null;
                }
            }
        }
        return documentFile;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m27090goto(ContentResolver contentResolver, DocumentFile documentFile) throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        InputStream inputStreamOpenInputStream;
        try {
            inputStreamOpenInputStream = contentResolver.openInputStream(documentFile.mo26658final());
        } catch (Exception e) {
            e = e;
            inputStreamOpenInputStream = null;
            bufferedReader = null;
        } catch (Throwable th2) {
            bufferedReader = null;
            th = th2;
            inputStreamOpenInputStream = null;
        }
        if (inputStreamOpenInputStream == null) {
            m27087do(inputStreamOpenInputStream, null);
            return null;
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenInputStream));
            try {
                try {
                    String line = bufferedReader.readLine();
                    m27087do(inputStreamOpenInputStream, bufferedReader);
                    return line;
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    m27087do(inputStreamOpenInputStream, bufferedReader);
                    return null;
                }
            } catch (Throwable th3) {
                th = th3;
                m27087do(inputStreamOpenInputStream, bufferedReader);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            bufferedReader = null;
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
            m27087do(inputStreamOpenInputStream, bufferedReader);
            throw th;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m27091if(DocumentFile documentFile, String str) {
        if (!documentFile.mo26667super()) {
            return 0;
        }
        int i = 0;
        for (DocumentFile documentFile2 : documentFile.mo26664public()) {
            if (documentFile2.mo26669throw() && !documentFile2.mo26653catch().endsWith(str)) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: new, reason: not valid java name */
    public static DocumentFile m27092new(DocumentFile documentFile, String str) {
        DocumentFile documentFileMo26657else = documentFile.mo26657else(str);
        if (documentFileMo26657else == null) {
            return documentFile.mo26663new(str);
        }
        if (documentFileMo26657else.mo26669throw()) {
            return documentFileMo26657else;
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m27093this(ContentResolver contentResolver, DocumentFile documentFile, DocumentFile documentFile2) throws IOException {
        m27083break(contentResolver, documentFile2, contentResolver.openInputStream(documentFile.mo26658final()));
    }

    /* renamed from: try, reason: not valid java name */
    public static DocumentFile m27094try(DocumentFile documentFile, String str) {
        DocumentFile documentFileMo26657else = documentFile.mo26657else(str);
        if (documentFileMo26657else == null) {
            return documentFile.mo26659for(str);
        }
        if (documentFileMo26657else.mo26667super()) {
            return documentFileMo26657else;
        }
        return null;
    }
}
