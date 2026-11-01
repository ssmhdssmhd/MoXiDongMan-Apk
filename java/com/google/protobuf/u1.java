package com.google.protobuf;

import com.google.protobuf.Writer;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class u1 {

    /* renamed from: case, reason: not valid java name */
    private static final int f17274case = 8;

    /* renamed from: else, reason: not valid java name */
    private static final u1 f17275else = new u1(0, new int[0], new Object[0], false);

    /* renamed from: do, reason: not valid java name */
    private int f17276do;

    /* renamed from: for, reason: not valid java name */
    private Object[] f17277for;

    /* renamed from: if, reason: not valid java name */
    private int[] f17278if;

    /* renamed from: new, reason: not valid java name */
    private int f17279new;

    /* renamed from: try, reason: not valid java name */
    private boolean f17280try;

    private u1() {
        this(0, new int[8], new Object[8], true);
    }

    /* renamed from: break, reason: not valid java name */
    private u1 m21416break(CodedInputStream codedInputStream) throws IOException {
        int iL;
        do {
            iL = codedInputStream.l();
            if (iL == 0) {
                break;
            }
        } while (m21435this(iL, codedInputStream));
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    private static int m21417case(int[] iArr, int i) {
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        return i2;
    }

    /* renamed from: const, reason: not valid java name */
    public static u1 m21418const(u1 u1Var, u1 u1Var2) {
        int i = u1Var.f17276do + u1Var2.f17276do;
        int[] iArrCopyOf = Arrays.copyOf(u1Var.f17278if, i);
        System.arraycopy(u1Var2.f17278if, 0, iArrCopyOf, u1Var.f17276do, u1Var2.f17276do);
        Object[] objArrCopyOf = Arrays.copyOf(u1Var.f17277for, i);
        System.arraycopy(u1Var2.f17277for, 0, objArrCopyOf, u1Var.f17276do, u1Var2.f17276do);
        return new u1(i, iArrCopyOf, objArrCopyOf, true);
    }

    /* renamed from: else, reason: not valid java name */
    private static int m21419else(Object[] objArr, int i) {
        int iHashCode = 17;
        for (int i2 = 0; i2 < i; i2++) {
            iHashCode = (iHashCode * 31) + objArr[i2].hashCode();
        }
        return iHashCode;
    }

    /* renamed from: final, reason: not valid java name */
    public static u1 m21420final() {
        return new u1();
    }

    /* renamed from: for, reason: not valid java name */
    public static u1 m21421for() {
        return f17275else;
    }

    /* renamed from: if, reason: not valid java name */
    private void m21422if() {
        int i = this.f17276do;
        int[] iArr = this.f17278if;
        if (i == iArr.length) {
            int i2 = i + (i < 4 ? 8 : i >> 1);
            this.f17278if = Arrays.copyOf(iArr, i2);
            this.f17277for = Arrays.copyOf(this.f17277for, i2);
        }
    }

    /* renamed from: import, reason: not valid java name */
    private static boolean m21423import(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: return, reason: not valid java name */
    private static void m21424return(int i, Object obj, Writer writer) throws IOException {
        int iM19962do = c2.m19962do(i);
        int iM19964if = c2.m19964if(i);
        if (iM19964if == 0) {
            writer.writeInt64(iM19962do, ((Long) obj).longValue());
            return;
        }
        if (iM19964if == 1) {
            writer.writeFixed64(iM19962do, ((Long) obj).longValue());
            return;
        }
        if (iM19964if == 2) {
            writer.writeBytes(iM19962do, (ByteString) obj);
            return;
        }
        if (iM19964if != 3) {
            if (iM19964if != 5) {
                throw new RuntimeException(n.invalidWireType());
            }
            writer.writeFixed32(iM19962do, ((Integer) obj).intValue());
        } else if (writer.fieldOrder() == Writer.Cdo.ASCENDING) {
            writer.writeStartGroup(iM19962do);
            ((u1) obj).m21434switch(writer);
            writer.writeEndGroup(iM19962do);
        } else {
            writer.writeEndGroup(iM19962do);
            ((u1) obj).m21434switch(writer);
            writer.writeStartGroup(iM19962do);
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static boolean m21425super(Object[] objArr, Object[] objArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!objArr[i2].equals(objArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: catch, reason: not valid java name */
    public u1 m21426catch(int i, ByteString byteString) {
        m21428do();
        if (i == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        m21438while(c2.m19963for(i, 2), byteString);
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public u1 m21427class(int i, int i2) {
        m21428do();
        if (i == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        m21438while(c2.m19963for(i, 0), Long.valueOf(i2));
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public void m21428do() {
        if (!this.f17280try) {
            throw new UnsupportedOperationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof u1)) {
            return false;
        }
        u1 u1Var = (u1) obj;
        int i = this.f17276do;
        return i == u1Var.f17276do && m21423import(this.f17278if, u1Var.f17278if, i) && m21425super(this.f17277for, u1Var.f17277for, this.f17276do);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m21429goto() {
        this.f17280try = false;
    }

    public int hashCode() {
        int i = this.f17276do;
        return ((((527 + i) * 31) + m21417case(this.f17278if, i)) * 31) + m21419else(this.f17277for, this.f17276do);
    }

    /* renamed from: native, reason: not valid java name */
    public void m21430native(Cnative cnative) throws IOException {
        for (int i = 0; i < this.f17276do; i++) {
            cnative.s0(c2.m19962do(this.f17278if[i]), (ByteString) this.f17277for[i]);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public int m21431new() {
        int iU;
        int i = this.f17279new;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f17276do; i3++) {
            int i4 = this.f17278if[i3];
            int iM19962do = c2.m19962do(i4);
            int iM19964if = c2.m19964if(i4);
            if (iM19964if == 0) {
                iU = Cnative.u(iM19962do, ((Long) this.f17277for[i3]).longValue());
            } else if (iM19964if == 1) {
                iU = Cnative.m20896static(iM19962do, ((Long) this.f17277for[i3]).longValue());
            } else if (iM19964if == 2) {
                iU = Cnative.m20883final(iM19962do, (ByteString) this.f17277for[i3]);
            } else if (iM19964if == 3) {
                iU = (Cnative.r(iM19962do) * 2) + ((u1) this.f17277for[i3]).m21431new();
            } else {
                if (iM19964if != 5) {
                    throw new IllegalStateException(n.invalidWireType());
                }
                iU = Cnative.m20894public(iM19962do, ((Integer) this.f17277for[i3]).intValue());
            }
            i2 += iU;
        }
        this.f17279new = i2;
        return i2;
    }

    /* renamed from: public, reason: not valid java name */
    public void m21432public(Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.Cdo.DESCENDING) {
            for (int i = this.f17276do - 1; i >= 0; i--) {
                writer.writeMessageSetItem(c2.m19962do(this.f17278if[i]), this.f17277for[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f17276do; i2++) {
            writer.writeMessageSetItem(c2.m19962do(this.f17278if[i2]), this.f17277for[i2]);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m21433static(Cnative cnative) throws IOException {
        for (int i = 0; i < this.f17276do; i++) {
            int i2 = this.f17278if[i];
            int iM19962do = c2.m19962do(i2);
            int iM19964if = c2.m19964if(i2);
            if (iM19964if == 0) {
                cnative.writeUInt64(iM19962do, ((Long) this.f17277for[i]).longValue());
            } else if (iM19964if == 1) {
                cnative.writeFixed64(iM19962do, ((Long) this.f17277for[i]).longValue());
            } else if (iM19964if == 2) {
                cnative.writeBytes(iM19962do, (ByteString) this.f17277for[i]);
            } else if (iM19964if == 3) {
                cnative.A0(iM19962do, 3);
                ((u1) this.f17277for[i]).m21433static(cnative);
                cnative.A0(iM19962do, 4);
            } else {
                if (iM19964if != 5) {
                    throw n.invalidWireType();
                }
                cnative.writeFixed32(iM19962do, ((Integer) this.f17277for[i]).intValue());
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public void m21434switch(Writer writer) throws IOException {
        if (this.f17276do == 0) {
            return;
        }
        if (writer.fieldOrder() == Writer.Cdo.ASCENDING) {
            for (int i = 0; i < this.f17276do; i++) {
                m21424return(this.f17278if[i], this.f17277for[i], writer);
            }
            return;
        }
        for (int i2 = this.f17276do - 1; i2 >= 0; i2--) {
            m21424return(this.f17278if[i2], this.f17277for[i2], writer);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m21435this(int i, CodedInputStream codedInputStream) throws IOException {
        m21428do();
        int iM19962do = c2.m19962do(i);
        int iM19964if = c2.m19964if(i);
        if (iM19964if == 0) {
            m21438while(i, Long.valueOf(codedInputStream.mo18446volatile()));
            return true;
        }
        if (iM19964if == 1) {
            m21438while(i, Long.valueOf(codedInputStream.mo18433package()));
            return true;
        }
        if (iM19964if == 2) {
            m21438while(i, codedInputStream.mo18443throws());
            return true;
        }
        if (iM19964if == 3) {
            u1 u1Var = new u1();
            u1Var.m21416break(codedInputStream);
            codedInputStream.mo18423do(c2.m19963for(iM19962do, 4));
            m21438while(i, u1Var);
            return true;
        }
        if (iM19964if == 4) {
            return false;
        }
        if (iM19964if != 5) {
            throw n.invalidWireType();
        }
        m21438while(i, Integer.valueOf(codedInputStream.mo18426finally()));
        return true;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m21436throw(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f17276do; i2++) {
            d0.m20248for(sb, i, String.valueOf(c2.m19962do(this.f17278if[i2])), this.f17277for[i2]);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public int m21437try() {
        int i = this.f17279new;
        if (i != -1) {
            return i;
        }
        int iE = 0;
        for (int i2 = 0; i2 < this.f17276do; i2++) {
            iE += Cnative.e(c2.m19962do(this.f17278if[i2]), (ByteString) this.f17277for[i2]);
        }
        this.f17279new = iE;
        return iE;
    }

    /* renamed from: while, reason: not valid java name */
    public void m21438while(int i, Object obj) {
        m21428do();
        m21422if();
        int[] iArr = this.f17278if;
        int i2 = this.f17276do;
        iArr[i2] = i;
        this.f17277for[i2] = obj;
        this.f17276do = i2 + 1;
    }

    private u1(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f17279new = -1;
        this.f17276do = i;
        this.f17278if = iArr;
        this.f17277for = objArr;
        this.f17280try = z;
    }
}
