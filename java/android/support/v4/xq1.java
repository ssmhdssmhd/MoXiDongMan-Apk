package android.support.v4;

import com.uc.crashsdk.export.LogType;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class xq1 extends dr0 {

    /* renamed from: for, reason: not valid java name */
    private final Digest f8015for;

    public xq1(SecureRandom secureRandom, Digest digest) {
        super(secureRandom, LogType.UNEXP_EXIT);
        this.f8015for = digest;
    }

    /* renamed from: for, reason: not valid java name */
    public Digest m9566for() {
        return this.f8015for;
    }
}
