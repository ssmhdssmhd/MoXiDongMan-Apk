package android.support.v4;

import com.wsw.cospa.event.DownloadComicMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class r20 extends vz0<DownloadComicMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile r20 f5589if;

    private r20() {
    }

    /* renamed from: case, reason: not valid java name */
    public static r20 m6733case() {
        if (f5589if == null) {
            synchronized (r20.class) {
                if (f5589if == null) {
                    f5589if = new r20();
                }
            }
        }
        return f5589if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((DownloadComicMessageObserver) it.next()).onDownloadComicMessage(objArr);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
