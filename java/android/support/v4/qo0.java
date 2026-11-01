package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class qo0 {

    /* renamed from: do, reason: not valid java name */
    private final String f5499do;

    /* renamed from: for, reason: not valid java name */
    private final BigInteger f5500for;

    /* renamed from: if, reason: not valid java name */
    private final BigInteger f5501if;

    /* renamed from: new, reason: not valid java name */
    private final BigInteger[] f5502new;

    /* renamed from: try, reason: not valid java name */
    private final BigInteger[] f5503try;

    public qo0(String str, BigInteger bigInteger, BigInteger bigInteger2, BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        to0.m8028switch(str, "participantId");
        to0.m8028switch(bigInteger, "gx1");
        to0.m8028switch(bigInteger2, "gx2");
        to0.m8028switch(bigIntegerArr, "knowledgeProofForX1");
        to0.m8028switch(bigIntegerArr2, "knowledgeProofForX2");
        this.f5499do = str;
        this.f5501if = bigInteger;
        this.f5500for = bigInteger2;
        this.f5502new = q3.m6376implements(bigIntegerArr, bigIntegerArr.length);
        this.f5503try = q3.m6376implements(bigIntegerArr2, bigIntegerArr2.length);
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m6628do() {
        return this.f5501if;
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger[] m6629for() {
        BigInteger[] bigIntegerArr = this.f5502new;
        return q3.m6376implements(bigIntegerArr, bigIntegerArr.length);
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m6630if() {
        return this.f5500for;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger[] m6631new() {
        BigInteger[] bigIntegerArr = this.f5503try;
        return q3.m6376implements(bigIntegerArr, bigIntegerArr.length);
    }

    /* renamed from: try, reason: not valid java name */
    public String m6632try() {
        return this.f5499do;
    }
}
