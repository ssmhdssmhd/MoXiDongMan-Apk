package android.support.v4;

/* loaded from: classes3.dex */
public class l41 extends UnsupportedOperationException {
    private static final long serialVersionUID = 20131021;
    private final String code;

    public l41(String str) {
        this(str, (String) null);
    }

    public String getCode() {
        return this.code;
    }

    public l41(Throwable th) {
        this(th, (String) null);
    }

    public l41(String str, Throwable th) {
        this(str, th, null);
    }

    public l41(String str, String str2) {
        super(str);
        this.code = str2;
    }

    public l41(Throwable th, String str) {
        super(th);
        this.code = str;
    }

    public l41(String str, Throwable th, String str2) {
        super(str, th);
        this.code = str2;
    }
}
