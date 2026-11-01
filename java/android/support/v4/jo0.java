package android.support.v4;

import java.io.OutputStream;
import java.security.KeyStore;

/* loaded from: classes3.dex */
public class jo0 implements KeyStore.LoadStoreParameter {

    /* renamed from: do, reason: not valid java name */
    private OutputStream f3161do;

    /* renamed from: for, reason: not valid java name */
    private boolean f3162for;

    /* renamed from: if, reason: not valid java name */
    private KeyStore.ProtectionParameter f3163if;

    /* renamed from: case, reason: not valid java name */
    public void m3973case(boolean z) {
        this.f3162for = z;
    }

    /* renamed from: do, reason: not valid java name */
    public OutputStream m3974do() {
        return this.f3161do;
    }

    /* renamed from: for, reason: not valid java name */
    public void m3975for(OutputStream outputStream) {
        this.f3161do = outputStream;
    }

    @Override // java.security.KeyStore.LoadStoreParameter
    public KeyStore.ProtectionParameter getProtectionParameter() {
        return this.f3163if;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m3976if() {
        return this.f3162for;
    }

    /* renamed from: new, reason: not valid java name */
    public void m3977new(char[] cArr) {
        this.f3163if = new KeyStore.PasswordProtection(cArr);
    }

    /* renamed from: try, reason: not valid java name */
    public void m3978try(KeyStore.ProtectionParameter protectionParameter) {
        this.f3163if = protectionParameter;
    }
}
