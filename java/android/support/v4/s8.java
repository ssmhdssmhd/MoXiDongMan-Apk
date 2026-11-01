package android.support.v4;

import androidx.annotation.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes3.dex */
public class s8 extends c31 {
    public static final /* synthetic */ boolean $assertionsDisabled = false;

    public s8(String str, int i, int i2) {
        super(str, i, i2);
    }

    @Override // android.support.v4.c31, android.support.v4.b31
    public boolean immediatelyRetryable() {
        int i = this.mCronetInternalErrorCode;
        if (i == -358 || i == -352) {
            return true;
        }
        return super.immediatelyRetryable();
    }
}
