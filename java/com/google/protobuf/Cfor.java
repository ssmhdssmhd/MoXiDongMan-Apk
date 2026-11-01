package com.google.protobuf;

import java.nio.ByteBuffer;

/* renamed from: com.google.protobuf.for, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cfor {

    /* renamed from: com.google.protobuf.for$do, reason: invalid class name */
    public class Cdo extends Cfor {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ByteBuffer f16918do;

        public Cdo(ByteBuffer byteBuffer) {
            this.f16918do = byteBuffer;
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: case */
        public ByteBuffer mo20485case() {
            return this.f16918do;
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: do */
        public byte[] mo20486do() {
            return this.f16918do.array();
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: else */
        public int mo20487else() {
            return this.f16918do.position();
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: for */
        public boolean mo20488for() {
            return this.f16918do.hasArray();
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: goto */
        public Cfor mo20489goto(int i) {
            return this;
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: if */
        public int mo20490if() {
            return this.f16918do.arrayOffset();
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: new */
        public boolean mo20491new() {
            return true;
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: this */
        public int mo20492this() {
            return this.f16918do.remaining();
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: try */
        public int mo20493try() {
            return this.f16918do.limit();
        }
    }

    /* renamed from: com.google.protobuf.for$if, reason: invalid class name */
    public class Cif extends Cfor {

        /* renamed from: do, reason: not valid java name */
        private int f16919do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f16920for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ byte[] f16921if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ int f16922new;

        public Cif(byte[] bArr, int i, int i2) {
            this.f16921if = bArr;
            this.f16920for = i;
            this.f16922new = i2;
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: case */
        public ByteBuffer mo20485case() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: do */
        public byte[] mo20486do() {
            return this.f16921if;
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: else */
        public int mo20487else() {
            return this.f16919do;
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: for */
        public boolean mo20488for() {
            return true;
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: goto */
        public Cfor mo20489goto(int i) {
            if (i >= 0 && i <= this.f16922new) {
                this.f16919do = i;
                return this;
            }
            StringBuilder sb = new StringBuilder(29);
            sb.append("Invalid position: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: if */
        public int mo20490if() {
            return this.f16920for;
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: new */
        public boolean mo20491new() {
            return false;
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: this */
        public int mo20492this() {
            return this.f16922new - this.f16919do;
        }

        @Override // com.google.protobuf.Cfor
        /* renamed from: try */
        public int mo20493try() {
            return this.f16922new;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static Cfor m20481break(ByteBuffer byteBuffer) {
        Internal.m19632try(byteBuffer, "buffer");
        return new Cdo(byteBuffer);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cfor m20482catch(byte[] bArr) {
        return m20484const(bArr, 0, bArr.length);
    }

    /* renamed from: class, reason: not valid java name */
    public static Cfor m20483class(byte[] bArr, int i, int i2) {
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException(String.format("bytes.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        return m20484const(bArr, i, i2);
    }

    /* renamed from: const, reason: not valid java name */
    private static Cfor m20484const(byte[] bArr, int i, int i2) {
        return new Cif(bArr, i, i2);
    }

    /* renamed from: case, reason: not valid java name */
    public abstract ByteBuffer mo20485case();

    /* renamed from: do, reason: not valid java name */
    public abstract byte[] mo20486do();

    /* renamed from: else, reason: not valid java name */
    public abstract int mo20487else();

    /* renamed from: for, reason: not valid java name */
    public abstract boolean mo20488for();

    /* renamed from: goto, reason: not valid java name */
    public abstract Cfor mo20489goto(int i);

    /* renamed from: if, reason: not valid java name */
    public abstract int mo20490if();

    /* renamed from: new, reason: not valid java name */
    public abstract boolean mo20491new();

    /* renamed from: this, reason: not valid java name */
    public abstract int mo20492this();

    /* renamed from: try, reason: not valid java name */
    public abstract int mo20493try();
}
