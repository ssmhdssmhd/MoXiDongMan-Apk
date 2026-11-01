package android.support.v4;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Date;
import org.chromium.net.Cnative;

@VisibleForTesting
/* loaded from: classes3.dex */
public final class ts extends Cnative.Cif {

    /* renamed from: native, reason: not valid java name */
    public static final /* synthetic */ boolean f6671native = false;

    /* renamed from: break, reason: not valid java name */
    private final long f6672break;

    /* renamed from: case, reason: not valid java name */
    private final long f6673case;

    /* renamed from: catch, reason: not valid java name */
    private final long f6674catch;

    /* renamed from: class, reason: not valid java name */
    private final long f6675class;

    /* renamed from: const, reason: not valid java name */
    private final long f6676const;

    /* renamed from: do, reason: not valid java name */
    private final long f6677do;

    /* renamed from: else, reason: not valid java name */
    private final long f6678else;

    /* renamed from: final, reason: not valid java name */
    private final boolean f6679final;

    /* renamed from: for, reason: not valid java name */
    private final long f6680for;

    /* renamed from: goto, reason: not valid java name */
    private final long f6681goto;

    /* renamed from: if, reason: not valid java name */
    private final long f6682if;

    /* renamed from: import, reason: not valid java name */
    @Nullable
    private final Long f6683import;

    /* renamed from: new, reason: not valid java name */
    private final long f6684new;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private final Long f6685super;

    /* renamed from: this, reason: not valid java name */
    private final long f6686this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    private final Long f6687throw;

    /* renamed from: try, reason: not valid java name */
    private final long f6688try;

    /* renamed from: while, reason: not valid java name */
    @Nullable
    private final Long f6689while;

    public ts(@Nullable Long l, @Nullable Long l2, @Nullable Long l3, @Nullable Long l4) {
        this.f6685super = l;
        this.f6687throw = l2;
        this.f6689while = l3;
        this.f6683import = l4;
        this.f6677do = -1L;
        this.f6682if = -1L;
        this.f6680for = -1L;
        this.f6684new = -1L;
        this.f6688try = -1L;
        this.f6673case = -1L;
        this.f6678else = -1L;
        this.f6681goto = -1L;
        this.f6686this = -1L;
        this.f6672break = -1L;
        this.f6674catch = -1L;
        this.f6675class = -1L;
        this.f6676const = -1L;
        this.f6679final = false;
    }

    /* renamed from: native, reason: not valid java name */
    private static boolean m8107native(long j, long j2) {
        return (j2 >= j && j != -1) || j2 == -1;
    }

    @Nullable
    /* renamed from: public, reason: not valid java name */
    private static Date m8108public(long j) {
        if (j != -1) {
            return new Date(j);
        }
        return null;
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: break, reason: not valid java name */
    public Date mo8109break() {
        return m8108public(this.f6675class);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: case, reason: not valid java name */
    public Date mo8110case() {
        return m8108public(this.f6672break);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: catch, reason: not valid java name */
    public Date mo8111catch() {
        return m8108public(this.f6686this);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: class, reason: not valid java name */
    public Date mo8112class() {
        return m8108public(this.f6681goto);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: const, reason: not valid java name */
    public Long mo8113const() {
        return this.f6689while;
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: do, reason: not valid java name */
    public Date mo8114do() {
        return m8108public(this.f6688try);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: else, reason: not valid java name */
    public Long mo8115else() {
        return this.f6683import;
    }

    @Override // org.chromium.net.Cnative.Cif
    /* renamed from: final, reason: not valid java name */
    public boolean mo8116final() {
        return this.f6679final;
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: for, reason: not valid java name */
    public Date mo8117for() {
        return m8108public(this.f6680for);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: goto, reason: not valid java name */
    public Date mo8118goto() {
        return m8108public(this.f6676const);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: if, reason: not valid java name */
    public Date mo8119if() {
        return m8108public(this.f6684new);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: import, reason: not valid java name */
    public Long mo8120import() {
        return this.f6685super;
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: new, reason: not valid java name */
    public Date mo8121new() {
        return m8108public(this.f6682if);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: super, reason: not valid java name */
    public Date mo8122super() {
        return m8108public(this.f6678else);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: this, reason: not valid java name */
    public Date mo8123this() {
        return m8108public(this.f6677do);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: throw, reason: not valid java name */
    public Date mo8124throw() {
        return m8108public(this.f6673case);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: try, reason: not valid java name */
    public Date mo8125try() {
        return m8108public(this.f6674catch);
    }

    @Override // org.chromium.net.Cnative.Cif
    @Nullable
    /* renamed from: while, reason: not valid java name */
    public Long mo8126while() {
        return this.f6687throw;
    }

    public ts(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, boolean z, long j14, long j15) {
        this.f6677do = j;
        this.f6682if = j2;
        this.f6680for = j3;
        this.f6684new = j4;
        this.f6688try = j5;
        this.f6673case = j6;
        this.f6678else = j7;
        this.f6681goto = j8;
        this.f6686this = j9;
        this.f6672break = j10;
        this.f6674catch = j11;
        this.f6675class = j12;
        this.f6676const = j13;
        this.f6679final = z;
        this.f6689while = Long.valueOf(j14);
        this.f6683import = Long.valueOf(j15);
        if (j != -1 && j12 != -1) {
            this.f6685super = Long.valueOf(j12 - j);
        } else {
            this.f6685super = null;
        }
        if (j != -1 && j13 != -1) {
            this.f6687throw = Long.valueOf(j13 - j);
        } else {
            this.f6687throw = null;
        }
    }
}
