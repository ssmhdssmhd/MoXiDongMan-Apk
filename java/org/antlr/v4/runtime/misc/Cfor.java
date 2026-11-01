package org.antlr.v4.runtime.misc;

import android.support.v4.ca2;
import android.support.v4.sn0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.lang3.Cclass;

/* renamed from: org.antlr.v4.runtime.misc.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {
    /* renamed from: break, reason: not valid java name */
    public static <T> void m32032break(Collection<T> collection, T t) {
        if (collection == null) {
            return;
        }
        while (collection.contains(t)) {
            collection.remove(t);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static String m32033case(int i) {
        return m32034catch(i, "\n");
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m32034catch(int i, String str) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 1; i2 <= i; i2++) {
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: class, reason: not valid java name */
    public static String m32035class(int i) {
        return m32034catch(i, Cclass.f28652do);
    }

    /* renamed from: const, reason: not valid java name */
    public static char[] m32036const(Cdo cdo) {
        if (cdo == null) {
            return null;
        }
        return cdo.m32024native();
    }

    /* renamed from: do, reason: not valid java name */
    public static int m32037do(String str, char c) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == c) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m32038else(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        int i = 0;
        for (Object obj : objArr) {
            if (obj != null) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: final, reason: not valid java name */
    public static Map<String, Integer> m32039final(String[] strArr) {
        HashMap map = new HashMap();
        for (int i = 0; i < strArr.length; i++) {
            map.put(strArr[i], Integer.valueOf(i));
        }
        return map;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m32040for(String str, int i) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '\t') {
                int i4 = i - (i2 % i);
                i2 += i4;
                sb.append(m32035class(i4));
            } else if (cCharAt != '\n') {
                i2++;
                sb.append(cCharAt);
            } else {
                sb.append(cCharAt);
                i2 = 0;
            }
        }
        return sb.toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public static char[] m32041goto(String str) throws IOException {
        return m32045this(str, null);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m32042if(String str, boolean z) {
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            if (c == ' ' && z) {
                sb.append(ca2.f683import);
            } else if (c == '\t') {
                sb.append("\\t");
            } else if (c == '\n') {
                sb.append("\\n");
            } else if (c == '\r') {
                sb.append("\\r");
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> String m32043new(Iterator<T> it, String str) {
        StringBuilder sb = new StringBuilder();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    /* renamed from: super, reason: not valid java name */
    public static sn0 m32044super(BitSet bitSet) {
        sn0 sn0Var = new sn0(new int[0]);
        int iNextSetBit = bitSet.nextSetBit(0);
        while (iNextSetBit >= 0) {
            sn0Var.add(iNextSetBit);
            iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1);
        }
        return sn0Var;
    }

    /* renamed from: this, reason: not valid java name */
    public static char[] m32045this(String str, String str2) throws IOException {
        int length = (int) new File(str).length();
        FileInputStream fileInputStream = new FileInputStream(str);
        InputStreamReader inputStreamReader = str2 != null ? new InputStreamReader(fileInputStream, str2) : new InputStreamReader(fileInputStream);
        try {
            char[] cArrCopyOf = new char[length];
            int i = inputStreamReader.read(cArrCopyOf);
            if (i < length) {
                cArrCopyOf = Arrays.copyOf(cArrCopyOf, i);
            }
            return cArrCopyOf;
        } finally {
            inputStreamReader.close();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m32046throw(String str, String str2) throws IOException {
        m32048while(str, str2, null);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> String m32047try(T[] tArr, String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < tArr.length; i++) {
            sb.append(tArr[i]);
            if (i < tArr.length - 1) {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    /* renamed from: while, reason: not valid java name */
    public static void m32048while(String str, String str2, String str3) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
        OutputStreamWriter outputStreamWriter = str3 != null ? new OutputStreamWriter(fileOutputStream, str3) : new OutputStreamWriter(fileOutputStream);
        try {
            outputStreamWriter.write(str2);
        } finally {
            outputStreamWriter.close();
        }
    }
}
