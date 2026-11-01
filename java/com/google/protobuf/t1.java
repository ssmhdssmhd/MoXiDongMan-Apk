package com.google.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLite;
import com.google.protobuf.Writer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public final class t1 implements MessageLite {

    /* renamed from: for, reason: not valid java name */
    private static final t1 f17230for = new t1(Collections.emptyMap(), Collections.emptyMap());

    /* renamed from: new, reason: not valid java name */
    private static final Cnew f17231new = new Cnew();

    /* renamed from: do, reason: not valid java name */
    private final Map<Integer, Cfor> f17232do;

    /* renamed from: if, reason: not valid java name */
    private final Map<Integer, Cfor> f17233if;

    /* renamed from: com.google.protobuf.t1$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: case, reason: not valid java name */
        private static final Cfor f17234case = m21214return().m21234else();

        /* renamed from: do, reason: not valid java name */
        private List<Long> f17235do;

        /* renamed from: for, reason: not valid java name */
        private List<Long> f17236for;

        /* renamed from: if, reason: not valid java name */
        private List<Integer> f17237if;

        /* renamed from: new, reason: not valid java name */
        private List<ByteString> f17238new;

        /* renamed from: try, reason: not valid java name */
        private List<t1> f17239try;

        /* renamed from: com.google.protobuf.t1$for$do, reason: invalid class name */
        public static final class Cdo {

            /* renamed from: do, reason: not valid java name */
            private Cfor f17240do;

            private Cdo() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: this, reason: not valid java name */
            public static Cdo m21231this() {
                Cdo cdo = new Cdo();
                cdo.f17240do = new Cfor();
                return cdo;
            }

            /* renamed from: break, reason: not valid java name */
            public Cdo m21232break(Cfor cfor) {
                if (!cfor.f17235do.isEmpty()) {
                    if (this.f17240do.f17235do == null) {
                        this.f17240do.f17235do = new ArrayList();
                    }
                    this.f17240do.f17235do.addAll(cfor.f17235do);
                }
                if (!cfor.f17237if.isEmpty()) {
                    if (this.f17240do.f17237if == null) {
                        this.f17240do.f17237if = new ArrayList();
                    }
                    this.f17240do.f17237if.addAll(cfor.f17237if);
                }
                if (!cfor.f17236for.isEmpty()) {
                    if (this.f17240do.f17236for == null) {
                        this.f17240do.f17236for = new ArrayList();
                    }
                    this.f17240do.f17236for.addAll(cfor.f17236for);
                }
                if (!cfor.f17238new.isEmpty()) {
                    if (this.f17240do.f17238new == null) {
                        this.f17240do.f17238new = new ArrayList();
                    }
                    this.f17240do.f17238new.addAll(cfor.f17238new);
                }
                if (!cfor.f17239try.isEmpty()) {
                    if (this.f17240do.f17239try == null) {
                        this.f17240do.f17239try = new ArrayList();
                    }
                    this.f17240do.f17239try.addAll(cfor.f17239try);
                }
                return this;
            }

            /* renamed from: case, reason: not valid java name */
            public Cdo m21233case(long j) {
                if (this.f17240do.f17235do == null) {
                    this.f17240do.f17235do = new ArrayList();
                }
                this.f17240do.f17235do.add(Long.valueOf(j));
                return this;
            }

            /* renamed from: else, reason: not valid java name */
            public Cfor m21234else() {
                if (this.f17240do.f17235do == null) {
                    this.f17240do.f17235do = Collections.emptyList();
                } else {
                    Cfor cfor = this.f17240do;
                    cfor.f17235do = Collections.unmodifiableList(cfor.f17235do);
                }
                if (this.f17240do.f17237if == null) {
                    this.f17240do.f17237if = Collections.emptyList();
                } else {
                    Cfor cfor2 = this.f17240do;
                    cfor2.f17237if = Collections.unmodifiableList(cfor2.f17237if);
                }
                if (this.f17240do.f17236for == null) {
                    this.f17240do.f17236for = Collections.emptyList();
                } else {
                    Cfor cfor3 = this.f17240do;
                    cfor3.f17236for = Collections.unmodifiableList(cfor3.f17236for);
                }
                if (this.f17240do.f17238new == null) {
                    this.f17240do.f17238new = Collections.emptyList();
                } else {
                    Cfor cfor4 = this.f17240do;
                    cfor4.f17238new = Collections.unmodifiableList(cfor4.f17238new);
                }
                if (this.f17240do.f17239try == null) {
                    this.f17240do.f17239try = Collections.emptyList();
                } else {
                    Cfor cfor5 = this.f17240do;
                    cfor5.f17239try = Collections.unmodifiableList(cfor5.f17239try);
                }
                Cfor cfor6 = this.f17240do;
                this.f17240do = null;
                return cfor6;
            }

            /* renamed from: for, reason: not valid java name */
            public Cdo m21235for(long j) {
                if (this.f17240do.f17236for == null) {
                    this.f17240do.f17236for = new ArrayList();
                }
                this.f17240do.f17236for.add(Long.valueOf(j));
                return this;
            }

            /* renamed from: goto, reason: not valid java name */
            public Cdo m21236goto() {
                this.f17240do = new Cfor();
                return this;
            }

            /* renamed from: if, reason: not valid java name */
            public Cdo m21237if(int i) {
                if (this.f17240do.f17237if == null) {
                    this.f17240do.f17237if = new ArrayList();
                }
                this.f17240do.f17237if.add(Integer.valueOf(i));
                return this;
            }

            /* renamed from: new, reason: not valid java name */
            public Cdo m21238new(t1 t1Var) {
                if (this.f17240do.f17239try == null) {
                    this.f17240do.f17239try = new ArrayList();
                }
                this.f17240do.f17239try.add(t1Var);
                return this;
            }

            /* renamed from: try, reason: not valid java name */
            public Cdo m21239try(ByteString byteString) {
                if (this.f17240do.f17238new == null) {
                    this.f17240do.f17238new = new ArrayList();
                }
                this.f17240do.f17238new.add(byteString);
                return this;
            }
        }

        /* renamed from: class, reason: not valid java name */
        public static Cfor m21206class() {
            return f17234case;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: default, reason: not valid java name */
        public void m21207default(int i, Writer writer) throws IOException {
            if (writer.fieldOrder() != Writer.Cdo.DESCENDING) {
                Iterator<ByteString> it = this.f17238new.iterator();
                while (it.hasNext()) {
                    writer.writeMessageSetItem(i, it.next());
                }
            } else {
                List<ByteString> list = this.f17238new;
                ListIterator<ByteString> listIterator = list.listIterator(list.size());
                while (listIterator.hasPrevious()) {
                    writer.writeMessageSetItem(i, listIterator.previous());
                }
            }
        }

        /* renamed from: return, reason: not valid java name */
        public static Cdo m21214return() {
            return Cdo.m21231this();
        }

        /* renamed from: static, reason: not valid java name */
        public static Cdo m21215static(Cfor cfor) {
            return m21214return().m21232break(cfor);
        }

        /* renamed from: throw, reason: not valid java name */
        private Object[] m21217throw() {
            return new Object[]{this.f17235do, this.f17237if, this.f17236for, this.f17238new, this.f17239try};
        }

        /* renamed from: const, reason: not valid java name */
        public List<Integer> m21219const() {
            return this.f17237if;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Cfor) {
                return Arrays.equals(m21217throw(), ((Cfor) obj).m21217throw());
            }
            return false;
        }

        /* renamed from: extends, reason: not valid java name */
        public void m21220extends(int i, Cnative cnative) throws IOException {
            Iterator<Long> it = this.f17235do.iterator();
            while (it.hasNext()) {
                cnative.writeUInt64(i, it.next().longValue());
            }
            Iterator<Integer> it2 = this.f17237if.iterator();
            while (it2.hasNext()) {
                cnative.writeFixed32(i, it2.next().intValue());
            }
            Iterator<Long> it3 = this.f17236for.iterator();
            while (it3.hasNext()) {
                cnative.writeFixed64(i, it3.next().longValue());
            }
            Iterator<ByteString> it4 = this.f17238new.iterator();
            while (it4.hasNext()) {
                cnative.writeBytes(i, it4.next());
            }
            Iterator<t1> it5 = this.f17239try.iterator();
            while (it5.hasNext()) {
                cnative.Z(i, it5.next());
            }
        }

        /* renamed from: final, reason: not valid java name */
        public List<Long> m21221final() {
            return this.f17236for;
        }

        /* renamed from: finally, reason: not valid java name */
        public void m21222finally(int i, Writer writer) throws IOException {
            writer.writeInt64List(i, this.f17235do, false);
            writer.writeFixed32List(i, this.f17237if, false);
            writer.writeFixed64List(i, this.f17236for, false);
            writer.writeBytesList(i, this.f17238new);
            if (writer.fieldOrder() == Writer.Cdo.ASCENDING) {
                for (int i2 = 0; i2 < this.f17239try.size(); i2++) {
                    writer.writeStartGroup(i);
                    this.f17239try.get(i2).m21198native(writer);
                    writer.writeEndGroup(i);
                }
                return;
            }
            for (int size = this.f17239try.size() - 1; size >= 0; size--) {
                writer.writeEndGroup(i);
                this.f17239try.get(size).m21198native(writer);
                writer.writeStartGroup(i);
            }
        }

        public int hashCode() {
            return Arrays.hashCode(m21217throw());
        }

        /* renamed from: import, reason: not valid java name */
        public int m21223import(int i) {
            Iterator<Long> it = this.f17235do.iterator();
            int iM20882extends = 0;
            while (it.hasNext()) {
                iM20882extends += Cnative.u(i, it.next().longValue());
            }
            Iterator<Integer> it2 = this.f17237if.iterator();
            while (it2.hasNext()) {
                iM20882extends += Cnative.m20894public(i, it2.next().intValue());
            }
            Iterator<Long> it3 = this.f17236for.iterator();
            while (it3.hasNext()) {
                iM20882extends += Cnative.m20896static(i, it3.next().longValue());
            }
            Iterator<ByteString> it4 = this.f17238new.iterator();
            while (it4.hasNext()) {
                iM20882extends += Cnative.m20883final(i, it4.next());
            }
            Iterator<t1> it5 = this.f17239try.iterator();
            while (it5.hasNext()) {
                iM20882extends += Cnative.m20882extends(i, it5.next());
            }
            return iM20882extends;
        }

        /* renamed from: native, reason: not valid java name */
        public int m21224native(int i) {
            Iterator<ByteString> it = this.f17238new.iterator();
            int iE = 0;
            while (it.hasNext()) {
                iE += Cnative.e(i, it.next());
            }
            return iE;
        }

        /* renamed from: public, reason: not valid java name */
        public List<Long> m21225public() {
            return this.f17235do;
        }

        /* renamed from: super, reason: not valid java name */
        public List<t1> m21226super() {
            return this.f17239try;
        }

        /* renamed from: switch, reason: not valid java name */
        public ByteString m21227switch(int i) {
            try {
                ByteString.Ccase ccaseNewCodedBuilder = ByteString.newCodedBuilder(m21223import(i));
                m21220extends(i, ccaseNewCodedBuilder.m18398if());
                return ccaseNewCodedBuilder.m18397do();
            } catch (IOException e) {
                throw new RuntimeException("Serializing to a ByteString should never fail with an IOException", e);
            }
        }

        /* renamed from: throws, reason: not valid java name */
        public void m21228throws(int i, Cnative cnative) throws IOException {
            Iterator<ByteString> it = this.f17238new.iterator();
            while (it.hasNext()) {
                cnative.s0(i, it.next());
            }
        }

        /* renamed from: while, reason: not valid java name */
        public List<ByteString> m21229while() {
            return this.f17238new;
        }

        private Cfor() {
        }
    }

    /* renamed from: com.google.protobuf.t1$new, reason: invalid class name */
    public static final class Cnew extends com.google.protobuf.Cdo<t1> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public t1 parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            Cif cifM21191this = t1.m21191this();
            try {
                cifM21191this.mergeFrom(codedInputStream);
                return cifM21191this.buildPartial();
            } catch (n e) {
                throw e.setUnfinishedMessage(cifM21191this.buildPartial());
            } catch (IOException e2) {
                throw new n(e2).setUnfinishedMessage(cifM21191this.buildPartial());
            }
        }
    }

    private t1() {
        this.f17232do = null;
        this.f17233if = null;
    }

    /* renamed from: break, reason: not valid java name */
    public static Cif m21184break(t1 t1Var) {
        return m21191this().m21260public(t1Var);
    }

    /* renamed from: class, reason: not valid java name */
    public static t1 m21185class(ByteString byteString) throws n {
        return m21191this().mergeFrom(byteString).build();
    }

    /* renamed from: const, reason: not valid java name */
    public static t1 m21186const(CodedInputStream codedInputStream) throws IOException {
        return m21191this().mergeFrom(codedInputStream).build();
    }

    /* renamed from: final, reason: not valid java name */
    public static t1 m21188final(InputStream inputStream) throws IOException {
        return m21191this().mergeFrom(inputStream).build();
    }

    /* renamed from: for, reason: not valid java name */
    public static t1 m21189for() {
        return f17230for;
    }

    /* renamed from: super, reason: not valid java name */
    public static t1 m21190super(byte[] bArr) throws n {
        return m21191this().mergeFrom(bArr).build();
    }

    /* renamed from: this, reason: not valid java name */
    public static Cif m21191this() {
        return Cif.m21243this();
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Cnew getParserForType() {
        return f17231new;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif newBuilderForType() {
        return m21191this();
    }

    /* renamed from: else, reason: not valid java name */
    public int m21194else() {
        int iM21224native = 0;
        for (Map.Entry<Integer, Cfor> entry : this.f17232do.entrySet()) {
            iM21224native += entry.getValue().m21224native(entry.getKey().intValue());
        }
        return iM21224native;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t1) && this.f17232do.equals(((t1) obj).f17232do);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int iM21223import = 0;
        for (Map.Entry<Integer, Cfor> entry : this.f17232do.entrySet()) {
            iM21223import += entry.getValue().m21223import(entry.getKey().intValue());
        }
        return iM21223import;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m21195goto(int i) {
        return this.f17232do.containsKey(Integer.valueOf(i));
    }

    public int hashCode() {
        return this.f17232do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public Map<Integer, Cfor> m21196if() {
        return this.f17232do;
    }

    /* renamed from: import, reason: not valid java name */
    public void m21197import(Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.Cdo.DESCENDING) {
            for (Map.Entry<Integer, Cfor> entry : this.f17233if.entrySet()) {
                entry.getValue().m21207default(entry.getKey().intValue(), writer);
            }
            return;
        }
        for (Map.Entry<Integer, Cfor> entry2 : this.f17232do.entrySet()) {
            entry2.getValue().m21207default(entry2.getKey().intValue(), writer);
        }
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder
    public boolean isInitialized() {
        return true;
    }

    /* renamed from: native, reason: not valid java name */
    public void m21198native(Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.Cdo.DESCENDING) {
            for (Map.Entry<Integer, Cfor> entry : this.f17233if.entrySet()) {
                entry.getValue().m21222finally(entry.getKey().intValue(), writer);
            }
            return;
        }
        for (Map.Entry<Integer, Cfor> entry2 : this.f17232do.entrySet()) {
            entry2.getValue().m21222finally(entry2.getKey().intValue(), writer);
        }
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public t1 getDefaultInstanceForType() {
        return f17230for;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cif toBuilder() {
        return m21191this().m21260public(this);
    }

    @Override // com.google.protobuf.MessageLite
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            Cnative cnativeH = Cnative.H(bArr);
            writeTo(cnativeH);
            cnativeH.m20907else();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    @Override // com.google.protobuf.MessageLite
    public ByteString toByteString() {
        try {
            ByteString.Ccase ccaseNewCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(ccaseNewCodedBuilder.m18398if());
            return ccaseNewCodedBuilder.m18397do();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a ByteString threw an IOException (should never happen).", e);
        }
    }

    public String toString() {
        return j1.m20642instanceof().m20743throw(this);
    }

    /* renamed from: try, reason: not valid java name */
    public Cfor m21201try(int i) {
        Cfor cfor = this.f17232do.get(Integer.valueOf(i));
        return cfor == null ? Cfor.m21206class() : cfor;
    }

    /* renamed from: while, reason: not valid java name */
    public void m21202while(Cnative cnative) throws IOException {
        for (Map.Entry<Integer, Cfor> entry : this.f17232do.entrySet()) {
            entry.getValue().m21228throws(entry.getKey().intValue(), cnative);
        }
    }

    @Override // com.google.protobuf.MessageLite
    public void writeDelimitedTo(OutputStream outputStream) throws IOException {
        Cnative cnativeD = Cnative.D(outputStream);
        cnativeD.t0(getSerializedSize());
        writeTo(cnativeD);
        cnativeD.y();
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        for (Map.Entry<Integer, Cfor> entry : this.f17232do.entrySet()) {
            entry.getValue().m21220extends(entry.getKey().intValue(), cnative);
        }
    }

    /* renamed from: com.google.protobuf.t1$if, reason: invalid class name */
    public static final class Cif implements MessageLite.Builder {

        /* renamed from: do, reason: not valid java name */
        private Map<Integer, Cfor> f17241do;

        /* renamed from: for, reason: not valid java name */
        private Cfor.Cdo f17242for;

        /* renamed from: if, reason: not valid java name */
        private int f17243if;

        private Cif() {
        }

        /* renamed from: catch, reason: not valid java name */
        private Cfor.Cdo m21240catch(int i) {
            Cfor.Cdo cdo = this.f17242for;
            if (cdo != null) {
                int i2 = this.f17243if;
                if (i == i2) {
                    return cdo;
                }
                m21255if(i2, cdo.m21234else());
            }
            if (i == 0) {
                return null;
            }
            Cfor cfor = this.f17241do.get(Integer.valueOf(i));
            this.f17243if = i;
            Cfor.Cdo cdoM21214return = Cfor.m21214return();
            this.f17242for = cdoM21214return;
            if (cfor != null) {
                cdoM21214return.m21232break(cfor);
            }
            return this.f17242for;
        }

        /* renamed from: private, reason: not valid java name */
        private void m21242private() {
            this.f17241do = Collections.emptyMap();
            this.f17243if = 0;
            this.f17242for = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public static Cif m21243this() {
            Cif cif = new Cif();
            cif.m21242private();
            return cif;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public t1 getDefaultInstanceForType() {
            return t1.m21189for();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            m21242private();
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public boolean m21246class(int i) {
            if (i != 0) {
                return i == this.f17243if || this.f17241do.containsKey(Integer.valueOf(i));
            }
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }

        /* renamed from: const, reason: not valid java name */
        public Cif m21247const(int i, Cfor cfor) {
            if (i == 0) {
                throw new IllegalArgumentException("Zero is not a valid field number.");
            }
            if (m21246class(i)) {
                m21240catch(i).m21232break(cfor);
            } else {
                m21255if(i, cfor);
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(byte[] bArr, int i, int i2, Cimplements cimplements) throws n {
            return mergeFrom(bArr, i, i2);
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m21249else(int i) {
            if (i == 0) {
                throw new IllegalArgumentException("Zero is not a valid field number.");
            }
            if (this.f17242for != null && this.f17243if == i) {
                this.f17242for = null;
                this.f17243if = 0;
            }
            if (this.f17241do.containsKey(Integer.valueOf(i))) {
                this.f17241do.remove(Integer.valueOf(i));
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(byte[] bArr, Cimplements cimplements) throws n {
            return mergeFrom(bArr);
        }

        /* renamed from: final, reason: not valid java name */
        public boolean m21251final(int i, CodedInputStream codedInputStream) throws IOException {
            int iM19962do = c2.m19962do(i);
            int iM19964if = c2.m19964if(i);
            if (iM19964if == 0) {
                m21240catch(iM19962do).m21233case(codedInputStream.mo18446volatile());
                return true;
            }
            if (iM19964if == 1) {
                m21240catch(iM19962do).m21235for(codedInputStream.mo18433package());
                return true;
            }
            if (iM19964if == 2) {
                m21240catch(iM19962do).m21239try(codedInputStream.mo18443throws());
                return true;
            }
            if (iM19964if == 3) {
                Cif cifM21191this = t1.m21191this();
                codedInputStream.mo18421continue(iM19962do, cifM21191this, Cprotected.m20974static());
                m21240catch(iM19962do).m21238new(cifM21191this.build());
                return true;
            }
            if (iM19964if == 4) {
                return false;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            m21240catch(iM19962do).m21237if(codedInputStream.mo18426finally());
            return true;
        }

        /* renamed from: finally, reason: not valid java name */
        public Cif m21252finally(int i, ByteString byteString) {
            if (i == 0) {
                throw new IllegalArgumentException("Zero is not a valid field number.");
            }
            m21240catch(i).m21239try(byteString);
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Map<Integer, Cfor> m21253for() {
            m21240catch(0);
            return Collections.unmodifiableMap(this.f17241do);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Cif m21269clone() {
            m21240catch(0);
            return t1.m21191this().m21260public(new t1(this.f17241do, Collections.unmodifiableMap(((TreeMap) this.f17241do).descendingMap())));
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m21255if(int i, Cfor cfor) {
            if (i == 0) {
                throw new IllegalArgumentException("Zero is not a valid field number.");
            }
            if (this.f17242for != null && this.f17243if == i) {
                this.f17242for = null;
                this.f17243if = 0;
            }
            if (this.f17241do.isEmpty()) {
                this.f17241do = new TreeMap();
            }
            this.f17241do.put(Integer.valueOf(i), cfor);
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            return mergeFrom(codedInputStream);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream) throws IOException {
            int i = inputStream.read();
            if (i == -1) {
                return false;
            }
            mergeFrom(new AbstractMessageLite.Cdo.C0156do(inputStream, CodedInputStream.b(i, inputStream)));
            return true;
        }

        @Override // com.google.protobuf.MessageLite.Builder
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(MessageLite messageLite) {
            if (messageLite instanceof t1) {
                return m21260public((t1) messageLite);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public t1 build() {
            t1 t1Var;
            m21240catch(0);
            if (this.f17241do.isEmpty()) {
                t1Var = t1.m21189for();
            } else {
                t1Var = new t1(Collections.unmodifiableMap(this.f17241do), Collections.unmodifiableMap(((TreeMap) this.f17241do).descendingMap()));
            }
            this.f17241do = null;
            return t1Var;
        }

        /* renamed from: package, reason: not valid java name */
        public Cif m21259package(int i, int i2) {
            if (i == 0) {
                throw new IllegalArgumentException("Zero is not a valid field number.");
            }
            m21240catch(i).m21233case(i2);
            return this;
        }

        /* renamed from: public, reason: not valid java name */
        public Cif m21260public(t1 t1Var) {
            if (t1Var != t1.m21189for()) {
                for (Map.Entry entry : t1Var.f17232do.entrySet()) {
                    m21247const(((Integer) entry.getKey()).intValue(), (Cfor) entry.getValue());
                }
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(InputStream inputStream) throws IOException {
            CodedInputStream codedInputStreamM18408break = CodedInputStream.m18408break(inputStream);
            mergeFrom(codedInputStreamM18408break);
            codedInputStreamM18408break.mo18423do(0);
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return mergeFrom(inputStream);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(ByteString byteString) throws n {
            try {
                CodedInputStream codedInputStreamNewCodedInput = byteString.newCodedInput();
                mergeFrom(codedInputStreamNewCodedInput);
                codedInputStreamNewCodedInput.mo18423do(0);
                return this;
            } catch (n e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(byte[] bArr) throws n {
            try {
                CodedInputStream codedInputStreamM18417throw = CodedInputStream.m18417throw(bArr);
                mergeFrom(codedInputStreamM18417throw);
                codedInputStreamM18417throw.mo18423do(0);
                return this;
            } catch (n e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(ByteString byteString, Cimplements cimplements) throws n {
            return mergeFrom(byteString);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(byte[] bArr, int i, int i2) throws n {
            try {
                CodedInputStream codedInputStreamM18418while = CodedInputStream.m18418while(bArr, i, i2);
                mergeFrom(codedInputStreamM18418while);
                codedInputStreamM18418while.mo18423do(0);
                return this;
            } catch (n e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public t1 buildPartial() {
            return build();
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mergeFrom(CodedInputStream codedInputStream) throws IOException {
            int iL;
            do {
                iL = codedInputStream.l();
                if (iL == 0) {
                    break;
                }
            } while (m21251final(iL, codedInputStream));
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
            return mergeDelimitedFrom(inputStream);
        }
    }

    public t1(Map<Integer, Cfor> map, Map<Integer, Cfor> map2) {
        this.f17232do = map;
        this.f17233if = map2;
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(OutputStream outputStream) throws IOException {
        Cnative cnativeD = Cnative.D(outputStream);
        writeTo(cnativeD);
        cnativeD.y();
    }
}
