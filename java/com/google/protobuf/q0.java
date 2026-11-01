package com.google.protobuf;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
final class q0 {

    /* renamed from: for, reason: not valid java name */
    private static final q0 f17169for = new q0();

    /* renamed from: if, reason: not valid java name */
    private final ConcurrentMap<Class<?>, Schema<?>> f17171if = new ConcurrentHashMap();

    /* renamed from: do, reason: not valid java name */
    private final SchemaFactory f17170do = new w();

    private q0() {
    }

    /* renamed from: do, reason: not valid java name */
    public static q0 m21002do() {
        return f17169for;
    }

    /* renamed from: break, reason: not valid java name */
    public <T> Schema<T> m21003break(T t) {
        return m21011this(t.getClass());
    }

    /* renamed from: case, reason: not valid java name */
    public <T> void m21004case(T t, Reader reader, Cimplements cimplements) throws IOException {
        m21003break(t).mergeFrom(t, reader, cimplements);
    }

    /* renamed from: catch, reason: not valid java name */
    public <T> void m21005catch(T t, Writer writer) throws IOException {
        m21003break(t).writeTo(t, writer);
    }

    /* renamed from: else, reason: not valid java name */
    public Schema<?> m21006else(Class<?> cls, Schema<?> schema) {
        Internal.m19632try(cls, "messageType");
        Internal.m19632try(schema, "schema");
        return this.f17171if.putIfAbsent(cls, schema);
    }

    /* renamed from: for, reason: not valid java name */
    public <T> boolean m21007for(T t) {
        return m21003break(t).isInitialized(t);
    }

    /* renamed from: goto, reason: not valid java name */
    public Schema<?> m21008goto(Class<?> cls, Schema<?> schema) {
        Internal.m19632try(cls, "messageType");
        Internal.m19632try(schema, "schema");
        return this.f17171if.put(cls, schema);
    }

    /* renamed from: if, reason: not valid java name */
    public int m21009if() {
        int iM20339final = 0;
        for (Schema<?> schema : this.f17171if.values()) {
            if (schema instanceof e0) {
                iM20339final += ((e0) schema).m20339final();
            }
        }
        return iM20339final;
    }

    /* renamed from: new, reason: not valid java name */
    public <T> void m21010new(T t) {
        m21003break(t).makeImmutable(t);
    }

    /* renamed from: this, reason: not valid java name */
    public <T> Schema<T> m21011this(Class<T> cls) {
        Internal.m19632try(cls, "messageType");
        Schema<T> schema = (Schema) this.f17171if.get(cls);
        if (schema != null) {
            return schema;
        }
        Schema<T> schemaCreateSchema = this.f17170do.createSchema(cls);
        Schema<T> schema2 = (Schema<T>) m21006else(cls, schemaCreateSchema);
        return schema2 != null ? schema2 : schemaCreateSchema;
    }

    /* renamed from: try, reason: not valid java name */
    public <T> void m21012try(T t, Reader reader) throws IOException {
        m21004case(t, reader, Cimplements.m20607new());
    }
}
