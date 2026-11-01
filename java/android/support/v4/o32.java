package android.support.v4;

import com.wsw.cospa.event.SwitchRecommendModeMessageObserver;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class o32 extends vz0<SwitchRecommendModeMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile o32 f4407if;

    private o32() {
    }

    /* renamed from: case, reason: not valid java name */
    public static o32 m5454case() {
        if (f4407if == null) {
            synchronized (o32.class) {
                if (f4407if == null) {
                    f4407if = new o32();
                }
            }
        }
        return f4407if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((SwitchRecommendModeMessageObserver) it.next()).onSwitchMode(((Boolean) objArr[0]).booleanValue());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
