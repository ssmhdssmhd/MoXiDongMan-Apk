package android.support.v4;

import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.event.DeleteBookMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class gz extends vz0<DeleteBookMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile gz f2270if;

    private gz() {
    }

    /* renamed from: case, reason: not valid java name */
    public static gz m2828case() {
        if (f2270if == null) {
            synchronized (gz.class) {
                if (f2270if == null) {
                    f2270if = new gz();
                }
            }
        }
        return f2270if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((DeleteBookMessageObserver) it.next()).onDeleteBookMessage((ComicShelfBean) objArr[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
