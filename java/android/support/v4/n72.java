package android.support.v4;

/* loaded from: classes3.dex */
public class n72 extends m72 {
    public short alertDescription;

    public n72(short s) {
        this(s, null);
    }

    public n72(short s, Throwable th) {
        super(z0.m10003if(s), th);
        this.alertDescription = s;
    }

    public short getAlertDescription() {
        return this.alertDescription;
    }
}
