package android.support.v4;

import androidx.core.app.NotificationCompat;
import com.google.common.base.Csuper;

@o8
/* loaded from: classes2.dex */
public class dx {

    /* renamed from: do, reason: not valid java name */
    private final Object f1156do;

    /* renamed from: if, reason: not valid java name */
    private final Object f1157if;

    public dx(Object obj, Object obj2) {
        this.f1156do = af1.m205continue(obj);
        this.f1157if = af1.m205continue(obj2);
    }

    /* renamed from: do, reason: not valid java name */
    public Object m1567do() {
        return this.f1157if;
    }

    /* renamed from: if, reason: not valid java name */
    public Object m1568if() {
        return this.f1156do;
    }

    public String toString() {
        return Csuper.m15184for(this).m15190case("source", this.f1156do).m15190case(NotificationCompat.CATEGORY_EVENT, this.f1157if).toString();
    }
}
