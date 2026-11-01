package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Message;
import com.google.protobuf.c2;
import com.google.protobuf.y;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public final class x<K, V> extends AbstractMessage {

    /* renamed from: do, reason: not valid java name */
    private final K f17317do;

    /* renamed from: for, reason: not valid java name */
    private final Cfor<K, V> f17318for;

    /* renamed from: if, reason: not valid java name */
    private final V f17319if;

    /* renamed from: new, reason: not valid java name */
    private volatile int f17320new;

    /* renamed from: com.google.protobuf.x$for, reason: invalid class name */
    public static final class Cfor<K, V> extends y.Cif<K, V> {

        /* renamed from: case, reason: not valid java name */
        public final Parser<x<K, V>> f17321case;

        /* renamed from: try, reason: not valid java name */
        public final Descriptors.Cif f17322try;

        /* renamed from: com.google.protobuf.x$for$do, reason: invalid class name */
        public class Cdo extends com.google.protobuf.Cdo<x<K, V>> {
            public Cdo() {
            }

            @Override // com.google.protobuf.Parser
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public x<K, V> parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
                return new x<>(Cfor.this, codedInputStream, cimplements);
            }
        }

        public Cfor(Descriptors.Cif cif, x<K, V> xVar, c2.Cif cif2, c2.Cif cif3) {
            super(cif2, ((x) xVar).f17317do, cif3, ((x) xVar).f17319if);
            this.f17322try = cif;
            this.f17321case = new Cdo();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static <K, V> x<K, V> m21546catch(Descriptors.Cif cif, c2.Cif cif2, K k, c2.Cif cif3, V v) {
        return new x<>(cif, cif2, k, cif3, v);
    }

    /* renamed from: new, reason: not valid java name */
    private void m21550new(Descriptors.Celse celse) {
        if (celse.m19282class() == this.f17318for.f17322try) {
            return;
        }
        String strMo19235if = celse.mo19235if();
        String strMo19235if2 = this.f17318for.f17322try.mo19235if();
        StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 42 + String.valueOf(strMo19235if2).length());
        sb.append("Wrong FieldDescriptor \"");
        sb.append(strMo19235if);
        sb.append("\" used in message \"");
        sb.append(strMo19235if2);
        throw new RuntimeException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static <V> boolean m21551this(Cfor cfor, V v) {
        if (cfor.f17347for.getJavaType() == c2.Cfor.MESSAGE) {
            return ((MessageLite) v).isInitialized();
        }
        return true;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif<K, V> newBuilderForType() {
        return new Cif<>(this.f17318for);
    }

    /* renamed from: case, reason: not valid java name */
    public K m21553case() {
        return this.f17317do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif<K, V> toBuilder() {
        return new Cif<>(this.f17318for, this.f17317do, this.f17319if, true, true);
    }

    /* renamed from: else, reason: not valid java name */
    public final Cfor<K, V> m21555else() {
        return this.f17318for;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.MessageOrBuilder
    public Map<Descriptors.Celse, Object> getAllFields() {
        TreeMap treeMap = new TreeMap();
        for (Descriptors.Celse celse : this.f17318for.f17322try.m19332super()) {
            if (hasField(celse)) {
                treeMap.put(celse, getField(celse));
            }
        }
        return Collections.unmodifiableMap(treeMap);
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Descriptors.Cif getDescriptorForType() {
        return this.f17318for.f17322try;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getField(Descriptors.Celse celse) {
        m21550new(celse);
        Object objM21553case = celse.getNumber() == 1 ? m21553case() : m21556goto();
        return celse.m19296static() == Descriptors.Celse.Cif.ENUM ? celse.getEnumType().m19358goto(((Integer) objM21553case).intValue()) : objM21553case;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<x<K, V>> getParserForType() {
        return this.f17318for.f17321case;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public Object getRepeatedField(Descriptors.Celse celse, int i) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(Descriptors.Celse celse) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        if (this.f17320new != -1) {
            return this.f17320new;
        }
        int iM21590if = y.m21590if(this.f17318for, this.f17317do, this.f17319if);
        this.f17320new = iM21590if;
        return iM21590if;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public t1 getUnknownFields() {
        return t1.m21189for();
    }

    /* renamed from: goto, reason: not valid java name */
    public V m21556goto() {
        return this.f17319if;
    }

    @Override // com.google.protobuf.MessageOrBuilder
    public boolean hasField(Descriptors.Celse celse) {
        m21550new(celse);
        return true;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public boolean isInitialized() {
        return m21551this(this.f17318for, this.f17319if);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public x<K, V> getDefaultInstanceForType() {
        Cfor<K, V> cfor = this.f17318for;
        return new x<>(cfor, cfor.f17348if, cfor.f17349new);
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        y.m21588class(cnative, this.f17318for, this.f17317do, this.f17319if);
    }

    /* renamed from: com.google.protobuf.x$if, reason: invalid class name */
    public static class Cif<K, V> extends AbstractMessage.Cdo<Cif<K, V>> {

        /* renamed from: do, reason: not valid java name */
        private final Cfor<K, V> f17324do;

        /* renamed from: for, reason: not valid java name */
        private V f17325for;

        /* renamed from: if, reason: not valid java name */
        private K f17326if;

        /* renamed from: new, reason: not valid java name */
        private boolean f17327new;

        /* renamed from: try, reason: not valid java name */
        private boolean f17328try;

        /* renamed from: new, reason: not valid java name */
        private void m21559new(Descriptors.Celse celse) {
            if (celse.m19282class() == this.f17324do.f17322try) {
                return;
            }
            String strMo19235if = celse.mo19235if();
            String strMo19235if2 = this.f17324do.f17322try.mo19235if();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 42 + String.valueOf(strMo19235if2).length());
            sb.append("Wrong FieldDescriptor \"");
            sb.append(strMo19235if);
            sb.append("\" used in message \"");
            sb.append(strMo19235if2);
            throw new RuntimeException(sb.toString());
        }

        /* renamed from: break, reason: not valid java name */
        public K m21560break() {
            return this.f17326if;
        }

        /* renamed from: case, reason: not valid java name */
        public Cif<K, V> m21561case() {
            this.f17326if = this.f17324do.f17348if;
            this.f17327new = false;
            return this;
        }

        /* renamed from: catch, reason: not valid java name */
        public V m21562catch() {
            return this.f17325for;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif<K, V> setField(Descriptors.Celse celse, Object obj) {
            m21559new(celse);
            if (celse.getNumber() == 1) {
                m21564const(obj);
            } else {
                if (celse.m19296static() == Descriptors.Celse.Cif.ENUM) {
                    obj = Integer.valueOf(((Descriptors.Ccase) obj).getNumber());
                } else if (celse.m19296static() == Descriptors.Celse.Cif.MESSAGE && obj != null && !this.f17324do.f17349new.getClass().isInstance(obj)) {
                    obj = ((Message) this.f17324do.f17349new).toBuilder().mergeFrom((Message) obj).build();
                }
                m21573throw(obj);
            }
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cif<K, V> m21564const(K k) {
            this.f17326if = k;
            this.f17327new = true;
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif<K, V> addRepeatedField(Descriptors.Celse celse, Object obj) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        /* renamed from: else, reason: not valid java name */
        public Cif<K, V> m21566else() {
            this.f17325for = this.f17324do.f17349new;
            this.f17328try = false;
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif<K, V> setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public x<K, V> buildPartial() {
            return new x<>(this.f17324do, this.f17326if, this.f17325for);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.MessageOrBuilder
        public Map<Descriptors.Celse, Object> getAllFields() {
            TreeMap treeMap = new TreeMap();
            for (Descriptors.Celse celse : this.f17324do.f17322try.m19332super()) {
                if (hasField(celse)) {
                    treeMap.put(celse, getField(celse));
                }
            }
            return Collections.unmodifiableMap(treeMap);
        }

        @Override // com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return this.f17324do.f17322try;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getField(Descriptors.Celse celse) {
            m21559new(celse);
            Object objM21560break = celse.getNumber() == 1 ? m21560break() : m21562catch();
            return celse.m19296static() == Descriptors.Celse.Cif.ENUM ? celse.getEnumType().m19358goto(((Integer) objM21560break).intValue()) : objM21560break;
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.Celse celse, int i) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.Celse celse) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public t1 getUnknownFields() {
            return t1.m21189for();
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif<K, V> mo18392clone() {
            return new Cif<>(this.f17324do, this.f17326if, this.f17325for, this.f17327new, this.f17328try);
        }

        @Override // com.google.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.Celse celse) {
            m21559new(celse);
            return celse.getNumber() == 1 ? this.f17327new : this.f17328try;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public x<K, V> build() {
            x<K, V> xVarBuildPartial = buildPartial();
            if (xVarBuildPartial.isInitialized()) {
                return xVarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) xVarBuildPartial);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return x.m21551this(this.f17324do, this.f17325for);
        }

        @Override // com.google.protobuf.Message.Builder
        public Message.Builder newBuilderForField(Descriptors.Celse celse) {
            m21559new(celse);
            if (celse.getNumber() == 2 && celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                return ((Message) this.f17325for).newBuilderForType();
            }
            String strMo19235if = celse.mo19235if();
            StringBuilder sb = new StringBuilder(String.valueOf(strMo19235if).length() + 32);
            sb.append("\"");
            sb.append(strMo19235if);
            sb.append("\" is not a message value field.");
            throw new RuntimeException(sb.toString());
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif<K, V> setUnknownFields(t1 t1Var) {
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public x<K, V> getDefaultInstanceForType() {
            Cfor<K, V> cfor = this.f17324do;
            return new x<>(cfor, cfor.f17348if, cfor.f17349new);
        }

        /* renamed from: throw, reason: not valid java name */
        public Cif<K, V> m21573throw(V v) {
            this.f17325for = v;
            this.f17328try = true;
            return this;
        }

        @Override // com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif<K, V> clearField(Descriptors.Celse celse) {
            m21559new(celse);
            if (celse.getNumber() == 1) {
                m21561case();
            } else {
                m21566else();
            }
            return this;
        }

        private Cif(Cfor<K, V> cfor) {
            this(cfor, cfor.f17348if, cfor.f17349new, false, false);
        }

        private Cif(Cfor<K, V> cfor, K k, V v, boolean z, boolean z2) {
            this.f17324do = cfor;
            this.f17326if = k;
            this.f17325for = v;
            this.f17327new = z;
            this.f17328try = z2;
        }
    }

    private x(Descriptors.Cif cif, c2.Cif cif2, K k, c2.Cif cif3, V v) {
        this.f17320new = -1;
        this.f17317do = k;
        this.f17319if = v;
        this.f17318for = new Cfor<>(cif, this, cif2, cif3);
    }

    private x(Cfor cfor, K k, V v) {
        this.f17320new = -1;
        this.f17317do = k;
        this.f17319if = v;
        this.f17318for = cfor;
    }

    private x(Cfor<K, V> cfor, CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this.f17320new = -1;
        try {
            this.f17318for = cfor;
            Map.Entry entryM21589goto = y.m21589goto(codedInputStream, cfor, cimplements);
            this.f17317do = (K) entryM21589goto.getKey();
            this.f17319if = (V) entryM21589goto.getValue();
        } catch (n e) {
            throw e.setUnfinishedMessage(this);
        } catch (IOException e2) {
            throw new n(e2).setUnfinishedMessage(this);
        }
    }
}
