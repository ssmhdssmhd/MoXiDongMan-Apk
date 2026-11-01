package android.support.v4;

import com.wsw.cospa.event.UpdateHomeTabMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class xc2 extends vz0<UpdateHomeTabMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile xc2 f7868if;

    private xc2() {
    }

    /* renamed from: case, reason: not valid java name */
    public static xc2 m9453case() {
        if (f7868if == null) {
            synchronized (xc2.class) {
                if (f7868if == null) {
                    f7868if = new xc2();
                }
            }
        }
        return f7868if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((UpdateHomeTabMessageObserver) it.next()).onUpdateHomeTabMessage();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
