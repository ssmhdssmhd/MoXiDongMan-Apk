package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
abstract class t {

    /* renamed from: do, reason: not valid java name */
    private static final t f17223do;

    /* renamed from: if, reason: not valid java name */
    private static final t f17224if;

    /* renamed from: com.google.protobuf.t$for, reason: invalid class name */
    public static final class Cfor extends t {
        private Cfor() {
            super();
        }

        /* renamed from: case, reason: not valid java name */
        public static <E> Internal.ProtobufList<E> m21179case(Object obj, long j) {
            return (Internal.ProtobufList) z1.b(obj, j);
        }

        @Override // com.google.protobuf.t
        /* renamed from: for */
        public void mo21176for(Object obj, long j) {
            m21179case(obj, j).makeImmutable();
        }

        @Override // com.google.protobuf.t
        /* renamed from: new */
        public <E> void mo21177new(Object obj, Object obj2, long j) {
            Internal.ProtobufList protobufListM21179case = m21179case(obj, j);
            Internal.ProtobufList protobufListM21179case2 = m21179case(obj2, j);
            int size = protobufListM21179case.size();
            int size2 = protobufListM21179case2.size();
            if (size > 0 && size2 > 0) {
                if (!protobufListM21179case.isModifiable()) {
                    protobufListM21179case = protobufListM21179case.mutableCopyWithCapacity2(size2 + size);
                }
                protobufListM21179case.addAll(protobufListM21179case2);
            }
            if (size > 0) {
                protobufListM21179case2 = protobufListM21179case;
            }
            z1.D(obj, j, protobufListM21179case2);
        }

        @Override // com.google.protobuf.t
        /* renamed from: try */
        public <L> List<L> mo21178try(Object obj, long j) {
            Internal.ProtobufList protobufListM21179case = m21179case(obj, j);
            if (protobufListM21179case.isModifiable()) {
                return protobufListM21179case;
            }
            int size = protobufListM21179case.size();
            Internal.ProtobufList protobufListMutableCopyWithCapacity2 = protobufListM21179case.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
            z1.D(obj, j, protobufListMutableCopyWithCapacity2);
            return protobufListMutableCopyWithCapacity2;
        }
    }

    /* renamed from: com.google.protobuf.t$if, reason: invalid class name */
    public static final class Cif extends t {

        /* renamed from: for, reason: not valid java name */
        private static final Class<?> f17225for = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private Cif() {
            super();
        }

        /* renamed from: case, reason: not valid java name */
        public static <E> List<E> m21180case(Object obj, long j) {
            return (List) z1.b(obj, j);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: else, reason: not valid java name */
        private static <L> List<L> m21181else(Object obj, long j, int i) {
            s sVar;
            List<L> listM21180case = m21180case(obj, j);
            if (listM21180case.isEmpty()) {
                List<L> sVar2 = listM21180case instanceof LazyStringList ? new s(i) : ((listM21180case instanceof PrimitiveNonBoxingCollection) && (listM21180case instanceof Internal.ProtobufList)) ? ((Internal.ProtobufList) listM21180case).mutableCopyWithCapacity2(i) : new ArrayList<>(i);
                z1.D(obj, j, sVar2);
                return sVar2;
            }
            if (f17225for.isAssignableFrom(listM21180case.getClass())) {
                ArrayList arrayList = new ArrayList(listM21180case.size() + i);
                arrayList.addAll(listM21180case);
                z1.D(obj, j, arrayList);
                sVar = arrayList;
            } else {
                if (!(listM21180case instanceof x1)) {
                    if (!(listM21180case instanceof PrimitiveNonBoxingCollection) || !(listM21180case instanceof Internal.ProtobufList)) {
                        return listM21180case;
                    }
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) listM21180case;
                    if (protobufList.isModifiable()) {
                        return listM21180case;
                    }
                    Internal.ProtobufList protobufListMutableCopyWithCapacity2 = protobufList.mutableCopyWithCapacity2(listM21180case.size() + i);
                    z1.D(obj, j, protobufListMutableCopyWithCapacity2);
                    return protobufListMutableCopyWithCapacity2;
                }
                s sVar3 = new s(listM21180case.size() + i);
                sVar3.addAll((x1) listM21180case);
                z1.D(obj, j, sVar3);
                sVar = sVar3;
            }
            return sVar;
        }

        @Override // com.google.protobuf.t
        /* renamed from: for */
        public void mo21176for(Object obj, long j) {
            Object objUnmodifiableList;
            List list = (List) z1.b(obj, j);
            if (list instanceof LazyStringList) {
                objUnmodifiableList = ((LazyStringList) list).getUnmodifiableView();
            } else {
                if (f17225for.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof PrimitiveNonBoxingCollection) && (list instanceof Internal.ProtobufList)) {
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) list;
                    if (protobufList.isModifiable()) {
                        protobufList.makeImmutable();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            z1.D(obj, j, objUnmodifiableList);
        }

        @Override // com.google.protobuf.t
        /* renamed from: new */
        public <E> void mo21177new(Object obj, Object obj2, long j) {
            List listM21180case = m21180case(obj2, j);
            List listM21181else = m21181else(obj, j, listM21180case.size());
            int size = listM21181else.size();
            int size2 = listM21180case.size();
            if (size > 0 && size2 > 0) {
                listM21181else.addAll(listM21180case);
            }
            if (size > 0) {
                listM21180case = listM21181else;
            }
            z1.D(obj, j, listM21180case);
        }

        @Override // com.google.protobuf.t
        /* renamed from: try */
        public <L> List<L> mo21178try(Object obj, long j) {
            return m21181else(obj, j, 10);
        }
    }

    static {
        f17223do = new Cif();
        f17224if = new Cfor();
    }

    /* renamed from: do, reason: not valid java name */
    public static t m21174do() {
        return f17223do;
    }

    /* renamed from: if, reason: not valid java name */
    public static t m21175if() {
        return f17224if;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract void mo21176for(Object obj, long j);

    /* renamed from: new, reason: not valid java name */
    public abstract <L> void mo21177new(Object obj, Object obj2, long j);

    /* renamed from: try, reason: not valid java name */
    public abstract <L> List<L> mo21178try(Object obj, long j);

    private t() {
    }
}
