package com.google.protobuf;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public class x1 extends AbstractList<String> implements LazyStringList, RandomAccess {

    /* renamed from: do, reason: not valid java name */
    private final LazyStringList f17334do;

    /* renamed from: com.google.protobuf.x1$do, reason: invalid class name */
    public class Cdo implements ListIterator<String> {

        /* renamed from: do, reason: not valid java name */
        public ListIterator<String> f17335do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f17337if;

        public Cdo(int i) {
            this.f17337if = i;
            this.f17335do = x1.this.f17334do.listIterator(i);
        }

        @Override // java.util.ListIterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public String previous() {
            return this.f17335do.previous();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f17335do.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f17335do.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public String next() {
            return this.f17335do.next();
        }

        @Override // java.util.ListIterator
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f17335do.nextIndex();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f17335do.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.protobuf.x1$if, reason: invalid class name */
    public class Cif implements Iterator<String> {

        /* renamed from: do, reason: not valid java name */
        public Iterator<String> f17338do;

        public Cif() {
            this.f17338do = x1.this.f17334do.iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public String next() {
            return this.f17338do.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f17338do.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public x1(LazyStringList lazyStringList) {
        this.f17334do = lazyStringList;
    }

    @Override // com.google.protobuf.LazyStringList
    public void add(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.LazyStringList
    public boolean addAllByteArray(Collection<byte[]> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.LazyStringList
    public boolean addAllByteString(Collection<? extends ByteString> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.LazyStringList
    public List<byte[]> asByteArrayList() {
        return Collections.unmodifiableList(this.f17334do.asByteArrayList());
    }

    @Override // com.google.protobuf.ProtocolStringList
    public List<ByteString> asByteStringList() {
        return Collections.unmodifiableList(this.f17334do.asByteStringList());
    }

    @Override // com.google.protobuf.LazyStringList
    public byte[] getByteArray(int i) {
        return this.f17334do.getByteArray(i);
    }

    @Override // com.google.protobuf.LazyStringList
    public ByteString getByteString(int i) {
        return this.f17334do.getByteString(i);
    }

    @Override // com.google.protobuf.LazyStringList
    public Object getRaw(int i) {
        return this.f17334do.getRaw(i);
    }

    @Override // com.google.protobuf.LazyStringList
    public List<?> getUnderlyingElements() {
        return this.f17334do.getUnderlyingElements();
    }

    @Override // com.google.protobuf.LazyStringList
    public LazyStringList getUnmodifiableView() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new Cif();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i) {
        return new Cdo(i);
    }

    @Override // com.google.protobuf.LazyStringList
    public void mergeFrom(LazyStringList lazyStringList) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.LazyStringList
    public void set(int i, ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f17334do.size();
    }

    @Override // com.google.protobuf.LazyStringList
    public void add(byte[] bArr) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i) {
        return this.f17334do.get(i);
    }

    @Override // com.google.protobuf.LazyStringList
    public void set(int i, byte[] bArr) {
        throw new UnsupportedOperationException();
    }
}
