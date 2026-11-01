package android.support.v4;

import com.wsw.cospa.event.ObtainRecommendListMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class k61 extends vz0<ObtainRecommendListMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile k61 f3311if;

    private k61() {
    }

    /* renamed from: case, reason: not valid java name */
    public static k61 m4266case() {
        if (f3311if == null) {
            synchronized (k61.class) {
                if (f3311if == null) {
                    f3311if = new k61();
                }
            }
        }
        return f3311if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((ObtainRecommendListMessageObserver) it.next()).onObtainRecommendListMessage();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
