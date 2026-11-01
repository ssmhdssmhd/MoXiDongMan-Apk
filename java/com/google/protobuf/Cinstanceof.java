package com.google.protobuf;

import com.google.protobuf.FieldSet;
import com.google.protobuf.FieldSet.FieldDescriptorLite;
import java.io.IOException;
import java.util.Map;

/* renamed from: com.google.protobuf.instanceof, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cinstanceof<T extends FieldSet.FieldDescriptorLite<T>> {
    /* renamed from: break */
    public abstract void mo19671break(Writer writer, Map.Entry<?, ?> entry) throws IOException;

    /* renamed from: case */
    public abstract void mo19672case(Object obj);

    /* renamed from: catch */
    public abstract void mo19673catch(Object obj, FieldSet<T> fieldSet);

    /* renamed from: do */
    public abstract int mo19674do(Map.Entry<?, ?> entry);

    /* renamed from: else */
    public abstract <UT, UB> UB mo19675else(Reader reader, Object obj, Cimplements cimplements, FieldSet<T> fieldSet, UB ub, s1<UT, UB> s1Var) throws IOException;

    /* renamed from: for */
    public abstract FieldSet<T> mo19676for(Object obj);

    /* renamed from: goto */
    public abstract void mo19677goto(Reader reader, Object obj, Cimplements cimplements, FieldSet<T> fieldSet) throws IOException;

    /* renamed from: if */
    public abstract Object mo19678if(Cimplements cimplements, MessageLite messageLite, int i);

    /* renamed from: new */
    public abstract FieldSet<T> mo19679new(Object obj);

    /* renamed from: this */
    public abstract void mo19680this(ByteString byteString, Object obj, Cimplements cimplements, FieldSet<T> fieldSet) throws IOException;

    /* renamed from: try */
    public abstract boolean mo19681try(MessageLite messageLite);
}
