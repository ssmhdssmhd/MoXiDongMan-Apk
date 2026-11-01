package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class no0 {

    /* renamed from: import, reason: not valid java name */
    public static final int f4276import = 10;

    /* renamed from: native, reason: not valid java name */
    public static final int f4277native = 20;

    /* renamed from: public, reason: not valid java name */
    public static final int f4278public = 30;

    /* renamed from: return, reason: not valid java name */
    public static final int f4279return = 40;

    /* renamed from: static, reason: not valid java name */
    public static final int f4280static = 50;

    /* renamed from: switch, reason: not valid java name */
    public static final int f4281switch = 60;

    /* renamed from: throws, reason: not valid java name */
    public static final int f4282throws = 70;

    /* renamed from: while, reason: not valid java name */
    public static final int f4283while = 0;

    /* renamed from: break, reason: not valid java name */
    private BigInteger f4284break;

    /* renamed from: case, reason: not valid java name */
    private final BigInteger f4285case;

    /* renamed from: catch, reason: not valid java name */
    private BigInteger f4286catch;

    /* renamed from: class, reason: not valid java name */
    private BigInteger f4287class;

    /* renamed from: const, reason: not valid java name */
    private BigInteger f4288const;

    /* renamed from: do, reason: not valid java name */
    private final String f4289do;

    /* renamed from: else, reason: not valid java name */
    private final BigInteger f4290else;

    /* renamed from: final, reason: not valid java name */
    private BigInteger f4291final;

    /* renamed from: for, reason: not valid java name */
    private final Digest f4292for;

    /* renamed from: goto, reason: not valid java name */
    private String f4293goto;

    /* renamed from: if, reason: not valid java name */
    private char[] f4294if;

    /* renamed from: new, reason: not valid java name */
    private final SecureRandom f4295new;

    /* renamed from: super, reason: not valid java name */
    private BigInteger f4296super;

    /* renamed from: this, reason: not valid java name */
    private BigInteger f4297this;

    /* renamed from: throw, reason: not valid java name */
    private int f4298throw;

    /* renamed from: try, reason: not valid java name */
    private final BigInteger f4299try;

    public no0(String str, char[] cArr) {
        this(str, cArr, po0.f5160for);
    }

    public no0(String str, char[] cArr, aab aabVar) {
        this(str, cArr, aabVar, new yp1(), Cfor.m33599case());
    }

    public no0(String str, char[] cArr, aab aabVar, Digest digest, SecureRandom secureRandom) {
        to0.m8028switch(str, "participantId");
        to0.m8028switch(cArr, "password");
        to0.m8028switch(aabVar, com.umeng.analytics.pro.ak.ax);
        to0.m8028switch(digest, "digest");
        to0.m8028switch(secureRandom, "random");
        if (cArr.length == 0) {
            throw new IllegalArgumentException("Password must not be empty.");
        }
        this.f4289do = str;
        this.f4294if = q3.m6379interface(cArr, cArr.length);
        this.f4299try = aabVar.m121if();
        this.f4285case = aabVar.m120for();
        this.f4290else = aabVar.m119do();
        this.f4292for = digest;
        this.f4295new = secureRandom;
        this.f4298throw = 0;
    }

    /* renamed from: case, reason: not valid java name */
    public void m5283case(qo0 qo0Var) throws xs {
        if (this.f4298throw >= 20) {
            throw new IllegalStateException("Validation already attempted for round1 payload for" + this.f4289do);
        }
        this.f4293goto = qo0Var.m6632try();
        this.f4288const = qo0Var.m6628do();
        this.f4291final = qo0Var.m6630if();
        BigInteger[] bigIntegerArrM6629for = qo0Var.m6629for();
        BigInteger[] bigIntegerArrM6631new = qo0Var.m6631new();
        to0.m8031throws(this.f4289do, qo0Var.m6632try());
        to0.m8025return(this.f4291final);
        to0.m8016extends(this.f4299try, this.f4285case, this.f4290else, this.f4288const, bigIntegerArrM6629for, qo0Var.m6632try(), this.f4292for);
        to0.m8016extends(this.f4299try, this.f4285case, this.f4290else, this.f4291final, bigIntegerArrM6631new, qo0Var.m6632try(), this.f4292for);
        this.f4298throw = 20;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m5284do() {
        int i = this.f4298throw;
        if (i >= 50) {
            throw new IllegalStateException("Key already calculated for " + this.f4289do);
        }
        if (i < 40) {
            throw new IllegalStateException("Round2 payload must be validated prior to creating key for " + this.f4289do);
        }
        BigInteger bigIntegerM8019goto = to0.m8019goto(this.f4294if);
        q3.f(this.f4294if, (char) 0);
        this.f4294if = null;
        BigInteger bigIntegerM8032try = to0.m8032try(this.f4299try, this.f4285case, this.f4291final, this.f4284break, bigIntegerM8019goto, this.f4296super);
        this.f4297this = null;
        this.f4284break = null;
        this.f4296super = null;
        this.f4298throw = 50;
        return bigIntegerM8032try;
    }

    /* renamed from: else, reason: not valid java name */
    public void m5285else(ro0 ro0Var) throws xs {
        int i = this.f4298throw;
        if (i >= 40) {
            throw new IllegalStateException("Validation already attempted for round2 payload for" + this.f4289do);
        }
        if (i < 20) {
            throw new IllegalStateException("Round1 payload must be validated prior to validating Round2 payload for " + this.f4289do);
        }
        BigInteger bigIntegerM8020if = to0.m8020if(this.f4299try, this.f4288const, this.f4286catch, this.f4287class);
        this.f4296super = ro0Var.m7072do();
        BigInteger[] bigIntegerArrM7074if = ro0Var.m7074if();
        to0.m8031throws(this.f4289do, ro0Var.m7073for());
        to0.m8013default(this.f4293goto, ro0Var.m7073for());
        to0.m8024public(bigIntegerM8020if);
        to0.m8016extends(this.f4299try, this.f4285case, bigIntegerM8020if, this.f4296super, bigIntegerArrM7074if, ro0Var.m7073for(), this.f4292for);
        this.f4298throw = 40;
    }

    /* renamed from: for, reason: not valid java name */
    public ro0 m5286for() {
        int i = this.f4298throw;
        if (i >= 30) {
            throw new IllegalStateException("Round2 payload already created for " + this.f4289do);
        }
        if (i < 20) {
            throw new IllegalStateException("Round1 payload must be validated prior to creating Round2 payload for " + this.f4289do);
        }
        BigInteger bigIntegerM8020if = to0.m8020if(this.f4299try, this.f4286catch, this.f4288const, this.f4291final);
        BigInteger bigIntegerM8029this = to0.m8029this(this.f4285case, this.f4284break, to0.m8019goto(this.f4294if));
        BigInteger bigIntegerM8014do = to0.m8014do(this.f4299try, this.f4285case, bigIntegerM8020if, bigIntegerM8029this);
        BigInteger[] bigIntegerArrM8008break = to0.m8008break(this.f4299try, this.f4285case, bigIntegerM8020if, bigIntegerM8014do, bigIntegerM8029this, this.f4289do, this.f4292for, this.f4295new);
        this.f4298throw = 30;
        return new ro0(this.f4289do, bigIntegerM8014do, bigIntegerArrM8008break);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m5287goto(so0 so0Var, BigInteger bigInteger) throws xs {
        int i = this.f4298throw;
        if (i >= 70) {
            throw new IllegalStateException("Validation already attempted for round3 payload for" + this.f4289do);
        }
        if (i < 50) {
            throw new IllegalStateException("Keying material must be calculated validated prior to validating Round3 payload for " + this.f4289do);
        }
        to0.m8031throws(this.f4289do, so0Var.m7543if());
        to0.m8013default(this.f4293goto, so0Var.m7543if());
        to0.m8026static(this.f4289do, this.f4293goto, this.f4286catch, this.f4287class, this.f4288const, this.f4291final, bigInteger, this.f4292for, so0Var.m7542do());
        this.f4286catch = null;
        this.f4287class = null;
        this.f4288const = null;
        this.f4291final = null;
        this.f4298throw = 70;
    }

    /* renamed from: if, reason: not valid java name */
    public qo0 m5288if() {
        if (this.f4298throw >= 10) {
            throw new IllegalStateException("Round1 payload already created for " + this.f4289do);
        }
        this.f4297this = to0.m8010catch(this.f4285case, this.f4295new);
        this.f4284break = to0.m8011class(this.f4285case, this.f4295new);
        this.f4286catch = to0.m8018for(this.f4299try, this.f4290else, this.f4297this);
        this.f4287class = to0.m8018for(this.f4299try, this.f4290else, this.f4284break);
        BigInteger[] bigIntegerArrM8008break = to0.m8008break(this.f4299try, this.f4285case, this.f4290else, this.f4286catch, this.f4297this, this.f4289do, this.f4292for, this.f4295new);
        BigInteger[] bigIntegerArrM8008break2 = to0.m8008break(this.f4299try, this.f4285case, this.f4290else, this.f4287class, this.f4284break, this.f4289do, this.f4292for, this.f4295new);
        this.f4298throw = 10;
        return new qo0(this.f4289do, this.f4286catch, this.f4287class, bigIntegerArrM8008break, bigIntegerArrM8008break2);
    }

    /* renamed from: new, reason: not valid java name */
    public so0 m5289new(BigInteger bigInteger) throws IllegalStateException, tw {
        int i = this.f4298throw;
        if (i >= 60) {
            throw new IllegalStateException("Round3 payload already created for " + this.f4289do);
        }
        if (i >= 50) {
            BigInteger bigIntegerM8015else = to0.m8015else(this.f4289do, this.f4293goto, this.f4286catch, this.f4287class, this.f4288const, this.f4291final, bigInteger, this.f4292for);
            this.f4298throw = 60;
            return new so0(this.f4289do, bigIntegerM8015else);
        }
        throw new IllegalStateException("Keying material must be calculated prior to creating Round3 payload for " + this.f4289do);
    }

    /* renamed from: try, reason: not valid java name */
    public int m5290try() {
        return this.f4298throw;
    }
}
