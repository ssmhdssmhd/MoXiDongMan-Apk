package com.wsw.cospa.utils;

import android.support.v4.ca2;
import android.support.v4.hy1;
import android.support.v4.wk;
import android.util.Base64;
import com.alibaba.fastjson.parser.JSONLexer;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.Task;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ScriptableObject;

/* renamed from: com.wsw.cospa.utils.return, reason: invalid class name */
/* loaded from: classes2.dex */
public class Creturn {
    /* renamed from: case, reason: not valid java name */
    public static String m27037case(String str, String str2) {
        Context contextEnter = Context.enter();
        contextEnter.setOptimizationLevel(-1);
        ScriptableObject scriptableObjectInitStandardObjects = contextEnter.initStandardObjects();
        Object objEvaluateString = contextEnter.evaluateString(scriptableObjectInitStandardObjects, str, null, 1, null);
        if (str2 == null) {
            return Context.toString(objEvaluateString);
        }
        Iterator it = ((List) scriptableObjectInitStandardObjects.get(str2, scriptableObjectInitStandardObjects)).iterator();
        String str3 = "";
        while (it.hasNext()) {
            str3 = str3 + ((String) it.next()) + ',';
        }
        return str3.substring(0, str3.length() - 1);
    }

    /* renamed from: do, reason: not valid java name */
    private static String m27038do(int i, int i2, char[] cArr, char[] cArr2, int i3) {
        int i4;
        String strValueOf;
        int i5;
        int i6;
        String string;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i7 = 0;
        char c = cArr2 == null ? (char) (cArr[0] + i3) : cArr2[cArr[0]];
        char c2 = 0;
        while (true) {
            i4 = 3;
            if (c2 >= 3) {
                break;
            }
            arrayList.add(c2, String.valueOf(c2));
            c2 = (char) (c2 + 1);
        }
        int i8 = i2;
        char c3 = 0;
        int i9 = 1;
        for (int i10 = 0; i10 != 2; i10++) {
            int i11 = c & i8;
            i8 >>= 1;
            if (i8 == 0) {
                int i12 = i9 + 1;
                char c4 = cArr2 == null ? (char) (cArr[i9] + i3) : cArr2[cArr[i9]];
                i9 = i12;
                c = c4;
                i8 = i2;
            }
            c3 = (char) (((i11 > 0 ? 1 : 0) << i10) | c3);
        }
        int i13 = 16;
        if (c3 == 0) {
            char c5 = 0;
            for (int i14 = 0; i14 != 8; i14++) {
                int i15 = c & i8;
                i8 >>= 1;
                if (i8 == 0) {
                    int i16 = i9 + 1;
                    char c6 = cArr2 == null ? (char) (cArr[i9] + i3) : cArr2[cArr[i9]];
                    i9 = i16;
                    c = c6;
                    i8 = i2;
                }
                c5 = (char) (((i15 > 0 ? 1 : 0) << i14) | c5);
            }
            strValueOf = String.valueOf(c5);
        } else {
            if (c3 != 1) {
                return "";
            }
            char c7 = 0;
            for (int i17 = 0; i17 != 16; i17++) {
                int i18 = c & i8;
                i8 >>= 1;
                if (i8 == 0) {
                    int i19 = i9 + 1;
                    char c8 = cArr2 == null ? (char) (cArr[i9] + i3) : cArr2[cArr[i9]];
                    i9 = i19;
                    c = c8;
                    i8 = i2;
                }
                c7 = (char) (((i18 > 0 ? 1 : 0) << i17) | c7);
            }
            strValueOf = String.valueOf(c7);
        }
        arrayList.add(strValueOf);
        arrayList2.add(strValueOf);
        int i20 = 4;
        int i21 = 4;
        while (i9 <= i) {
            char c9 = 0;
            while (i7 != i4) {
                int i22 = c & i8;
                i8 >>= 1;
                if (i8 == 0) {
                    int i23 = i9 + 1;
                    char c10 = cArr2 == null ? (char) (cArr[i9] + i3) : cArr2[cArr[i9]];
                    i9 = i23;
                    c = c10;
                    i8 = i2;
                }
                c9 = (char) (((i22 > 0 ? 1 : 0) << i7) | c9);
                i7++;
            }
            if (c9 == 0) {
                char c11 = 0;
                for (int i24 = 0; i24 != 8; i24++) {
                    int i25 = c & i8;
                    i8 >>= 1;
                    if (i8 == 0) {
                        int i26 = i9 + 1;
                        char c12 = cArr2 == null ? (char) (cArr[i9] + i3) : cArr2[cArr[i9]];
                        i9 = i26;
                        c = c12;
                        i8 = i2;
                    }
                    c11 = (char) (((i25 > 0 ? 1 : 0) << i24) | c11);
                }
                arrayList.add(String.valueOf(c11));
                i5 = i21 + 1;
                i20--;
            } else if (c9 == 1) {
                char c13 = 0;
                for (int i27 = 0; i27 != i13; i27++) {
                    int i28 = c & i8;
                    i8 >>= 1;
                    if (i8 == 0) {
                        int i29 = i9 + 1;
                        char c14 = cArr2 == null ? (char) (cArr[i9] + i3) : cArr2[cArr[i9]];
                        i9 = i29;
                        c = c14;
                        i8 = i2;
                    }
                    c13 = (char) (((i28 > 0 ? 1 : 0) << i27) | c13);
                }
                arrayList.add(String.valueOf(c13));
                i5 = i21 + 1;
                i20--;
            } else {
                if (c9 == 2) {
                    StringBuilder sb = new StringBuilder(arrayList2.size());
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        sb.append((String) it.next());
                    }
                    return sb.toString();
                }
                i5 = i21;
                i21 = c9;
            }
            if (i20 == 0) {
                i20 = 1 << i4;
                i4++;
            }
            if (i21 < arrayList.size() && arrayList.get(i21) != null) {
                string = (String) arrayList.get(i21);
                i6 = 0;
            } else {
                if (i21 != i5) {
                    return "";
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(strValueOf);
                i6 = 0;
                sb2.append(strValueOf.charAt(0));
                string = sb2.toString();
            }
            arrayList2.add(string);
            arrayList.add(strValueOf + string.charAt(i6));
            int i30 = i5 + 1;
            i20 += -1;
            if (i20 == 0) {
                int i31 = 1 << i4;
                i4++;
                i20 = i31;
            }
            i21 = i30;
            strValueOf = string;
            i7 = 0;
            i13 = 16;
        }
        return "";
    }

    /* renamed from: else, reason: not valid java name */
    public static String m27039else(String str) {
        return Pattern.compile("[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]").matcher(str).replaceAll("").trim();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m27040for(String str) throws UnsupportedEncodingException {
        return new String(Base64.decode(str, 0), "UTF-8");
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m27041goto(ChapterListBean chapterListBean) {
        try {
            String durChapterName = chapterListBean.getDurChapterName();
            if (durChapterName.matches("^第.*?章|第.*?话|第.*?节")) {
                return durChapterName;
            }
            return "第" + chapterListBean.getDurChapterIndex() + "章 " + durChapterName;
        } catch (Exception unused) {
            return chapterListBean.getDurChapterName();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m27042if(String str) {
        char[] cArr = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ca2.f702try, 0, 0, 0, '?', '4', '5', '6', '7', '8', '9', ':', ';', ca2.f687new, hy1.f2563new, 0, 0, 0, '@', 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, '\b', '\t', '\n', 11, '\f', wk.f7547for, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 0, 0, 0, 0, 0, 0, JSONLexer.EOI, 27, 28, 29, 30, 31, ' ', '!', ca2.f674do, '#', '$', '%', ca2.f679for, '\'', '(', ')', '*', hy1.f2562if, ',', hy1.f2561for, Ctry.f28883do, Attributes.InternalPrefix, '0', '1', '2', '3'};
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return "";
        }
        char[] charArray = str.toCharArray();
        return m27038do(charArray.length, 32, charArray, cArr, 0);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m27043new(String str, String str2) throws Exception {
        byte[] bArrDecode = Base64.decode(str2, 0);
        SecretKey secretKeyGenerateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(str.getBytes()));
        Cipher cipher = Cipher.getInstance("DES");
        cipher.init(2, secretKeyGenerateSecret);
        return new String(cipher.doFinal(bArrDecode), "UTF-8");
    }

    /* renamed from: this, reason: not valid java name */
    public static String m27044this(Task task) {
        try {
            String durChapterName = task.getDurChapterName();
            if (Pattern.compile("^第.*?章|第.*?话|第.*?节").matcher(durChapterName).find()) {
                return URLDecoder.decode(m27039else(durChapterName), "utf-8");
            }
            return URLDecoder.decode("第" + task.getDurChapterIndex() + "章 " + m27039else(durChapterName), "utf-8");
        } catch (Exception e) {
            e.printStackTrace();
            return task.getDurChapterName();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static String m27045try(String str) {
        return m27037case(str, null);
    }
}
