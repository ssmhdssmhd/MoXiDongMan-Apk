package org.bouncycastle.util.encoders;

import android.support.v4.f70;
import android.support.v4.lx;
import android.support.v4.zc2;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.util.encoders.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: do, reason: not valid java name */
    private static final Encoder f32656do = new zc2();

    /* renamed from: case, reason: not valid java name */
    public static byte[] m36343case(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f32656do.encode(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new f70("exception encoding URL safe base64 data: " + e.getMessage(), e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m36344do(String str, OutputStream outputStream) throws IOException {
        return f32656do.decode(str, outputStream);
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m36345for(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f32656do.decode(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new lx("exception decoding URL safe base64 string: " + e.getMessage(), e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m36346if(byte[] bArr, OutputStream outputStream) throws IOException {
        return f32656do.decode(bArr, 0, bArr.length, outputStream);
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m36347new(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f32656do.decode(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new lx("exception decoding URL safe base64 string: " + e.getMessage(), e);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int m36348try(byte[] bArr, OutputStream outputStream) throws IOException {
        return f32656do.encode(bArr, 0, bArr.length, outputStream);
    }
}
