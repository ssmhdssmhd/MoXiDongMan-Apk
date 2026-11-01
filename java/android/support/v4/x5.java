package android.support.v4;

import java.io.InputStream;
import java.io.OutputStream;
import java.security.KeyStore;

/* loaded from: classes3.dex */
public class x5 implements KeyStore.LoadStoreParameter {

    /* renamed from: do, reason: not valid java name */
    private final InputStream f7771do;

    /* renamed from: for, reason: not valid java name */
    private final KeyStore.ProtectionParameter f7772for;

    /* renamed from: if, reason: not valid java name */
    private final OutputStream f7773if;

    public x5(InputStream inputStream, OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter) {
        this.f7771do = inputStream;
        this.f7773if = outputStream;
        this.f7772for = protectionParameter;
    }

    public x5(InputStream inputStream, KeyStore.ProtectionParameter protectionParameter) {
        this(inputStream, null, protectionParameter);
    }

    public x5(InputStream inputStream, char[] cArr) {
        this(inputStream, new KeyStore.PasswordProtection(cArr));
    }

    public x5(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter) {
        this(null, outputStream, protectionParameter);
    }

    public x5(OutputStream outputStream, char[] cArr) {
        this(outputStream, new KeyStore.PasswordProtection(cArr));
    }

    /* renamed from: do, reason: not valid java name */
    public InputStream m9394do() {
        if (this.f7773if == null) {
            return this.f7771do;
        }
        throw new UnsupportedOperationException("parameter configured for storage OutputStream present");
    }

    @Override // java.security.KeyStore.LoadStoreParameter
    public KeyStore.ProtectionParameter getProtectionParameter() {
        return this.f7772for;
    }

    /* renamed from: if, reason: not valid java name */
    public OutputStream m9395if() {
        OutputStream outputStream = this.f7773if;
        if (outputStream != null) {
            return outputStream;
        }
        throw new UnsupportedOperationException("parameter not configured for storage - no OutputStream");
    }
}
