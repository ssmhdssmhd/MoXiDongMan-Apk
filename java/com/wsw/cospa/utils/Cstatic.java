package com.wsw.cospa.utils;

import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.on0;
import android.support.v4.x10;
import android.text.TextUtils;
import com.wsw.cospa.CartoonApplication;
import freemarker.ext.servlet.Ccase;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: com.wsw.cospa.utils.static, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cstatic {
    /* renamed from: break, reason: not valid java name */
    public static String m27046break(Uri uri) {
        try {
            return new String(x10.m9346package(CartoonApplication.m24693try(), uri), "utf-8");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static androidx.documentfile.provider.DocumentFile m27047case(String str, String... strArr) {
        return x10.m9329const(CartoonApplication.m24693try(), str, strArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m27048catch(androidx.documentfile.provider.DocumentFile documentFile) {
        try {
            return new String(x10.m9347private(CartoonApplication.m24693try(), documentFile), "utf-8");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static String m27049class(String str, String str2, String... strArr) {
        try {
            return new String(x10.m9352strictfp(CartoonApplication.m24693try(), str, str2, strArr), "utf-8");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m27050const(Bitmap bitmap, Uri uri) throws IOException {
        OutputStream outputStreamOpenOutputStream = CartoonApplication.m24693try().getContentResolver().openOutputStream(uri);
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, outputStreamOpenOutputStream);
        outputStreamOpenOutputStream.flush();
        outputStreamOpenOutputStream.close();
    }

    /* renamed from: do, reason: not valid java name */
    public static androidx.documentfile.provider.DocumentFile m27051do(String str, String... strArr) {
        if (!str.startsWith("content://")) {
            str = Ccase.f24959for + Uri.decode(str);
        }
        return x10.m9339if(CartoonApplication.m24693try(), str, strArr);
    }

    /* renamed from: else, reason: not valid java name */
    public static InputStream m27052else(String str, String str2, String... strArr) {
        if (!str2.startsWith("content://")) {
            str2 = Ccase.f24959for + Uri.decode(str2);
        }
        return x10.m9344native(CartoonApplication.m24693try(), str, str2, strArr);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m27053final(Bitmap bitmap, androidx.documentfile.provider.DocumentFile documentFile) throws IOException {
        m27050const(bitmap, documentFile.getUri());
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m27054for(String str, String str2, String... strArr) {
        if (!str2.startsWith("content://")) {
            str2 = Ccase.f24959for + Uri.decode(str2);
        }
        return x10.m9356this(CartoonApplication.m24693try(), str, str2, strArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static OutputStream m27055goto(String str, String str2, String... strArr) {
        if (!str2.startsWith("content://")) {
            str2 = Ccase.f24959for + Uri.decode(str2);
        }
        return x10.m9358throws(CartoonApplication.m24693try(), str, str2, strArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static androidx.documentfile.provider.DocumentFile m27056if(String str, String str2, String... strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("fileName:");
        sb.append(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("path:");
        sb2.append(str2);
        Uri.decode(TextUtils.join(on0.f4694final, strArr));
        if (!str2.startsWith("content://")) {
            str2 = Ccase.f24959for + Uri.decode(str2);
        }
        return x10.m9333else(CartoonApplication.m24693try(), str, str2, strArr);
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m27057import(InputStream inputStream, androidx.documentfile.provider.DocumentFile documentFile) {
        if (documentFile == null) {
            return false;
        }
        return x10.m9355synchronized(CartoonApplication.m24693try(), inputStream, documentFile);
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m27058native(String str, androidx.documentfile.provider.DocumentFile documentFile) {
        return x10.m9343interface(CartoonApplication.m24693try(), str.getBytes(), documentFile);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m27059new(String str) {
        return x10.m9327catch(str);
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m27060public(String str, String str2, String str3, String... strArr) {
        if (!str3.startsWith("content://")) {
            str3 = Ccase.f24959for + Uri.decode(str3);
        }
        return x10.m9340implements(CartoonApplication.m24693try(), str.getBytes(), str2, str3, strArr);
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m27061super(byte[] bArr, androidx.documentfile.provider.DocumentFile documentFile) {
        if (documentFile == null) {
            return false;
        }
        return x10.m9343interface(CartoonApplication.m24693try(), bArr, documentFile);
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m27062this(String str, String str2, String... strArr) {
        return x10.m9334extends(CartoonApplication.m24693try(), str, str2, strArr);
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m27063throw(byte[] bArr, String str, String str2, String... strArr) {
        if (!str2.startsWith("content://")) {
            str2 = Ccase.f24959for + Uri.decode(str2);
        }
        return x10.m9340implements(CartoonApplication.m24693try(), bArr, str, str2, strArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[] m27064try(File file) throws IOException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1000);
            byte[] bArr = new byte[1000];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i == -1) {
                    fileInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m27065while(File file, androidx.documentfile.provider.DocumentFile documentFile) {
        if (documentFile == null) {
            return false;
        }
        try {
            return x10.m9355synchronized(CartoonApplication.m24693try(), new FileInputStream(file), documentFile);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }
}
