package android.support.v4;

import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.event.RefreshSingleBookMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class pm1 extends vz0<RefreshSingleBookMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile pm1 f5115if;

    private pm1() {
    }

    /* renamed from: case, reason: not valid java name */
    public static pm1 m6120case() {
        if (f5115if == null) {
            synchronized (pm1.class) {
                if (f5115if == null) {
                    f5115if = new pm1();
                }
            }
        }
        return f5115if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((RefreshSingleBookMessageObserver) it.next()).onRefreshBookMessage((ComicShelfBean) objArr[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
