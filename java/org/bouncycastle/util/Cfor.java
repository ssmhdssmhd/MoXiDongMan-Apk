package org.bouncycastle.util;

import android.support.v4.eb2;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Vector;

/* renamed from: org.bouncycastle.util.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static String f32657do;

    /* renamed from: org.bouncycastle.util.for$do, reason: invalid class name */
    public static class Cdo implements PrivilegedAction<String> {
        @Override // java.security.PrivilegedAction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public String run() {
            return System.getProperty("line.separator");
        }
    }

    /* renamed from: org.bouncycastle.util.for$if, reason: invalid class name */
    public static class Cif extends ArrayList<String> implements StringList {
        private Cif() {
        }

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public void add(int i, String str) {
            super.add(i, (int) str);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(String str) {
            return super.add((Cif) str);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List, org.bouncycastle.util.StringList
        public /* bridge */ /* synthetic */ String get(int i) {
            return (String) super.get(i);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public String set(int i, String str) {
            return (String) super.set(i, (int) str);
        }

        @Override // org.bouncycastle.util.StringList
        public String[] toStringArray() {
            int size = size();
            String[] strArr = new String[size];
            for (int i = 0; i != size; i++) {
                strArr[i] = get(i);
            }
            return strArr;
        }

        @Override // org.bouncycastle.util.StringList
        public String[] toStringArray(int i, int i2) {
            String[] strArr = new String[i2 - i];
            for (int i3 = i; i3 != size() && i3 != i2; i3++) {
                strArr[i3 - i] = get(i3);
            }
            return strArr;
        }
    }

    static {
        try {
            try {
                f32657do = (String) AccessController.doPrivileged(new Cdo());
            } catch (Exception unused) {
                f32657do = String.format("%n", new Object[0]);
            }
        } catch (Exception unused2) {
            f32657do = "\n";
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static String m36349break(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i = 0; i != charArray.length; i++) {
            char c = charArray[i];
            if ('A' <= c && 'Z' >= c) {
                charArray[i] = (char) ((c - 'A') + 97);
                z = true;
            }
        }
        return z ? new String(charArray) : str;
    }

    /* renamed from: case, reason: not valid java name */
    public static String[] m36350case(String str, char c) {
        int i;
        Vector vector = new Vector();
        boolean z = true;
        while (true) {
            if (!z) {
                break;
            }
            int iIndexOf = str.indexOf(c);
            if (iIndexOf > 0) {
                vector.addElement(str.substring(0, iIndexOf));
                str = str.substring(iIndexOf + 1);
            } else {
                vector.addElement(str);
                z = false;
            }
        }
        int size = vector.size();
        String[] strArr = new String[size];
        for (i = 0; i != size; i++) {
            strArr[i] = (String) vector.elementAt(i);
        }
        return strArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m36351catch(char[] cArr, OutputStream outputStream) throws IOException {
        int i;
        int i2;
        int i3 = 0;
        while (i3 < cArr.length) {
            char c = cArr[i3];
            int i4 = c;
            if (c >= 128) {
                if (c < 2048) {
                    i = (c >> 6) | 192;
                } else if (c < 55296 || c > 57343) {
                    outputStream.write((c >> '\f') | 224);
                    i = ((c >> 6) & 63) | 128;
                } else {
                    i3++;
                    if (i3 >= cArr.length) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    char c2 = cArr[i3];
                    if (c > 56319) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    int i5 = (((c & 1023) << 10) | (c2 & 1023)) + 65536;
                    outputStream.write((i5 >> 18) | MountainSceneView.f20267finally);
                    outputStream.write(((i5 >> 12) & 63) | 128);
                    outputStream.write(((i5 >> 6) & 63) | 128);
                    i2 = i5;
                    i4 = (i2 & 63) | 128;
                }
                outputStream.write(i);
                i2 = c;
                i4 = (i2 & 63) | 128;
            }
            outputStream.write(i4);
            i3++;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static byte[] m36352class(String str) {
        return m36353const(str.toCharArray());
    }

    /* renamed from: const, reason: not valid java name */
    public static byte[] m36353const(char[] cArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            m36351catch(cArr, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            throw new IllegalStateException("cannot encode string to byte array!");
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static char[] m36354do(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return cArr;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m36355else(String str, byte[] bArr, int i) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i + i2] = (byte) str.charAt(i2);
        }
        return length;
    }

    /* renamed from: final, reason: not valid java name */
    public static String m36356final(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i = 0; i != charArray.length; i++) {
            char c = charArray[i];
            if ('a' <= c && 'z' >= c) {
                charArray[i] = (char) ((c - 'a') + 65);
                z = true;
            }
        }
        return z ? new String(charArray) : str;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m36357for(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        int iM1769if = eb2.m1769if(bArr, cArr);
        if (iM1769if >= 0) {
            return new String(cArr, 0, iM1769if);
        }
        throw new IllegalArgumentException("Invalid UTF-8 input");
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte[] m36358goto(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m36359if(byte[] bArr) {
        return new String(m36354do(bArr));
    }

    /* renamed from: new, reason: not valid java name */
    public static String m36360new() {
        return f32657do;
    }

    /* renamed from: this, reason: not valid java name */
    public static byte[] m36361this(char[] cArr) {
        int length = cArr.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr[i] = (byte) cArr[i];
        }
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static StringList m36362try() {
        return new Cif(null);
    }
}
