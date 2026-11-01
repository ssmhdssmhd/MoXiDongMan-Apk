package android.support.v4;

import com.wsw.cospa.bean.RipeFile;
import com.wsw.cospa.event.RefreshLocalFileMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class nm1 extends vz0<RefreshLocalFileMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile nm1 f4267if;

    private nm1() {
    }

    /* renamed from: case, reason: not valid java name */
    public static nm1 m5277case() {
        if (f4267if == null) {
            synchronized (nm1.class) {
                if (f4267if == null) {
                    f4267if = new nm1();
                }
            }
        }
        return f4267if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((RefreshLocalFileMessageObserver) it.next()).onRefreshFileMessage((RipeFile) objArr[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
