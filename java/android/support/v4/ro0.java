package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class ro0 {

    /* renamed from: do, reason: not valid java name */
    private final String f5892do;

    /* renamed from: for, reason: not valid java name */
    private final BigInteger[] f5893for;

    /* renamed from: if, reason: not valid java name */
    private final BigInteger f5894if;

    public ro0(String str, BigInteger bigInteger, BigInteger[] bigIntegerArr) {
        to0.m8028switch(str, "participantId");
        to0.m8028switch(bigInteger, com.umeng.analytics.pro.ak.av);
        to0.m8028switch(bigIntegerArr, "knowledgeProofForX2s");
        this.f5892do = str;
        this.f5894if = bigInteger;
        this.f5893for = q3.m6376implements(bigIntegerArr, bigIntegerArr.length);
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m7072do() {
        return this.f5894if;
    }

    /* renamed from: for, reason: not valid java name */
    public String m7073for() {
        return this.f5892do;
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger[] m7074if() {
        BigInteger[] bigIntegerArr = this.f5893for;
        return q3.m6376implements(bigIntegerArr, bigIntegerArr.length);
    }
}
