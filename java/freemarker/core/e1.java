package freemarker.core;

import android.support.v4.gc2;
import android.support.v4.k52;
import freemarker.template.TemplateDateModel;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
class e1 extends z3 {

    /* renamed from: do, reason: not valid java name */
    private final DateFormat f23678do;

    public e1(DateFormat dateFormat) {
        this.f23678do = dateFormat;
    }

    @Override // android.support.v4.o52
    /* renamed from: do */
    public String mo5485do() {
        DateFormat dateFormat = this.f23678do;
        return dateFormat instanceof SimpleDateFormat ? ((SimpleDateFormat) dateFormat).toPattern() : dateFormat.toString();
    }

    @Override // freemarker.core.z3
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Date mo27977case(String str, int i) throws gc2 {
        try {
            return this.f23678do.parse(str);
        } catch (ParseException e) {
            throw new gc2(e.getMessage(), e);
        }
    }

    @Override // freemarker.core.z3
    /* renamed from: for, reason: not valid java name */
    public String mo27979for(TemplateDateModel templateDateModel) throws k52 {
        return this.f23678do.format(e4.m27984if(templateDateModel));
    }

    @Override // freemarker.core.z3
    /* renamed from: new, reason: not valid java name */
    public boolean mo27980new() {
        return true;
    }

    @Override // freemarker.core.z3
    /* renamed from: try, reason: not valid java name */
    public boolean mo27981try() {
        return true;
    }
}
