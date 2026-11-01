package freemarker.core;

import android.support.v4.vn0;
import android.support.v4.xb2;
import freemarker.template.utility.DateUtil;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes.dex */
final class w4 extends s0 {
    public w4(String str, int i, int i2, boolean z, TimeZone timeZone, t0 t0Var, d0 d0Var) throws xb2, vn0 {
        super(str, i, i2, z, timeZone, t0Var, d0Var);
    }

    @Override // freemarker.core.s0
    /* renamed from: break */
    public String mo28229break() {
        return "W3C XML Schema dateTime";
    }

    @Override // freemarker.core.s0
    /* renamed from: catch */
    public String mo28230catch() {
        return "W3C XML Schema time";
    }

    @Override // freemarker.core.s0
    /* renamed from: class */
    public boolean mo28231class() {
        return true;
    }

    @Override // freemarker.core.s0
    /* renamed from: final */
    public Date mo28233final(String str, TimeZone timeZone, DateUtil.CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws DateUtil.Cdo {
        return DateUtil.m29247throw(str, timeZone, calendarFieldsToDateConverter);
    }

    @Override // freemarker.core.s0
    /* renamed from: goto */
    public String mo28234goto(Date date, boolean z, boolean z2, boolean z3, int i, TimeZone timeZone, DateUtil.DateToISO8601CalendarFactory dateToISO8601CalendarFactory) {
        return DateUtil.m29244new(date, z, z2, z3, i, timeZone, dateToISO8601CalendarFactory);
    }

    @Override // freemarker.core.s0
    /* renamed from: super */
    public Date mo28235super(String str, TimeZone timeZone, DateUtil.CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws DateUtil.Cdo {
        return DateUtil.m29249while(str, timeZone, calendarFieldsToDateConverter);
    }

    @Override // freemarker.core.s0
    /* renamed from: this */
    public String mo28236this() {
        return "W3C XML Schema date";
    }

    @Override // freemarker.core.s0
    /* renamed from: throw */
    public Date mo28237throw(String str, TimeZone timeZone, DateUtil.CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws DateUtil.Cdo {
        return DateUtil.m29242import(str, timeZone, calendarFieldsToDateConverter);
    }
}
