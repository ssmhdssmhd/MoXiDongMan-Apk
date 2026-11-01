package android.support.v4;

import com.wsw.cospa.event.CleanAllBookMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class cm extends vz0<CleanAllBookMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile cm f819if;

    private cm() {
    }

    /* renamed from: case, reason: not valid java name */
    public static cm m969case() {
        if (f819if == null) {
            synchronized (cm.class) {
                if (f819if == null) {
                    f819if = new cm();
                }
            }
        }
        return f819if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if, reason: not valid java name */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((CleanAllBookMessageObserver) it.next()).onCleanAllBookMessage();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
