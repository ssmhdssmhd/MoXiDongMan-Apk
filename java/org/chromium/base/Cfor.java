package org.chromium.base;

import java.io.FileInputStream;
import java.security.GeneralSecurityException;

/* renamed from: org.chromium.base.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {
    /* renamed from: do, reason: not valid java name */
    public byte[] m37113do(int i) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream("/dev/urandom");
            try {
                byte[] bArr = new byte[i];
                if (i != fileInputStream2.read(bArr)) {
                    throw new GeneralSecurityException("Not enough random data available");
                }
                fileInputStream2.close();
                return bArr;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
