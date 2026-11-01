package android.support.v4;

import com.wsw.cospa.event.RefreshDownloadListObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class lm1 extends vz0<RefreshDownloadListObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile lm1 f3713if;

    private lm1() {
    }

    /* renamed from: case, reason: not valid java name */
    public static lm1 m4709case() {
        if (f3713if == null) {
            synchronized (lm1.class) {
                if (f3713if == null) {
                    f3713if = new lm1();
                }
            }
        }
        return f3713if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((RefreshDownloadListObserver) it.next()).onRefreshDownloadListMessage();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
