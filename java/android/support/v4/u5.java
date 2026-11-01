package android.support.v4;

import java.io.OutputStream;
import java.security.KeyStore;

/* loaded from: classes3.dex */
public class u5 implements KeyStore.LoadStoreParameter {

    /* renamed from: do, reason: not valid java name */
    private final KeyStore.ProtectionParameter f6759do;

    /* renamed from: for, reason: not valid java name */
    private OutputStream f6760for;

    /* renamed from: if, reason: not valid java name */
    private final u91 f6761if;

    public u5(OutputStream outputStream, u91 u91Var, KeyStore.ProtectionParameter protectionParameter) {
        this.f6760for = outputStream;
        this.f6761if = u91Var;
        this.f6759do = protectionParameter;
    }

    public u5(OutputStream outputStream, u91 u91Var, char[] cArr) {
        this(outputStream, u91Var, new KeyStore.PasswordProtection(cArr));
    }

    /* renamed from: do, reason: not valid java name */
    public OutputStream m8244do() {
        return this.f6760for;
    }

    @Override // java.security.KeyStore.LoadStoreParameter
    public KeyStore.ProtectionParameter getProtectionParameter() {
        return this.f6759do;
    }

    /* renamed from: if, reason: not valid java name */
    public u91 m8245if() {
        return this.f6761if;
    }
}
