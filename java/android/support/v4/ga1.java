package android.support.v4;

import java.io.OutputStream;
import java.security.KeyStore;

/* loaded from: classes3.dex */
public class ga1 extends ha1 {
    public ga1(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter) {
        super(outputStream, protectionParameter, false);
    }

    public ga1(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter, boolean z) {
        super(outputStream, protectionParameter, z);
    }

    public ga1(OutputStream outputStream, char[] cArr) {
        super(outputStream, cArr, false);
    }

    public ga1(OutputStream outputStream, char[] cArr, boolean z) {
        super(outputStream, new KeyStore.PasswordProtection(cArr), z);
    }
}
