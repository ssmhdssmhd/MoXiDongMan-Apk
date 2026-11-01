package com.bumptech.glide.disklrucache;

import android.support.v4.mk;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.nio.charset.Charset;

/* renamed from: com.bumptech.glide.disklrucache.for, reason: invalid class name */
/* loaded from: classes.dex */
final class Cfor {

    /* renamed from: do, reason: not valid java name */
    public static final Charset f9328do = Charset.forName(mk.f3931if);

    /* renamed from: if, reason: not valid java name */
    public static final Charset f9329if = Charset.forName("UTF-8");

    private Cfor() {
    }

    /* renamed from: do, reason: not valid java name */
    public static void m11158do(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static String m11159for(Reader reader) throws IOException {
        try {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int i = reader.read(cArr);
                if (i == -1) {
                    return stringWriter.toString();
                }
                stringWriter.write(cArr, 0, i);
            }
        } finally {
            reader.close();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m11160if(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                m11160if(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }
}
