package android.support.v4;

import java.util.Collection;
import org.apache.commons.lang3.Ctry;
import org.apache.commons.lang3.builder.Ccase;

/* loaded from: classes3.dex */
public class yl1 extends Ccase {
    private static final long serialVersionUID = 1;

    public boolean accept(Class<?> cls) {
        return true;
    }

    @Override // org.apache.commons.lang3.builder.Ccase
    public void appendDetail(StringBuffer stringBuffer, String str, Object obj) {
        if (Ctry.m32721interface(obj.getClass()) || String.class.equals(obj.getClass()) || !accept(obj.getClass())) {
            super.appendDetail(stringBuffer, str, obj);
        } else {
            stringBuffer.append(org.apache.commons.lang3.builder.Ctry.J(obj, this));
        }
    }

    @Override // org.apache.commons.lang3.builder.Ccase
    public void appendDetail(StringBuffer stringBuffer, String str, Collection<?> collection) {
        appendClassName(stringBuffer, collection);
        appendIdentityHashCode(stringBuffer, collection);
        appendDetail(stringBuffer, str, collection.toArray());
    }
}
