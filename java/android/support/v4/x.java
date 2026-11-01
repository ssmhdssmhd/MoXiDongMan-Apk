package android.support.v4;

import java.io.Serializable;
import kotlin.jvm.internal.Cclass;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.FunctionBase;
import kotlin.reflect.KDeclarationContainer;

@iz1(version = "1.4")
/* loaded from: classes3.dex */
public class x implements FunctionBase, Serializable {
    private final int arity;
    private final int flags;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    public final Object receiver;
    private final String signature;

    public x(int i, Class cls, String str, String str2, int i2) {
        this(i, Cclass.NO_RECEIVER, cls, str, str2, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return this.isTopLevel == xVar.isTopLevel && this.arity == xVar.arity && this.flags == xVar.flags && Csuper.m30676else(this.receiver, xVar.receiver) && Csuper.m30676else(this.owner, xVar.owner) && this.name.equals(xVar.name) && this.signature.equals(xVar.signature);
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.arity;
    }

    public KDeclarationContainer getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        return this.isTopLevel ? dm1.m1417else(cls) : dm1.m1426new(cls);
    }

    public int hashCode() {
        Object obj = this.receiver;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
        Class cls = this.owner;
        return ((((((((((iHashCode + (cls != null ? cls.hashCode() : 0)) * 31) + this.name.hashCode()) * 31) + this.signature.hashCode()) * 31) + (this.isTopLevel ? 1231 : 1237)) * 31) + this.arity) * 31) + this.flags;
    }

    public String toString() {
        return dm1.m1430return(this);
    }

    public x(int i, Object obj, Class cls, String str, String str2, int i2) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = (i2 & 1) == 1;
        this.arity = i;
        this.flags = i2 >> 1;
    }
}
