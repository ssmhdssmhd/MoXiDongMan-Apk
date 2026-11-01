package freemarker.core;

import android.support.v4.vn0;
import android.support.v4.xb2;
import freemarker.template.utility.DateUtil;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes.dex */
final class u0 extends s0 {
    public u0(String str, int i, int i2, boolean z, TimeZone timeZone, t0 t0Var, d0 d0Var) throws vn0, xb2 {
        super(str, i, i2, z, timeZone, t0Var, d0Var);
    }

    @Override // freemarker.core.s0
    /* renamed from: break */
    public String mo28229break() {
        return "ISO 8601 (subset) date-time";
    }

    @Override // freemarker.core.s0
    /* renamed from: catch */
    public String mo28230catch() {
        return "ISO 8601 (subset) time";
    }

    @Override // freemarker.core.s0
    /* renamed from: class */
    public boolean mo28231class() {
        return false;
    }

    @Override // freemarker.core.s0
    /* renamed from: final */
    public Date mo28233final(String str, TimeZone timeZone, DateUtil.CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws DateUtil.Cdo {
        return DateUtil.m29233catch(str, timeZone, calendarFieldsToDateConverter);
    }

    @Override // freemarker.core.s0
    /* renamed from: goto */
    public String mo28234goto(Date date, boolean z, boolean z2, boolean z3, int i, TimeZone timeZone, DateUtil.DateToISO8601CalendarFactory dateToISO8601CalendarFactory) {
        return DateUtil.m29241if(date, z, z2, z2 && z3, i, timeZone, dateToISO8601CalendarFactory);
    }

    @Override // freemarker.core.s0
    /* renamed from: super */
    public Date mo28235super(String str, TimeZone timeZone, DateUtil.CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws DateUtil.Cdo {
        return DateUtil.m29234class(str, timeZone, calendarFieldsToDateConverter);
    }

    @Override // freemarker.core.s0
    /* renamed from: this */
    public String mo28236this() {
        return "ISO 8601 (subset) date";
    }

    @Override // freemarker.core.s0
    /* renamed from: throw */
    public Date mo28237throw(String str, TimeZone timeZone, DateUtil.CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws DateUtil.Cdo {
        return DateUtil.m29235const(str, timeZone, calendarFieldsToDateConverter);
    }
}
