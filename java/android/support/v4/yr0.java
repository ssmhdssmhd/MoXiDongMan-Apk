package android.support.v4;

import java.io.Serializable;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.FunctionBase;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b&\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u001c\u0010\u0007\u001a\u00020\u00068\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Landroid/support/v4/yr0;", "R", "Lkotlin/jvm/internal/FunctionBase;", "Ljava/io/Serializable;", "", "toString", "", "arity", OptRuntime.GeneratorState.resumptionPoint_TYPE, "getArity", "()I", "<init>", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public abstract class yr0<R> implements FunctionBase<R>, Serializable {
    private final int arity;

    public yr0(int i) {
        this.arity = i;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.arity;
    }

    @m41
    public String toString() {
        String strM1429public = dm1.m1429public(this);
        Csuper.m30696super(strM1429public, "Reflection.renderLambdaToString(this)");
        return strM1429public;
    }
}
