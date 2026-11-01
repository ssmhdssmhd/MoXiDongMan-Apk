package org.bouncycastle.util.encoders;

import android.support.v4.f70;
import android.support.v4.lx;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.util.encoders.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final Encoder f32649do = new Cif();

    /* renamed from: break, reason: not valid java name */
    public static String m36317break(byte[] bArr, int i, int i2) {
        return Cfor.m36359if(m36322goto(bArr, i, i2));
    }

    /* renamed from: case, reason: not valid java name */
    public static int m36318case(byte[] bArr, OutputStream outputStream) throws IOException {
        return f32649do.encode(bArr, 0, bArr.length, outputStream);
    }

    /* renamed from: do, reason: not valid java name */
    public static int m36319do(String str, OutputStream outputStream) throws IOException {
        return f32649do.decode(str, outputStream);
    }

    /* renamed from: else, reason: not valid java name */
    public static byte[] m36320else(byte[] bArr) {
        return m36322goto(bArr, 0, bArr.length);
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m36321for(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((str.length() / 4) * 3);
        try {
            f32649do.decode(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new lx("unable to decode base64 string: " + e.getMessage(), e);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte[] m36322goto(byte[] bArr, int i, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(((i2 + 2) / 3) * 4);
        try {
            f32649do.encode(bArr, i, i2, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new f70("exception encoding base64 string: " + e.getMessage(), e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m36323if(byte[] bArr, int i, int i2, OutputStream outputStream) {
        try {
            return f32649do.decode(bArr, i, i2, outputStream);
        } catch (Exception e) {
            throw new lx("unable to decode base64 data: " + e.getMessage(), e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m36324new(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((bArr.length / 4) * 3);
        try {
            f32649do.decode(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new lx("unable to decode base64 data: " + e.getMessage(), e);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static String m36325this(byte[] bArr) {
        return m36317break(bArr, 0, bArr.length);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m36326try(byte[] bArr, int i, int i2, OutputStream outputStream) throws IOException {
        return f32649do.encode(bArr, i, i2, outputStream);
    }
}
