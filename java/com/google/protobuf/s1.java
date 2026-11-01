package com.google.protobuf;

import java.io.IOException;

/* loaded from: classes2.dex */
abstract class s1<T, B> {
    /* renamed from: break, reason: not valid java name */
    public abstract void mo21133break(Object obj);

    /* renamed from: case, reason: not valid java name */
    public abstract B mo21134case(Object obj);

    /* renamed from: catch, reason: not valid java name */
    public abstract T mo21135catch(T t, T t2);

    /* renamed from: class, reason: not valid java name */
    public final void m21136class(B b, Reader reader) throws IOException {
        while (reader.getFieldNumber() != Integer.MAX_VALUE && m21137const(b, reader)) {
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final boolean m21137const(B b, Reader reader) throws IOException {
        int tag = reader.getTag();
        int iM19962do = c2.m19962do(tag);
        int iM19964if = c2.m19964if(tag);
        if (iM19964if == 0) {
            mo21151try(b, iM19962do, reader.readInt64());
            return true;
        }
        if (iM19964if == 1) {
            mo21143if(b, iM19962do, reader.readFixed64());
            return true;
        }
        if (iM19964if == 2) {
            mo21146new(b, iM19962do, reader.readBytes());
            return true;
        }
        if (iM19964if != 3) {
            if (iM19964if == 4) {
                return false;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            mo21138do(b, iM19962do, reader.readFixed32());
            return true;
        }
        B bMo21140final = mo21140final();
        int iM19963for = c2.m19963for(iM19962do, 4);
        m21136class(bMo21140final, reader);
        if (iM19963for != reader.getTag()) {
            throw n.invalidEndTag();
        }
        mo21141for(b, iM19962do, mo21144import(bMo21140final));
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract void mo21138do(B b, int i, int i2);

    /* renamed from: else, reason: not valid java name */
    public abstract T mo21139else(Object obj);

    /* renamed from: final, reason: not valid java name */
    public abstract B mo21140final();

    /* renamed from: for, reason: not valid java name */
    public abstract void mo21141for(B b, int i, T t);

    /* renamed from: goto, reason: not valid java name */
    public abstract int mo21142goto(T t);

    /* renamed from: if, reason: not valid java name */
    public abstract void mo21143if(B b, int i, long j);

    /* renamed from: import, reason: not valid java name */
    public abstract T mo21144import(B b);

    /* renamed from: native, reason: not valid java name */
    public abstract void mo21145native(T t, Writer writer) throws IOException;

    /* renamed from: new, reason: not valid java name */
    public abstract void mo21146new(B b, int i, ByteString byteString);

    /* renamed from: public, reason: not valid java name */
    public abstract void mo21147public(T t, Writer writer) throws IOException;

    /* renamed from: super, reason: not valid java name */
    public abstract void mo21148super(Object obj, B b);

    /* renamed from: this, reason: not valid java name */
    public abstract int mo21149this(T t);

    /* renamed from: throw, reason: not valid java name */
    public abstract void mo21150throw(Object obj, T t);

    /* renamed from: try, reason: not valid java name */
    public abstract void mo21151try(B b, int i, long j);

    /* renamed from: while, reason: not valid java name */
    public abstract boolean mo21152while(Reader reader);
}
