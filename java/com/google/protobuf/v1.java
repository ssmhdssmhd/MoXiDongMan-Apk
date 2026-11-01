package com.google.protobuf;

import java.io.IOException;

/* loaded from: classes2.dex */
class v1 extends s1<u1, u1> {
    @Override // com.google.protobuf.s1
    /* renamed from: abstract, reason: not valid java name and merged with bridge method [inline-methods] */
    public u1 mo21135catch(u1 u1Var, u1 u1Var2) {
        return u1Var2.equals(u1.m21421for()) ? u1Var : u1.m21418const(u1Var, u1Var2);
    }

    @Override // com.google.protobuf.s1
    /* renamed from: break */
    public void mo21133break(Object obj) {
        mo21139else(obj).m21429goto();
    }

    @Override // com.google.protobuf.s1
    /* renamed from: continue, reason: not valid java name and merged with bridge method [inline-methods] */
    public u1 mo21140final() {
        return u1.m21420final();
    }

    @Override // com.google.protobuf.s1
    /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21151try(u1 u1Var, int i, long j) {
        u1Var.m21438while(c2.m19963for(i, 0), Long.valueOf(j));
    }

    @Override // com.google.protobuf.s1
    /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
    public u1 mo21134case(Object obj) {
        u1 u1VarMo21139else = mo21139else(obj);
        if (u1VarMo21139else != u1.m21421for()) {
            return u1VarMo21139else;
        }
        u1 u1VarM21420final = u1.m21420final();
        mo21150throw(obj, u1VarM21420final);
        return u1VarM21420final;
    }

    @Override // com.google.protobuf.s1
    /* renamed from: finally, reason: not valid java name and merged with bridge method [inline-methods] */
    public u1 mo21139else(Object obj) {
        return ((GeneratedMessageLite) obj).f16465do;
    }

    @Override // com.google.protobuf.s1
    /* renamed from: interface, reason: not valid java name and merged with bridge method [inline-methods] */
    public u1 mo21144import(u1 u1Var) {
        u1Var.m21429goto();
        return u1Var;
    }

    @Override // com.google.protobuf.s1
    /* renamed from: package, reason: not valid java name and merged with bridge method [inline-methods] */
    public int mo21142goto(u1 u1Var) {
        return u1Var.m21431new();
    }

    @Override // com.google.protobuf.s1
    /* renamed from: private, reason: not valid java name and merged with bridge method [inline-methods] */
    public int mo21149this(u1 u1Var) {
        return u1Var.m21437try();
    }

    @Override // com.google.protobuf.s1
    /* renamed from: protected, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21145native(u1 u1Var, Writer writer) throws IOException {
        u1Var.m21432public(writer);
    }

    @Override // com.google.protobuf.s1
    /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21138do(u1 u1Var, int i, int i2) {
        u1Var.m21438while(c2.m19963for(i, 5), Integer.valueOf(i2));
    }

    @Override // com.google.protobuf.s1
    /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21143if(u1 u1Var, int i, long j) {
        u1Var.m21438while(c2.m19963for(i, 1), Long.valueOf(j));
    }

    @Override // com.google.protobuf.s1
    /* renamed from: strictfp, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21148super(Object obj, u1 u1Var) {
        mo21150throw(obj, u1Var);
    }

    @Override // com.google.protobuf.s1
    /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21141for(u1 u1Var, int i, u1 u1Var2) {
        u1Var.m21438while(c2.m19963for(i, 3), u1Var2);
    }

    @Override // com.google.protobuf.s1
    /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21146new(u1 u1Var, int i, ByteString byteString) {
        u1Var.m21438while(c2.m19963for(i, 2), byteString);
    }

    @Override // com.google.protobuf.s1
    /* renamed from: transient, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21147public(u1 u1Var, Writer writer) throws IOException {
        u1Var.m21434switch(writer);
    }

    @Override // com.google.protobuf.s1
    /* renamed from: volatile, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo21150throw(Object obj, u1 u1Var) {
        ((GeneratedMessageLite) obj).f16465do = u1Var;
    }

    @Override // com.google.protobuf.s1
    /* renamed from: while */
    public boolean mo21152while(Reader reader) {
        return false;
    }
}
