package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public class q extends r {

    /* renamed from: case, reason: not valid java name */
    private final MessageLite f17166case;

    /* renamed from: com.google.protobuf.q$for, reason: invalid class name */
    public static class Cfor<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: do, reason: not valid java name */
        private Iterator<Map.Entry<K, Object>> f17167do;

        public Cfor(Iterator<Map.Entry<K, Object>> it) {
            this.f17167do = it;
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.f17167do.next();
            return next.getValue() instanceof q ? new Cif(next) : next;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f17167do.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f17167do.remove();
        }
    }

    /* renamed from: com.google.protobuf.q$if, reason: invalid class name */
    public static class Cif<K> implements Map.Entry<K, Object> {

        /* renamed from: do, reason: not valid java name */
        private Map.Entry<K, q> f17168do;

        /* renamed from: do, reason: not valid java name */
        public q m21001do() {
            return this.f17168do.getValue();
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f17168do.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            q value = this.f17168do.getValue();
            if (value == null) {
                return null;
            }
            return value.m20999throw();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof MessageLite) {
                return this.f17168do.getValue().m21037const((MessageLite) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }

        private Cif(Map.Entry<K, q> entry) {
            this.f17168do = entry;
        }
    }

    public q(MessageLite messageLite, Cimplements cimplements, ByteString byteString) {
        super(cimplements, byteString);
        this.f17166case = messageLite;
    }

    @Override // com.google.protobuf.r
    public boolean equals(Object obj) {
        return m20999throw().equals(obj);
    }

    @Override // com.google.protobuf.r
    /* renamed from: for, reason: not valid java name */
    public boolean mo20998for() {
        return super.mo20998for() || this.f17177for == this.f17166case;
    }

    @Override // com.google.protobuf.r
    public int hashCode() {
        return m20999throw().hashCode();
    }

    /* renamed from: throw, reason: not valid java name */
    public MessageLite m20999throw() {
        return m21038else(this.f17166case);
    }

    public String toString() {
        return m20999throw().toString();
    }
}
