package android.support.v4;

import freemarker.template.TemplateDateModel;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

/* loaded from: classes3.dex */
public class wy1 implements TemplateDateModel {

    /* renamed from: do, reason: not valid java name */
    private final Date f7726do;

    /* renamed from: if, reason: not valid java name */
    private final int f7727if;

    public wy1(java.sql.Date date) {
        this(date, 2);
    }

    @Override // freemarker.template.TemplateDateModel
    public Date getAsDate() {
        return this.f7726do;
    }

    @Override // freemarker.template.TemplateDateModel
    public int getDateType() {
        return this.f7727if;
    }

    public String toString() {
        return this.f7726do.toString();
    }

    public wy1(Time time) {
        this(time, 1);
    }

    public wy1(Timestamp timestamp) {
        this(timestamp, 3);
    }

    public wy1(Date date, int i) {
        if (date != null) {
            this.f7726do = date;
            this.f7727if = i;
            return;
        }
        throw new IllegalArgumentException("date == null");
    }
}
