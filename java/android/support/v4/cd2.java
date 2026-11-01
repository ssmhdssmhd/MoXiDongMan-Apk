package android.support.v4;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.Executor;
import org.chromium.net.Celse;
import org.chromium.net.Cpublic;

/* loaded from: classes3.dex */
public abstract class cd2 extends Celse {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ boolean f743do = false;

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.cd2$do, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cdo {
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m854goto(int i) {
        switch (i) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
            default:
                throw new IllegalArgumentException("No request status found.");
            case 6:
                return 5;
            case 7:
                return 6;
            case 8:
                return 7;
            case 9:
                return 8;
            case 10:
                return 9;
            case 11:
                return 10;
            case 12:
                return 11;
            case 13:
                return 12;
            case 14:
                return 13;
            case 15:
                return 14;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public abstract void mo855break(Cpublic cpublic, Executor executor);

    /* renamed from: else, reason: not valid java name */
    public abstract void mo856else(String str, String str2);

    /* renamed from: this, reason: not valid java name */
    public abstract void mo857this(String str);
}
