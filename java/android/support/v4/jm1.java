package android.support.v4;

import com.wsw.cospa.event.RefreshBookGroupMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class jm1 extends vz0<RefreshBookGroupMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile jm1 f3146if;

    private jm1() {
    }

    /* renamed from: case, reason: not valid java name */
    public static jm1 m3934case() {
        if (f3146if == null) {
            synchronized (jm1.class) {
                if (f3146if == null) {
                    f3146if = new jm1();
                }
            }
        }
        return f3146if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((RefreshBookGroupMessageObserver) it.next()).onRefreshBookGroupMessage();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
