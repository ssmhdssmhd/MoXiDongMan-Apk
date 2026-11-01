package android.support.v4;

import com.wsw.cospa.event.RefreshAllBookMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class hm1 extends vz0<RefreshAllBookMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile hm1 f2441if;

    private hm1() {
    }

    /* renamed from: case, reason: not valid java name */
    public static hm1 m3062case() {
        if (f2441if == null) {
            synchronized (hm1.class) {
                if (f2441if == null) {
                    f2441if = new hm1();
                }
            }
        }
        return f2441if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((RefreshAllBookMessageObserver) it.next()).onRefreshAllBookMessage();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
