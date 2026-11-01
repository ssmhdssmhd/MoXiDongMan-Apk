package android.support.v4;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class d7 implements Serializable {
    private int error_code;
    private String reason;
    private String resultcode;

    public int getError_code() {
        return this.error_code;
    }

    public String getReason() {
        return this.reason;
    }

    public String getResultcode() {
        return this.resultcode;
    }

    public void setError_code(int i) {
        this.error_code = i;
    }

    public void setReason(String str) {
        this.reason = str;
    }

    public void setResultcode(String str) {
        this.resultcode = str;
    }
}
