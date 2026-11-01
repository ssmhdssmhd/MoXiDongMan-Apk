package android.support.v4;

/* loaded from: classes3.dex */
public class xi1 extends wi1 {
    private final c31 mNetworkException;
    private final int mQuicDetailedErrorCode;

    public xi1(String str, int i, int i2, int i3) {
        super(str, null);
        this.mNetworkException = new c31(str, i, i2);
        this.mQuicDetailedErrorCode = i3;
    }

    @Override // android.support.v4.b31
    public int getCronetInternalErrorCode() {
        return this.mNetworkException.getCronetInternalErrorCode();
    }

    @Override // android.support.v4.b31
    public int getErrorCode() {
        return this.mNetworkException.getErrorCode();
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.mNetworkException.getMessage() + ", QuicDetailedErrorCode=" + this.mQuicDetailedErrorCode;
    }

    @Override // android.support.v4.wi1
    public int getQuicDetailedErrorCode() {
        return this.mQuicDetailedErrorCode;
    }

    @Override // android.support.v4.b31
    public boolean immediatelyRetryable() {
        return this.mNetworkException.immediatelyRetryable();
    }
}
