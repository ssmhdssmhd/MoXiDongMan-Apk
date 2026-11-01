package com.google.protobuf;

import com.google.protobuf.t1;
import java.io.IOException;

/* loaded from: classes2.dex */
class w1 extends s1<t1, t1.Cif> {

    /* renamed from: do, reason: not valid java name */
    private final boolean f17313do;

    public w1(boolean z) {
        this.f17313do = z;
    }

    @Override // com.google.protobuf.s1
    /* renamed from: abstract, reason: not valid java name and merged with bridge method [inline-methods] */
    public t1 mo21135catch(t1 t1Var, t1 t1Var2) {
        return t1Var.toBuilder().m21260public(t1Var2).build();
    }

    @Override // com.google.protobuf.s1
    /* renamed from: break */
    public void mo21133break(Object obj) {
    }

    @Override // com.google.protobuf.s1
    /* renamed from: continue, reason: not valid java name and merged with bridge method [inline-methods] */
    public t1.Cif mo21140final() {
        return t1.m21191this();
    }

    @Override // com.google.protobuf.s1
    /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21151try(t1.Cif cif, int i, long j) {
        cif.m21247const(i, t1.Cfor.m21214return().m21233case(j).m21234else());
    }

    @Override // com.google.protobuf.s1
    /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
    public t1.Cif mo21134case(Object obj) {
        return ((GeneratedMessageV3) obj).unknownFields.toBuilder();
    }

    @Override // com.google.protobuf.s1
    /* renamed from: finally, reason: not valid java name and merged with bridge method [inline-methods] */
    public t1 mo21139else(Object obj) {
        return ((GeneratedMessageV3) obj).unknownFields;
    }

    @Override // com.google.protobuf.s1
    /* renamed from: interface, reason: not valid java name and merged with bridge method [inline-methods] */
    public t1 mo21144import(t1.Cif cif) {
        return cif.build();
    }

    @Override // com.google.protobuf.s1
    /* renamed from: package, reason: not valid java name and merged with bridge method [inline-methods] */
    public int mo21142goto(t1 t1Var) {
        return t1Var.getSerializedSize();
    }

    @Override // com.google.protobuf.s1
    /* renamed from: private, reason: not valid java name and merged with bridge method [inline-methods] */
    public int mo21149this(t1 t1Var) {
        return t1Var.m21194else();
    }

    @Override // com.google.protobuf.s1
    /* renamed from: protected, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21145native(t1 t1Var, Writer writer) throws IOException {
        t1Var.m21197import(writer);
    }

    @Override // com.google.protobuf.s1
    /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21138do(t1.Cif cif, int i, int i2) {
        cif.m21247const(i, t1.Cfor.m21214return().m21237if(i2).m21234else());
    }

    @Override // com.google.protobuf.s1
    /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21143if(t1.Cif cif, int i, long j) {
        cif.m21247const(i, t1.Cfor.m21214return().m21235for(j).m21234else());
    }

    @Override // com.google.protobuf.s1
    /* renamed from: strictfp, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21148super(Object obj, t1.Cif cif) {
        ((GeneratedMessageV3) obj).unknownFields = cif.build();
    }

    @Override // com.google.protobuf.s1
    /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21141for(t1.Cif cif, int i, t1 t1Var) {
        cif.m21247const(i, t1.Cfor.m21214return().m21238new(t1Var).m21234else());
    }

    @Override // com.google.protobuf.s1
    /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21146new(t1.Cif cif, int i, ByteString byteString) {
        cif.m21247const(i, t1.Cfor.m21214return().m21239try(byteString).m21234else());
    }

    @Override // com.google.protobuf.s1
    /* renamed from: transient, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21147public(t1 t1Var, Writer writer) throws IOException {
        t1Var.m21198native(writer);
    }

    @Override // com.google.protobuf.s1
    /* renamed from: volatile, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21150throw(Object obj, t1 t1Var) {
        ((GeneratedMessageV3) obj).unknownFields = t1Var;
    }

    @Override // com.google.protobuf.s1
    /* renamed from: while */
    public boolean mo21152while(Reader reader) {
        return reader.shouldDiscardUnknownFields();
    }
}
