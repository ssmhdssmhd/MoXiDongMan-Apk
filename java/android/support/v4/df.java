package android.support.v4;

import com.google.common.base.Csuper;
import com.google.common.base.Cthrow;
import com.google.common.math.Ccase;

@ki0
/* loaded from: classes.dex */
public final class df {

    /* renamed from: case, reason: not valid java name */
    private final long f1029case;

    /* renamed from: do, reason: not valid java name */
    private final long f1030do;

    /* renamed from: for, reason: not valid java name */
    private final long f1031for;

    /* renamed from: if, reason: not valid java name */
    private final long f1032if;

    /* renamed from: new, reason: not valid java name */
    private final long f1033new;

    /* renamed from: try, reason: not valid java name */
    private final long f1034try;

    public df(long j, long j2, long j3, long j4, long j5, long j6) {
        af1.m220new(j >= 0);
        af1.m220new(j2 >= 0);
        af1.m220new(j3 >= 0);
        af1.m220new(j4 >= 0);
        af1.m220new(j5 >= 0);
        af1.m220new(j6 >= 0);
        this.f1030do = j;
        this.f1032if = j2;
        this.f1031for = j3;
        this.f1033new = j4;
        this.f1034try = j5;
        this.f1029case = j6;
    }

    /* renamed from: break, reason: not valid java name */
    public long m1314break() {
        return this.f1032if;
    }

    /* renamed from: case, reason: not valid java name */
    public long m1315case() {
        return this.f1033new;
    }

    /* renamed from: catch, reason: not valid java name */
    public double m1316catch() {
        long jM1318const = m1318const();
        if (jM1318const == 0) {
            return 0.0d;
        }
        double d = this.f1032if;
        double d2 = jM1318const;
        Double.isNaN(d);
        Double.isNaN(d2);
        return d / d2;
    }

    /* renamed from: class, reason: not valid java name */
    public df m1317class(df dfVar) {
        return new df(Ccase.m17251switch(this.f1030do, dfVar.f1030do), Ccase.m17251switch(this.f1032if, dfVar.f1032if), Ccase.m17251switch(this.f1031for, dfVar.f1031for), Ccase.m17251switch(this.f1033new, dfVar.f1033new), Ccase.m17251switch(this.f1034try, dfVar.f1034try), Ccase.m17251switch(this.f1029case, dfVar.f1029case));
    }

    /* renamed from: const, reason: not valid java name */
    public long m1318const() {
        return Ccase.m17251switch(this.f1030do, this.f1032if);
    }

    /* renamed from: do, reason: not valid java name */
    public double m1319do() {
        long jM17251switch = Ccase.m17251switch(this.f1031for, this.f1033new);
        if (jM17251switch == 0) {
            return 0.0d;
        }
        double d = this.f1034try;
        double d2 = jM17251switch;
        Double.isNaN(d);
        Double.isNaN(d2);
        return d / d2;
    }

    /* renamed from: else, reason: not valid java name */
    public double m1320else() {
        long jM17251switch = Ccase.m17251switch(this.f1031for, this.f1033new);
        if (jM17251switch == 0) {
            return 0.0d;
        }
        double d = this.f1033new;
        double d2 = jM17251switch;
        Double.isNaN(d);
        Double.isNaN(d2);
        return d / d2;
    }

    public boolean equals(@b51 Object obj) {
        if (!(obj instanceof df)) {
            return false;
        }
        df dfVar = (df) obj;
        return this.f1030do == dfVar.f1030do && this.f1032if == dfVar.f1032if && this.f1031for == dfVar.f1031for && this.f1033new == dfVar.f1033new && this.f1034try == dfVar.f1034try && this.f1029case == dfVar.f1029case;
    }

    /* renamed from: final, reason: not valid java name */
    public long m1321final() {
        return this.f1034try;
    }

    /* renamed from: for, reason: not valid java name */
    public long m1322for() {
        return this.f1030do;
    }

    /* renamed from: goto, reason: not valid java name */
    public long m1323goto() {
        return this.f1031for;
    }

    public int hashCode() {
        return Cthrow.m15206if(Long.valueOf(this.f1030do), Long.valueOf(this.f1032if), Long.valueOf(this.f1031for), Long.valueOf(this.f1033new), Long.valueOf(this.f1034try), Long.valueOf(this.f1029case));
    }

    /* renamed from: if, reason: not valid java name */
    public long m1324if() {
        return this.f1029case;
    }

    /* renamed from: new, reason: not valid java name */
    public double m1325new() {
        long jM1318const = m1318const();
        if (jM1318const == 0) {
            return 1.0d;
        }
        double d = this.f1030do;
        double d2 = jM1318const;
        Double.isNaN(d);
        Double.isNaN(d2);
        return d / d2;
    }

    /* renamed from: this, reason: not valid java name */
    public df m1326this(df dfVar) {
        return new df(Math.max(0L, Ccase.m17238extends(this.f1030do, dfVar.f1030do)), Math.max(0L, Ccase.m17238extends(this.f1032if, dfVar.f1032if)), Math.max(0L, Ccase.m17238extends(this.f1031for, dfVar.f1031for)), Math.max(0L, Ccase.m17238extends(this.f1033new, dfVar.f1033new)), Math.max(0L, Ccase.m17238extends(this.f1034try, dfVar.f1034try)), Math.max(0L, Ccase.m17238extends(this.f1029case, dfVar.f1029case)));
    }

    public String toString() {
        return Csuper.m15184for(this).m15203try("hitCount", this.f1030do).m15203try("missCount", this.f1032if).m15203try("loadSuccessCount", this.f1031for).m15203try("loadExceptionCount", this.f1033new).m15203try("totalLoadTime", this.f1034try).m15203try("evictionCount", this.f1029case).toString();
    }

    /* renamed from: try, reason: not valid java name */
    public long m1327try() {
        return Ccase.m17251switch(this.f1031for, this.f1033new);
    }
}
