package org.bouncycastle.util.test;

import java.math.BigInteger;
import org.bouncycastle.util.test.Cdo;

/* renamed from: org.bouncycastle.util.test.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Cdo {
    public Cfor(int i, byte[] bArr) {
        super(new Cdo.Ctry[]{new Cdo.C0469do(i, bArr)});
    }

    public Cfor(String str) {
        this(str, 10);
    }

    public Cfor(String str, int i) {
        super(new Cdo.Ctry[]{new Cdo.C0469do(org.bouncycastle.util.Cdo.m36313if(new BigInteger(str, i)))});
    }

    public Cfor(byte[] bArr) {
        super(new Cdo.Ctry[]{new Cdo.C0469do(bArr)});
    }
}
