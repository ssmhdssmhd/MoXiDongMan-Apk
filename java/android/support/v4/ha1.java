package android.support.v4;

import java.io.OutputStream;
import java.security.KeyStore;

/* loaded from: classes3.dex */
public class ha1 implements KeyStore.LoadStoreParameter {

    /* renamed from: do, reason: not valid java name */
    private final OutputStream f2352do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f2353for;

    /* renamed from: if, reason: not valid java name */
    private final KeyStore.ProtectionParameter f2354if;

    public ha1(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter) {
        this(outputStream, protectionParameter, false);
    }

    public ha1(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter, boolean z) {
        this.f2352do = outputStream;
        this.f2354if = protectionParameter;
        this.f2353for = z;
    }

    public ha1(OutputStream outputStream, char[] cArr) {
        this(outputStream, cArr, false);
    }

    public ha1(OutputStream outputStream, char[] cArr, boolean z) {
        this(outputStream, new KeyStore.PasswordProtection(cArr), z);
    }

    /* renamed from: do, reason: not valid java name */
    public OutputStream m2974do() {
        return this.f2352do;
    }

    @Override // java.security.KeyStore.LoadStoreParameter
    public KeyStore.ProtectionParameter getProtectionParameter() {
        return this.f2354if;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m2975if() {
        return this.f2353for;
    }
}
