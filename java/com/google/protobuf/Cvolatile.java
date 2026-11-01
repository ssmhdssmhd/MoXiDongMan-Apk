package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.MessageLite;

/* renamed from: com.google.protobuf.volatile, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cvolatile<ContainingType extends MessageLite, Type> extends Cinterface<ContainingType, Type> {

    /* renamed from: com.google.protobuf.volatile$do, reason: invalid class name */
    public enum Cdo {
        IMMUTABLE,
        MUTABLE,
        PROTO1
    }

    /* renamed from: com.google.protobuf.volatile$if, reason: invalid class name */
    public enum Cif {
        PROTO1,
        PROTO2
    }

    @Override // com.google.protobuf.Cinterface
    /* renamed from: break, reason: merged with bridge method [inline-methods] */
    public abstract Message mo19450for();

    /* renamed from: catch, reason: not valid java name */
    public Cif m21493catch() {
        return Cif.PROTO2;
    }

    /* renamed from: class */
    public abstract Object mo19445class(Object obj);

    /* renamed from: const */
    public abstract Object mo19446const(Object obj);

    /* renamed from: else */
    public abstract Object mo19448else(Object obj);

    /* renamed from: final */
    public abstract Object mo19449final(Object obj);

    /* renamed from: goto */
    public abstract Descriptors.Celse mo19451goto();

    /* renamed from: this */
    public abstract Cdo mo19455this();

    @Override // com.google.protobuf.Cinterface
    /* renamed from: try */
    public final boolean mo20622try() {
        return false;
    }
}
