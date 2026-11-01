package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class cc1 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private SecureRandom f730do;

    /* renamed from: if, reason: not valid java name */
    private CipherParameters f731if;

    public cc1(CipherParameters cipherParameters) {
        this(cipherParameters, Cfor.m33599case());
    }

    public cc1(CipherParameters cipherParameters, SecureRandom secureRandom) {
        this.f730do = secureRandom;
        this.f731if = cipherParameters;
    }

    /* renamed from: do, reason: not valid java name */
    public CipherParameters m846do() {
        return this.f731if;
    }

    /* renamed from: if, reason: not valid java name */
    public SecureRandom m847if() {
        return this.f730do;
    }
}
