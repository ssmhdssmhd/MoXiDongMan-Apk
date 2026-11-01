package android.support.v4;

import com.google.common.eventbus.Cfor;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class a32 {

    /* renamed from: do, reason: not valid java name */
    private final Cfor f25do;

    /* renamed from: for, reason: not valid java name */
    private final Object f26for;

    /* renamed from: if, reason: not valid java name */
    private final Object f27if;

    /* renamed from: new, reason: not valid java name */
    private final Method f28new;

    public a32(Cfor cfor, Object obj, Object obj2, Method method) {
        this.f25do = (Cfor) af1.m205continue(cfor);
        this.f27if = af1.m205continue(obj);
        this.f26for = af1.m205continue(obj2);
        this.f28new = (Method) af1.m205continue(method);
    }

    /* renamed from: do, reason: not valid java name */
    public Object m29do() {
        return this.f27if;
    }

    /* renamed from: for, reason: not valid java name */
    public Object m30for() {
        return this.f26for;
    }

    /* renamed from: if, reason: not valid java name */
    public Cfor m31if() {
        return this.f25do;
    }

    /* renamed from: new, reason: not valid java name */
    public Method m32new() {
        return this.f28new;
    }
}
