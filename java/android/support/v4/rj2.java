package android.support.v4;

import java.io.IOException;

/* loaded from: classes3.dex */
public class rj2 extends IOException {
    private static final long serialVersionUID = 1;
    private Cdo type;

    /* renamed from: android.support.v4.rj2$do, reason: invalid class name */
    public enum Cdo {
        WRONG_PASSWORD,
        TASK_CANCELLED_EXCEPTION,
        UNKNOWN
    }

    public rj2(String str) {
        super(str);
        this.type = Cdo.UNKNOWN;
    }

    public Cdo getType() {
        return this.type;
    }

    public rj2(Exception exc) {
        super(exc);
        this.type = Cdo.UNKNOWN;
    }

    public rj2(String str, Exception exc) {
        super(str, exc);
        this.type = Cdo.UNKNOWN;
    }

    public rj2(String str, Cdo cdo) {
        super(str);
        this.type = Cdo.UNKNOWN;
        this.type = cdo;
    }

    public rj2(String str, Throwable th, Cdo cdo) {
        super(str, th);
        this.type = Cdo.UNKNOWN;
        this.type = cdo;
    }
}
