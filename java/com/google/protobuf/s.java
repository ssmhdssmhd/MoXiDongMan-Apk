package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public class s extends com.google.protobuf.Cif<String> implements LazyStringList, RandomAccess {

    /* renamed from: new, reason: not valid java name */
    private static final s f17206new;

    /* renamed from: try, reason: not valid java name */
    public static final LazyStringList f17207try;

    /* renamed from: for, reason: not valid java name */
    private final List<Object> f17208for;

    /* renamed from: com.google.protobuf.s$do, reason: invalid class name */
    public static class Cdo extends AbstractList<byte[]> implements RandomAccess {

        /* renamed from: do, reason: not valid java name */
        private final s f17209do;

        public Cdo(s sVar) {
            this.f17209do = sVar;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void add(int i, byte[] bArr) {
            this.f17209do.m21095break(i, bArr);
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public byte[] remove(int i) {
            String strRemove = this.f17209do.remove(i);
            ((AbstractList) this).modCount++;
            return s.m21097catch(strRemove);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public byte[] get(int i) {
            return this.f17209do.getByteArray(i);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public byte[] set(int i, byte[] bArr) {
            Object objM21106native = this.f17209do.m21106native(i, bArr);
            ((AbstractList) this).modCount++;
            return s.m21097catch(objM21106native);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f17209do.size();
        }
    }

    /* renamed from: com.google.protobuf.s$if, reason: invalid class name */
    public static class Cif extends AbstractList<ByteString> implements RandomAccess {

        /* renamed from: do, reason: not valid java name */
        private final s f17210do;

        public Cif(s sVar) {
            this.f17210do = sVar;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void add(int i, ByteString byteString) {
            this.f17210do.m21103goto(i, byteString);
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public ByteString remove(int i) {
            String strRemove = this.f17210do.remove(i);
            ((AbstractList) this).modCount++;
            return s.m21098class(strRemove);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public ByteString get(int i) {
            return this.f17210do.getByteString(i);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public ByteString set(int i, ByteString byteString) {
            Object objM21105import = this.f17210do.m21105import(i, byteString);
            ((AbstractList) this).modCount++;
            return s.m21098class(objM21105import);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f17210do.size();
        }
    }

    static {
        s sVar = new s();
        f17206new = sVar;
        sVar.makeImmutable();
        f17207try = sVar;
    }

    public s() {
        this(10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public void m21095break(int i, byte[] bArr) {
        m20603do();
        this.f17208for.add(i, bArr);
        ((AbstractList) this).modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public static byte[] m21097catch(Object obj) {
        return obj instanceof byte[] ? (byte[]) obj : obj instanceof String ? Internal.m19613default((String) obj) : ((ByteString) obj).toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static ByteString m21098class(Object obj) {
        return obj instanceof ByteString ? (ByteString) obj : obj instanceof String ? ByteString.copyFromUtf8((String) obj) : ByteString.copyFrom((byte[]) obj);
    }

    /* renamed from: const, reason: not valid java name */
    private static String m21099const(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof ByteString ? ((ByteString) obj).toStringUtf8() : Internal.m19616extends((byte[]) obj);
    }

    /* renamed from: final, reason: not valid java name */
    public static s m21101final() {
        return f17206new;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public void m21103goto(int i, ByteString byteString) {
        m20603do();
        this.f17208for.add(i, byteString);
        ((AbstractList) this).modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public Object m21105import(int i, ByteString byteString) {
        m20603do();
        return this.f17208for.set(i, byteString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public Object m21106native(int i, byte[] bArr) {
        m20603do();
        return this.f17208for.set(i, bArr);
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.protobuf.LazyStringList
    public boolean addAllByteArray(Collection<byte[]> collection) {
        m20603do();
        boolean zAddAll = this.f17208for.addAll(collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.protobuf.LazyStringList
    public boolean addAllByteString(Collection<? extends ByteString> collection) {
        m20603do();
        boolean zAddAll = this.f17208for.addAll(collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.protobuf.LazyStringList
    public List<byte[]> asByteArrayList() {
        return new Cdo(this);
    }

    @Override // com.google.protobuf.ProtocolStringList
    public List<ByteString> asByteStringList() {
        return new Cif(this);
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m20603do();
        this.f17208for.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.LazyStringList
    public byte[] getByteArray(int i) {
        Object obj = this.f17208for.get(i);
        byte[] bArrM21097catch = m21097catch(obj);
        if (bArrM21097catch != obj) {
            this.f17208for.set(i, bArrM21097catch);
        }
        return bArrM21097catch;
    }

    @Override // com.google.protobuf.LazyStringList
    public ByteString getByteString(int i) {
        Object obj = this.f17208for.get(i);
        ByteString byteStringM21098class = m21098class(obj);
        if (byteStringM21098class != obj) {
            this.f17208for.set(i, byteStringM21098class);
        }
        return byteStringM21098class;
    }

    @Override // com.google.protobuf.LazyStringList
    public Object getRaw(int i) {
        return this.f17208for.get(i);
    }

    @Override // com.google.protobuf.LazyStringList
    public List<?> getUnderlyingElements() {
        return Collections.unmodifiableList(this.f17208for);
    }

    @Override // com.google.protobuf.LazyStringList
    public LazyStringList getUnmodifiableView() {
        return isModifiable() ? new x1(this) : this;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.protobuf.Cif, com.google.protobuf.Internal.ProtobufList
    public /* bridge */ /* synthetic */ boolean isModifiable() {
        return super.isModifiable();
    }

    @Override // com.google.protobuf.LazyStringList
    public void mergeFrom(LazyStringList lazyStringList) {
        m20603do();
        for (Object obj : lazyStringList.getUnderlyingElements()) {
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                this.f17208for.add(Arrays.copyOf(bArr, bArr.length));
            } else {
                this.f17208for.add(obj);
            }
        }
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f17208for.size();
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
    public s mutableCopyWithCapacity2(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f17208for);
        return new s((ArrayList<Object>) arrayList);
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public void add(int i, String str) {
        m20603do();
        this.f17208for.add(i, str);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
    public String remove(int i) {
        m20603do();
        Object objRemove = this.f17208for.remove(i);
        ((AbstractList) this).modCount++;
        return m21099const(objRemove);
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public String set(int i, String str) {
        m20603do();
        return m21099const(this.f17208for.set(i, str));
    }

    public s(int i) {
        this((ArrayList<Object>) new ArrayList(i));
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add((s) obj);
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends String> collection) {
        m20603do();
        if (collection instanceof LazyStringList) {
            collection = ((LazyStringList) collection).getUnderlyingElements();
        }
        boolean zAddAll = this.f17208for.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i) {
        Object obj = this.f17208for.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f17208for.set(i, stringUtf8);
            }
            return stringUtf8;
        }
        byte[] bArr = (byte[]) obj;
        String strM19616extends = Internal.m19616extends(bArr);
        if (Internal.m19625return(bArr)) {
            this.f17208for.set(i, strM19616extends);
        }
        return strM19616extends;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.protobuf.LazyStringList
    public void set(int i, ByteString byteString) {
        m21105import(i, byteString);
    }

    public s(LazyStringList lazyStringList) {
        this.f17208for = new ArrayList(lazyStringList.size());
        addAll(lazyStringList);
    }

    @Override // com.google.protobuf.LazyStringList
    public void add(ByteString byteString) {
        m20603do();
        this.f17208for.add(byteString);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.LazyStringList
    public void set(int i, byte[] bArr) {
        m21106native(i, bArr);
    }

    public s(List<String> list) {
        this((ArrayList<Object>) new ArrayList(list));
    }

    @Override // com.google.protobuf.LazyStringList
    public void add(byte[] bArr) {
        m20603do();
        this.f17208for.add(bArr);
        ((AbstractList) this).modCount++;
    }

    private s(ArrayList<Object> arrayList) {
        this.f17208for = arrayList;
    }
}
