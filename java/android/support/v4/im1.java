package android.support.v4;

import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.event.RefreshBookDetailMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class im1 extends vz0<RefreshBookDetailMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile im1 f2807if;

    private im1() {
    }

    /* renamed from: case, reason: not valid java name */
    public static im1 m3512case() {
        if (f2807if == null) {
            synchronized (im1.class) {
                if (f2807if == null) {
                    f2807if = new im1();
                }
            }
        }
        return f2807if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((RefreshBookDetailMessageObserver) it.next()).onRefreshBookDetailMessage((ComicShelfBean) objArr[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
