package freemarker.core;

import android.support.v4.ep;
import android.support.v4.k52;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
public abstract class p<MO extends ep> extends y1<MO> {
    @Override // freemarker.core.y1
    /* renamed from: catch */
    public boolean mo28182catch() {
        return true;
    }

    @Override // android.support.v4.e91
    /* renamed from: for */
    public boolean mo888for() {
        return false;
    }

    @Override // freemarker.core.y1
    /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
    public final MO mo28200goto(String str) throws k52 {
        return (MO) mo28136static(str, null);
    }

    @Override // freemarker.core.y1
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String mo28206this(MO mo) throws k52 {
        String strM1968do = mo.m1968do();
        if (strM1968do != null) {
            return strM1968do;
        }
        String strMo28134case = mo28134case(mo.m1969for());
        mo.m1971new(strMo28134case);
        return strMo28134case;
    }

    @Override // freemarker.core.y1
    /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
    public final String mo28196break(MO mo) throws k52 {
        return mo.m1969for();
    }

    @Override // freemarker.core.y1
    /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean mo28197class(MO mo) throws k52 {
        String strM1969for = mo.m1969for();
        return strM1969for != null ? strM1969for.length() == 0 : mo.m1968do().length() == 0;
    }

    /* renamed from: static */
    public abstract MO mo28136static(String str, String str2) throws k52;

    @Override // freemarker.core.y1
    /* renamed from: super */
    public abstract void mo28137super(String str, Writer writer) throws k52, IOException;

    @Override // freemarker.core.y1
    /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void mo28199final(MO mo, Writer writer) throws k52, IOException {
        String strM1968do = mo.m1968do();
        if (strM1968do != null) {
            writer.write(strM1968do);
        } else {
            mo28137super(mo.m1969for(), writer);
        }
    }

    @Override // freemarker.core.y1
    /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
    public final MO mo28208try(MO mo, MO mo2) throws k52 {
        String str;
        String str2;
        String strM1969for = mo.m1969for();
        String strM1968do = mo.m1968do();
        String strM1969for2 = mo2.m1969for();
        String strM1968do2 = mo2.m1968do();
        if (strM1969for == null || strM1969for2 == null) {
            str = null;
        } else {
            str = strM1969for + strM1969for2;
        }
        if (strM1968do == null || strM1968do2 == null) {
            str2 = null;
        } else {
            str2 = strM1968do + strM1968do2;
        }
        if (str != null || str2 != null) {
            return (MO) mo28136static(str, str2);
        }
        if (strM1969for != null) {
            return (MO) mo28136static(null, mo28206this(mo) + strM1968do2);
        }
        return (MO) mo28136static(null, strM1968do + mo28206this(mo2));
    }

    @Override // freemarker.core.y1
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public final MO mo28198else(String str) throws k52 {
        return (MO) mo28136static(null, str);
    }
}
