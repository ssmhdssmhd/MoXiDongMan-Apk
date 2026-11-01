package android.support.v4;

import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class mo0 {
    /* renamed from: do, reason: not valid java name */
    private static BigInteger m4955do(BigInteger bigInteger) {
        yp1 yp1Var = new yp1();
        byte[] byteArray = bigInteger.toByteArray();
        byte[] bArr = new byte[yp1Var.getDigestSize()];
        yp1Var.update(byteArray, 0, byteArray.length);
        yp1Var.doFinal(bArr, 0);
        return new BigInteger(bArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m4956if(String[] strArr) throws IllegalStateException, tw, xs {
        aab aabVar = po0.f5160for;
        BigInteger bigIntegerM121if = aabVar.m121if();
        BigInteger bigIntegerM120for = aabVar.m120for();
        BigInteger bigIntegerM119do = aabVar.m119do();
        System.out.println("********* Initialization **********");
        System.out.println("Public parameters for the cyclic group:");
        System.out.println("p (" + bigIntegerM121if.bitLength() + " bits): " + bigIntegerM121if.toString(16));
        System.out.println("q (" + bigIntegerM120for.bitLength() + " bits): " + bigIntegerM120for.toString(16));
        System.out.println("g (" + bigIntegerM121if.bitLength() + " bits): " + bigIntegerM119do.toString(16));
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("p mod q = ");
        sb.append(bigIntegerM121if.mod(bigIntegerM120for).toString(16));
        printStream.println(sb.toString());
        System.out.println("g^{q} mod p = " + bigIntegerM119do.modPow(bigIntegerM120for, bigIntegerM121if).toString(16));
        System.out.println("");
        System.out.println("(Secret passwords used by Alice and Bob: \"password\" and \"password\")\n");
        yp1 yp1Var = new yp1();
        SecureRandom secureRandom = new SecureRandom();
        no0 no0Var = new no0("alice", "password".toCharArray(), aabVar, yp1Var, secureRandom);
        no0 no0Var2 = new no0("bob", "password".toCharArray(), aabVar, yp1Var, secureRandom);
        qo0 qo0VarM5288if = no0Var.m5288if();
        qo0 qo0VarM5288if2 = no0Var2.m5288if();
        System.out.println("************ Round 1 **************");
        System.out.println("Alice sends to Bob: ");
        System.out.println("g^{x1}=" + qo0VarM5288if.m6628do().toString(16));
        System.out.println("g^{x2}=" + qo0VarM5288if.m6630if().toString(16));
        System.out.println("KP{x1}={" + qo0VarM5288if.m6629for()[0].toString(16) + "};{" + qo0VarM5288if.m6629for()[1].toString(16) + "}");
        System.out.println("KP{x2}={" + qo0VarM5288if.m6631new()[0].toString(16) + "};{" + qo0VarM5288if.m6631new()[1].toString(16) + "}");
        System.out.println("");
        System.out.println("Bob sends to Alice: ");
        System.out.println("g^{x3}=" + qo0VarM5288if2.m6628do().toString(16));
        System.out.println("g^{x4}=" + qo0VarM5288if2.m6630if().toString(16));
        System.out.println("KP{x3}={" + qo0VarM5288if2.m6629for()[0].toString(16) + "};{" + qo0VarM5288if2.m6629for()[1].toString(16) + "}");
        System.out.println("KP{x4}={" + qo0VarM5288if2.m6631new()[0].toString(16) + "};{" + qo0VarM5288if2.m6631new()[1].toString(16) + "}");
        System.out.println("");
        no0Var.m5283case(qo0VarM5288if2);
        System.out.println("Alice checks g^{x4}!=1: OK");
        System.out.println("Alice checks KP{x3}: OK");
        System.out.println("Alice checks KP{x4}: OK");
        System.out.println("");
        no0Var2.m5283case(qo0VarM5288if);
        System.out.println("Bob checks g^{x2}!=1: OK");
        System.out.println("Bob checks KP{x1},: OK");
        System.out.println("Bob checks KP{x2},: OK");
        System.out.println("");
        ro0 ro0VarM5286for = no0Var.m5286for();
        ro0 ro0VarM5286for2 = no0Var2.m5286for();
        System.out.println("************ Round 2 **************");
        System.out.println("Alice sends to Bob: ");
        System.out.println("A=" + ro0VarM5286for.m7072do().toString(16));
        System.out.println("KP{x2*s}={" + ro0VarM5286for.m7074if()[0].toString(16) + "},{" + ro0VarM5286for.m7074if()[1].toString(16) + "}");
        System.out.println("");
        System.out.println("Bob sends to Alice");
        System.out.println("B=" + ro0VarM5286for2.m7072do().toString(16));
        System.out.println("KP{x4*s}={" + ro0VarM5286for2.m7074if()[0].toString(16) + "},{" + ro0VarM5286for2.m7074if()[1].toString(16) + "}");
        System.out.println("");
        no0Var.m5285else(ro0VarM5286for2);
        System.out.println("Alice checks KP{x4*s}: OK\n");
        no0Var2.m5285else(ro0VarM5286for);
        System.out.println("Bob checks KP{x2*s}: OK\n");
        BigInteger bigIntegerM5284do = no0Var.m5284do();
        BigInteger bigIntegerM5284do2 = no0Var2.m5284do();
        System.out.println("********* After round 2 ***********");
        System.out.println("Alice computes key material \t K=" + bigIntegerM5284do.toString(16));
        System.out.println("Bob computes key material \t K=" + bigIntegerM5284do2.toString(16));
        System.out.println();
        m4955do(bigIntegerM5284do);
        m4955do(bigIntegerM5284do2);
        so0 so0VarM5289new = no0Var.m5289new(bigIntegerM5284do);
        so0 so0VarM5289new2 = no0Var2.m5289new(bigIntegerM5284do2);
        System.out.println("************ Round 3 **************");
        System.out.println("Alice sends to Bob: ");
        System.out.println("MacTag=" + so0VarM5289new.m7542do().toString(16));
        System.out.println("");
        System.out.println("Bob sends to Alice: ");
        System.out.println("MacTag=" + so0VarM5289new2.m7542do().toString(16));
        System.out.println("");
        no0Var.m5287goto(so0VarM5289new2, bigIntegerM5284do);
        System.out.println("Alice checks MacTag: OK\n");
        no0Var2.m5287goto(so0VarM5289new, bigIntegerM5284do2);
        System.out.println("Bob checks MacTag: OK\n");
        System.out.println();
        System.out.println("MacTags validated, therefore the keying material matches.");
    }
}
