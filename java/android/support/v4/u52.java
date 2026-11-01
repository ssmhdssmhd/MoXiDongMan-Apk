package android.support.v4;

import org.bouncycastle.util.test.TestResult;

/* loaded from: classes3.dex */
public class u52 extends RuntimeException {
    private TestResult _result;

    public u52(TestResult testResult) {
        this._result = testResult;
    }

    public TestResult getResult() {
        return this._result;
    }
}
