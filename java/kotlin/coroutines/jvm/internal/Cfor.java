package kotlin.coroutines.jvm.internal;

import android.support.v4.e7;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.wp0;
import android.support.v4.z41;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.jsoup.nodes.Attributes;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0001¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u0004*\u00020\u0000H\u0002\u001a\f\u0010\u0007\u001a\u00020\u0006*\u00020\u0000H\u0002\u001a\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002\u001a\u001b\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f*\u00020\u0000H\u0001¢\u0006\u0004\b\u000e\u0010\u000f\"\u0016\u0010\u0011\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroid/support/v4/e7;", "Ljava/lang/StackTraceElement;", "try", "(Landroid/support/v4/e7;)Ljava/lang/StackTraceElement;", "Lkotlin/coroutines/jvm/internal/if;", "if", "", "for", "expected", "actual", "Landroid/support/v4/ub2;", "do", "", "", "new", "(Landroid/support/v4/e7;)[Ljava/lang/String;", OptRuntime.GeneratorState.resumptionPoint_TYPE, "COROUTINES_DEBUG_METADATA_VERSION", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.coroutines.jvm.internal.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static final int f27798do = 1;

    /* renamed from: do, reason: not valid java name */
    private static final void m30411do(int i, int i2) {
        if (i2 <= i) {
            return;
        }
        throw new IllegalStateException(("Debug metadata version mismatch. Expected: " + i + ", got " + i2 + ". Please update the Kotlin standard library.").toString());
    }

    /* renamed from: for, reason: not valid java name */
    private static final int m30412for(e7 e7Var) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            Field field = e7Var.getClass().getDeclaredField("label");
            Csuper.m30696super(field, "field");
            field.setAccessible(true);
            Object obj = field.get(e7Var);
            if (!(obj instanceof Integer)) {
                obj = null;
            }
            Integer num = (Integer) obj;
            return (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static final Cif m30413if(e7 e7Var) {
        return (Cif) e7Var.getClass().getAnnotation(Cif.class);
    }

    @iz1(version = "1.3")
    @wp0(name = "getSpilledVariableFieldMapping")
    @z41
    /* renamed from: new, reason: not valid java name */
    public static final String[] m30414new(@m41 e7 getSpilledVariableFieldMapping) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        Csuper.m30700throw(getSpilledVariableFieldMapping, "$this$getSpilledVariableFieldMapping");
        Cif cifM30413if = m30413if(getSpilledVariableFieldMapping);
        if (cifM30413if == null) {
            return null;
        }
        m30411do(1, cifM30413if.v());
        ArrayList arrayList = new ArrayList();
        int iM30412for = m30412for(getSpilledVariableFieldMapping);
        int[] iArrI = cifM30413if.i();
        int length = iArrI.length;
        for (int i = 0; i < length; i++) {
            if (iArrI[i] == iM30412for) {
                arrayList.add(cifM30413if.s()[i]);
                arrayList.add(cifM30413if.n()[i]);
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (String[]) array;
    }

    @iz1(version = "1.3")
    @wp0(name = "getStackTraceElement")
    @z41
    /* renamed from: try, reason: not valid java name */
    public static final StackTraceElement m30415try(@m41 e7 getStackTraceElementImpl) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        String strC;
        Csuper.m30700throw(getStackTraceElementImpl, "$this$getStackTraceElementImpl");
        Cif cifM30413if = m30413if(getStackTraceElementImpl);
        if (cifM30413if == null) {
            return null;
        }
        m30411do(1, cifM30413if.v());
        int iM30412for = m30412for(getStackTraceElementImpl);
        int i = iM30412for < 0 ? -1 : cifM30413if.l()[iM30412for];
        String strM30417if = Cnew.f27800for.m30417if(getStackTraceElementImpl);
        if (strM30417if == null) {
            strC = cifM30413if.c();
        } else {
            strC = strM30417if + Attributes.InternalPrefix + cifM30413if.c();
        }
        return new StackTraceElement(strC, cifM30413if.m(), cifM30413if.f(), i);
    }
}
