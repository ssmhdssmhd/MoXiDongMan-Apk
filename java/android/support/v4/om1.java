package android.support.v4;

import com.wsw.cospa.event.RefreshRecommendChannelMessageObserver;
import com.wsw.cospa.vo.FindParentVo;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class om1 extends vz0<RefreshRecommendChannelMessageObserver> {

    /* renamed from: if, reason: not valid java name */
    private static volatile om1 f4681if;

    private om1() {
    }

    /* renamed from: case, reason: not valid java name */
    public static om1 m5717case() {
        if (f4681if == null) {
            synchronized (om1.class) {
                if (f4681if == null) {
                    f4681if = new om1();
                }
            }
        }
        return f4681if;
    }

    @Override // android.support.v4.vz0
    /* renamed from: if */
    public void mo970if(Object... objArr) {
        try {
            Iterator it = this.f7364do.iterator();
            while (it.hasNext()) {
                ((RefreshRecommendChannelMessageObserver) it.next()).onRefreshChannel((FindParentVo) objArr[0], (List) objArr[1]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
