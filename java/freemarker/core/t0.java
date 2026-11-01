package freemarker.core;

import freemarker.template.utility.DateUtil;

/* loaded from: classes.dex */
abstract class t0 extends a4 {

    /* renamed from: do, reason: not valid java name */
    private static final Object f24193do = new Object();

    /* renamed from: if, reason: not valid java name */
    private static final Object f24194if = new Object();

    /* renamed from: for, reason: not valid java name */
    public DateUtil.DateToISO8601CalendarFactory m28288for(d0 d0Var) {
        Object obj = f24193do;
        DateUtil.DateToISO8601CalendarFactory dateToISO8601CalendarFactory = (DateUtil.DateToISO8601CalendarFactory) d0Var.C1(obj);
        if (dateToISO8601CalendarFactory != null) {
            return dateToISO8601CalendarFactory;
        }
        DateUtil.Cfor cfor = new DateUtil.Cfor();
        d0Var.n3(obj, cfor);
        return cfor;
    }

    /* renamed from: if, reason: not valid java name */
    public DateUtil.CalendarFieldsToDateConverter m28289if(d0 d0Var) {
        Object obj = f24194if;
        DateUtil.CalendarFieldsToDateConverter calendarFieldsToDateConverter = (DateUtil.CalendarFieldsToDateConverter) d0Var.C1(obj);
        if (calendarFieldsToDateConverter != null) {
            return calendarFieldsToDateConverter;
        }
        DateUtil.Cif cif = new DateUtil.Cif();
        d0Var.n3(obj, cif);
        return cif;
    }
}
