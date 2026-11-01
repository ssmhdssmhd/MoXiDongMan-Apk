package android.support.v4;

import com.wsw.cospa.event.RefreshHistoryMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class mm1 extends vz0<RefreshHistoryMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile mm1 f3962if;

    private mm1() {
    }

    /* renamed from: case, reason: not valid java name */
    public static mm1 m4950case() {
        if (f3962if == null) {
            synchronized (mm1.class) {
                if (f3962if == null) {
                    f3962if = new mm1();
                }
            }
        }
        return f3962if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((RefreshHistoryMessageObserver) it.next()).onRefreshHistoryMessage();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
