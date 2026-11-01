package android.support.v4;

import java.security.Provider;
import java.security.Security;
import org.bouncycastle.jcajce.util.Ctry;
import org.bouncycastle.jce.provider.Cdo;

/* loaded from: classes3.dex */
public class w5 extends Ctry {

    /* renamed from: if, reason: not valid java name */
    private static volatile Provider f7397if;

    public w5() {
        super(m9052do());
    }

    /* renamed from: do, reason: not valid java name */
    private static synchronized Provider m9052do() {
        if (Security.getProvider(Cdo.PROVIDER_NAME) != null) {
            return Security.getProvider(Cdo.PROVIDER_NAME);
        }
        if (f7397if != null) {
            return f7397if;
        }
        f7397if = new Cdo();
        return f7397if;
    }
}
