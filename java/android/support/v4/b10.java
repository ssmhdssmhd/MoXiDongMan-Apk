package android.support.v4;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.StateAwareMessageSigner;

/* loaded from: classes3.dex */
public class b10 extends a10 {

    /* renamed from: new, reason: not valid java name */
    private final StateAwareMessageSigner f308new;

    public b10(StateAwareMessageSigner stateAwareMessageSigner, Digest digest) {
        super(stateAwareMessageSigner, digest);
        this.f308new = stateAwareMessageSigner;
    }

    /* renamed from: do, reason: not valid java name */
    public a4 m421do() {
        return this.f308new.getUpdatedPrivateKey();
    }
}
