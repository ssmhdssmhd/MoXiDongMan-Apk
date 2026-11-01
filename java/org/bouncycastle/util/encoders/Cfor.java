package org.bouncycastle.util.encoders;

import android.support.v4.f70;
import android.support.v4.lx;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.util.encoders.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static final Encoder f32650do = new Cnew();

    /* renamed from: case, reason: not valid java name */
    public static byte[] m36327case(byte[] bArr) {
        return m36329else(bArr, 0, bArr.length);
    }

    /* renamed from: do, reason: not valid java name */
    public static int m36328do(String str, OutputStream outputStream) throws IOException {
        return f32650do.decode(str, outputStream);
    }

    /* renamed from: else, reason: not valid java name */
    public static byte[] m36329else(byte[] bArr, int i, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f32650do.encode(bArr, i, i2, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new f70("exception encoding Hex string: " + e.getMessage(), e);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m36330for(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f32650do.decode(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new lx("exception decoding Hex data: " + e.getMessage(), e);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m36331goto(byte[] bArr) {
        return m36334this(bArr, 0, bArr.length);
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m36332if(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f32650do.decode(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new lx("exception decoding Hex string: " + e.getMessage(), e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static int m36333new(byte[] bArr, int i, int i2, OutputStream outputStream) throws IOException {
        return f32650do.encode(bArr, i, i2, outputStream);
    }

    /* renamed from: this, reason: not valid java name */
    public static String m36334this(byte[] bArr, int i, int i2) {
        return org.bouncycastle.util.Cfor.m36359if(m36329else(bArr, i, i2));
    }

    /* renamed from: try, reason: not valid java name */
    public static int m36335try(byte[] bArr, OutputStream outputStream) throws IOException {
        return f32650do.encode(bArr, 0, bArr.length, outputStream);
    }
}
