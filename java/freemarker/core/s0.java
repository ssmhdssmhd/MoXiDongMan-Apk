package freemarker.core;

import android.support.v4.gc2;
import android.support.v4.k52;
import android.support.v4.mc;
import android.support.v4.vn0;
import android.support.v4.xb2;
import freemarker.template.TemplateDateModel;
import freemarker.template.utility.Csuper;
import freemarker.template.utility.DateUtil;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes.dex */
abstract class s0 extends z3 {

    /* renamed from: this, reason: not valid java name */
    private static final String f24121this = "Less than seconds accuracy isn't allowed by the XML Schema format";

    /* renamed from: case, reason: not valid java name */
    public final Boolean f24122case;

    /* renamed from: do, reason: not valid java name */
    private final t0 f24123do;

    /* renamed from: else, reason: not valid java name */
    public final Boolean f24124else;

    /* renamed from: for, reason: not valid java name */
    public final int f24125for;

    /* renamed from: goto, reason: not valid java name */
    public final int f24126goto;

    /* renamed from: if, reason: not valid java name */
    private final d0 f24127if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f24128new;

    /* renamed from: try, reason: not valid java name */
    public final TimeZone f24129try;

    /* JADX WARN: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00c3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x014f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public s0(String str, int i, int i2, boolean z, TimeZone timeZone, t0 t0Var, d0 d0Var) throws vn0, xb2 {
        this.f24123do = t0Var;
        this.f24127if = d0Var;
        if (i2 == 0) {
            throw new xb2();
        }
        this.f24125for = i2;
        this.f24128new = z;
        int length = str.length();
        Boolean bool = Boolean.FALSE;
        int i3 = 7;
        Boolean bool2 = null;
        boolean z2 = false;
        int i4 = i;
        while (i4 < length) {
            int i5 = i4 + 1;
            char cCharAt = str.charAt(i4);
            if (cCharAt == '_' || cCharAt == ' ') {
                i4 = i5;
                z2 = true;
            } else {
                if (!z2) {
                    throw new vn0("Missing space or \"_\" before \"" + cCharAt + "\" (at char pos. " + i5 + ").");
                }
                if (cCharAt == 'f') {
                    if (i5 < length && str.charAt(i5) == 'u') {
                        m28228else(bool);
                        i5++;
                        bool = Boolean.TRUE;
                    } else if (bool2 == null) {
                    }
                    i4 = i5;
                    z2 = false;
                } else if (cCharAt == 'h' || cCharAt == 's') {
                    if (i3 == 7) {
                        throw new vn0("Character \"" + cCharAt + "\" is unexpected as accuracy was already specified earlier (at char pos. " + i5 + ").");
                    }
                    if (cCharAt != 'h') {
                        if (cCharAt != 'm') {
                            if (cCharAt == 's') {
                                i3 = 6;
                            }
                        } else if (i5 < length && str.charAt(i5) == 's') {
                            i5++;
                            i3 = 8;
                        } else {
                            if (mo28231class()) {
                                throw new vn0(f24121this);
                            }
                            i3 = 5;
                        }
                    } else {
                        if (mo28231class()) {
                            throw new vn0(f24121this);
                        }
                        i3 = 4;
                    }
                    i4 = i5;
                    z2 = false;
                } else if (cCharAt != 'u') {
                    if (cCharAt != 'm') {
                        if (cCharAt != 'n') {
                            throw new vn0("Unexpected character, " + Csuper.m29330synchronized(String.valueOf(cCharAt)) + ". Expected the beginning of one of: h, m, s, ms, nz, fz, u (at char pos. " + i5 + ").");
                        }
                        if (bool2 == null) {
                            throw new vn0("Character \"" + cCharAt + "\" is unexpected as zone offset visibility was already specified earlier. (at char pos. " + i5 + ").");
                        }
                        if (cCharAt != 'f') {
                            if (cCharAt == 'n') {
                                if (i5 >= length || str.charAt(i5) != 'z') {
                                    throw new vn0("\"n\" must be followed by \"z\" (at char pos. " + i5 + ").");
                                }
                                i5++;
                                bool2 = Boolean.FALSE;
                            }
                        } else {
                            if (i5 >= length || str.charAt(i5) != 'z') {
                                throw new vn0("\"f\" must be followed by \"z\" (at char pos. " + i5 + ").");
                            }
                            i5++;
                            bool2 = Boolean.TRUE;
                        }
                        i4 = i5;
                        z2 = false;
                    }
                    if (i3 == 7) {
                    }
                } else {
                    m28228else(bool);
                    bool = null;
                    i4 = i5;
                    z2 = false;
                }
            }
        }
        this.f24126goto = i3;
        this.f24124else = bool2;
        this.f24122case = bool;
        this.f24129try = timeZone;
    }

    /* renamed from: else, reason: not valid java name */
    private void m28228else(Boolean bool) throws vn0 {
        if (bool != Boolean.FALSE) {
            throw new vn0("The UTC usage option was already set earlier.");
        }
    }

    /* renamed from: break, reason: not valid java name */
    public abstract String mo28229break();

    /* renamed from: catch, reason: not valid java name */
    public abstract String mo28230catch();

    /* renamed from: class, reason: not valid java name */
    public abstract boolean mo28231class();

    @Override // freemarker.core.z3
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Date mo27977case(String str, int i) throws gc2 {
        DateUtil.CalendarFieldsToDateConverter calendarFieldsToDateConverterM28289if = this.f24123do.m28289if(this.f24127if);
        TimeZone timeZone = this.f24122case != Boolean.FALSE ? DateUtil.f25128case : this.f24129try;
        try {
            if (i == 2) {
                return mo28233final(str, timeZone, calendarFieldsToDateConverterM28289if);
            }
            if (i == 1) {
                return mo28237throw(str, timeZone, calendarFieldsToDateConverterM28289if);
            }
            if (i == 3) {
                return mo28235super(str, timeZone, calendarFieldsToDateConverterM28289if);
            }
            throw new mc("Unexpected date type: " + i);
        } catch (DateUtil.Cdo e) {
            throw new gc2(e.getMessage(), e);
        }
    }

    @Override // android.support.v4.o52
    /* renamed from: do */
    public final String mo5485do() {
        int i = this.f24125for;
        return i != 1 ? i != 2 ? i != 3 ? "<error: wrong format dateType>" : mo28229break() : mo28236this() : mo28230catch();
    }

    /* renamed from: final, reason: not valid java name */
    public abstract Date mo28233final(String str, TimeZone timeZone, DateUtil.CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws DateUtil.Cdo;

    @Override // freemarker.core.z3
    /* renamed from: for */
    public final String mo27979for(TemplateDateModel templateDateModel) throws k52 {
        Date dateM27984if = e4.m27984if(templateDateModel);
        int i = this.f24125for;
        boolean z = i != 1;
        boolean z2 = i != 2;
        Boolean bool = this.f24124else;
        boolean zBooleanValue = bool == null ? !this.f24128new : bool.booleanValue();
        int i2 = this.f24126goto;
        Boolean bool2 = this.f24122case;
        return mo28234goto(dateM27984if, z, z2, zBooleanValue, i2, (bool2 != null ? !bool2.booleanValue() : this.f24128new) ? this.f24129try : DateUtil.f25128case, this.f24123do.m28288for(this.f24127if));
    }

    /* renamed from: goto, reason: not valid java name */
    public abstract String mo28234goto(Date date, boolean z, boolean z2, boolean z3, int i, TimeZone timeZone, DateUtil.DateToISO8601CalendarFactory dateToISO8601CalendarFactory);

    @Override // freemarker.core.z3
    /* renamed from: new */
    public final boolean mo27980new() {
        return false;
    }

    /* renamed from: super, reason: not valid java name */
    public abstract Date mo28235super(String str, TimeZone timeZone, DateUtil.CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws DateUtil.Cdo;

    /* renamed from: this, reason: not valid java name */
    public abstract String mo28236this();

    /* renamed from: throw, reason: not valid java name */
    public abstract Date mo28237throw(String str, TimeZone timeZone, DateUtil.CalendarFieldsToDateConverter calendarFieldsToDateConverter) throws DateUtil.Cdo;

    @Override // freemarker.core.z3
    /* renamed from: try */
    public boolean mo27981try() {
        return true;
    }
}
