package android.support.v4;

import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes3.dex */
public final class sm0 extends RejectedExecutionException {
    public sm0() {
        super("Inline execution is prohibited for this request");
    }
}
