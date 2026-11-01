package android.support.v4;

import com.google.zxing.Cdo;
import com.google.zxing.Cgoto;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class wn1 {

    /* renamed from: case, reason: not valid java name */
    private Map<Cgoto, Object> f7573case;

    /* renamed from: do, reason: not valid java name */
    private final String f7574do;

    /* renamed from: else, reason: not valid java name */
    private final long f7575else;

    /* renamed from: for, reason: not valid java name */
    private final int f7576for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f7577if;

    /* renamed from: new, reason: not valid java name */
    private yn1[] f7578new;

    /* renamed from: try, reason: not valid java name */
    private final Cdo f7579try;

    public wn1(String str, byte[] bArr, yn1[] yn1VarArr, Cdo cdo) {
        this(str, bArr, yn1VarArr, cdo, System.currentTimeMillis());
    }

    /* renamed from: break, reason: not valid java name */
    public void m9242break(Cgoto cgoto, Object obj) {
        if (this.f7573case == null) {
            this.f7573case = new EnumMap(Cgoto.class);
        }
        this.f7573case.put(cgoto, obj);
    }

    /* renamed from: case, reason: not valid java name */
    public yn1[] m9243case() {
        return this.f7578new;
    }

    /* renamed from: do, reason: not valid java name */
    public void m9244do(yn1[] yn1VarArr) {
        yn1[] yn1VarArr2 = this.f7578new;
        if (yn1VarArr2 == null) {
            this.f7578new = yn1VarArr;
            return;
        }
        if (yn1VarArr == null || yn1VarArr.length <= 0) {
            return;
        }
        yn1[] yn1VarArr3 = new yn1[yn1VarArr2.length + yn1VarArr.length];
        System.arraycopy(yn1VarArr2, 0, yn1VarArr3, 0, yn1VarArr2.length);
        System.arraycopy(yn1VarArr, 0, yn1VarArr3, yn1VarArr2.length, yn1VarArr.length);
        this.f7578new = yn1VarArr3;
    }

    /* renamed from: else, reason: not valid java name */
    public String m9245else() {
        return this.f7574do;
    }

    /* renamed from: for, reason: not valid java name */
    public int m9246for() {
        return this.f7576for;
    }

    /* renamed from: goto, reason: not valid java name */
    public long m9247goto() {
        return this.f7575else;
    }

    /* renamed from: if, reason: not valid java name */
    public Cdo m9248if() {
        return this.f7579try;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m9249new() {
        return this.f7577if;
    }

    /* renamed from: this, reason: not valid java name */
    public void m9250this(Map<Cgoto, Object> map) {
        if (map != null) {
            Map<Cgoto, Object> map2 = this.f7573case;
            if (map2 == null) {
                this.f7573case = map;
            } else {
                map2.putAll(map);
            }
        }
    }

    public String toString() {
        return this.f7574do;
    }

    /* renamed from: try, reason: not valid java name */
    public Map<Cgoto, Object> m9251try() {
        return this.f7573case;
    }

    public wn1(String str, byte[] bArr, yn1[] yn1VarArr, Cdo cdo, long j) {
        this(str, bArr, bArr == null ? 0 : bArr.length * 8, yn1VarArr, cdo, j);
    }

    public wn1(String str, byte[] bArr, int i, yn1[] yn1VarArr, Cdo cdo, long j) {
        this.f7574do = str;
        this.f7577if = bArr;
        this.f7576for = i;
        this.f7578new = yn1VarArr;
        this.f7579try = cdo;
        this.f7573case = null;
        this.f7575else = j;
    }
}
