package com.google.protobuf;

import com.google.protobuf.Cthis;
import com.google.protobuf.FieldSet;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.c2;
import com.google.protobuf.q;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
final class f0<T> implements Schema<T> {

    /* renamed from: do, reason: not valid java name */
    private final MessageLite f16898do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f16899for;

    /* renamed from: if, reason: not valid java name */
    private final s1<?, ?> f16900if;

    /* renamed from: new, reason: not valid java name */
    private final Cinstanceof<?> f16901new;

    private f0(s1<?, ?> s1Var, Cinstanceof<?> cinstanceof, MessageLite messageLite) {
        this.f16900if = s1Var;
        this.f16899for = cinstanceof.mo19681try(messageLite);
        this.f16901new = cinstanceof;
        this.f16898do = messageLite;
    }

    /* renamed from: do, reason: not valid java name */
    private <UT, UB> int m20405do(s1<UT, UB> s1Var, T t) {
        return s1Var.mo21149this(s1Var.mo21139else(t));
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> f0<T> m20406for(s1<?, ?> s1Var, Cinstanceof<?> cinstanceof, MessageLite messageLite) {
        return new f0<>(s1Var, cinstanceof, messageLite);
    }

    /* renamed from: if, reason: not valid java name */
    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> void m20407if(s1<UT, UB> s1Var, Cinstanceof<ET> cinstanceof, T t, Reader reader, Cimplements cimplements) throws IOException {
        UB ubMo21134case = s1Var.mo21134case(t);
        FieldSet<ET> fieldSetMo19679new = cinstanceof.mo19679new(t);
        while (reader.getFieldNumber() != Integer.MAX_VALUE) {
            try {
                if (!m20408new(reader, cimplements, cinstanceof, fieldSetMo19679new, s1Var, ubMo21134case)) {
                    return;
                }
            } finally {
                s1Var.mo21148super(t, ubMo21134case);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new, reason: not valid java name */
    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> boolean m20408new(Reader reader, Cimplements cimplements, Cinstanceof<ET> cinstanceof, FieldSet<ET> fieldSet, s1<UT, UB> s1Var, UB ub) throws IOException {
        int tag = reader.getTag();
        if (tag != c2.f16700while) {
            if (c2.m19964if(tag) != 2) {
                return reader.skipField();
            }
            Object objMo19678if = cinstanceof.mo19678if(cimplements, this.f16898do, c2.m19962do(tag));
            if (objMo19678if == null) {
                return s1Var.m21137const(ub, reader);
            }
            cinstanceof.mo19677goto(reader, objMo19678if, cimplements, fieldSet);
            return true;
        }
        int uInt32 = 0;
        Object objMo19678if2 = null;
        ByteString bytes = null;
        while (reader.getFieldNumber() != Integer.MAX_VALUE) {
            int tag2 = reader.getTag();
            if (tag2 == c2.f16693native) {
                uInt32 = reader.readUInt32();
                objMo19678if2 = cinstanceof.mo19678if(cimplements, this.f16898do, uInt32);
            } else if (tag2 == c2.f16695public) {
                if (objMo19678if2 != null) {
                    cinstanceof.mo19677goto(reader, objMo19678if2, cimplements, fieldSet);
                } else {
                    bytes = reader.readBytes();
                }
            } else if (!reader.skipField()) {
                break;
            }
        }
        if (reader.getTag() != c2.f16692import) {
            throw n.invalidEndTag();
        }
        if (bytes != null) {
            if (objMo19678if2 != null) {
                cinstanceof.mo19680this(bytes, objMo19678if2, cimplements, fieldSet);
            } else {
                s1Var.mo21146new(ub, uInt32, bytes);
            }
        }
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    private <UT, UB> void m20409try(s1<UT, UB> s1Var, T t, Writer writer) throws IOException {
        s1Var.mo21145native(s1Var.mo21139else(t), writer);
    }

    @Override // com.google.protobuf.Schema
    public boolean equals(T t, T t2) {
        if (!this.f16900if.mo21139else(t).equals(this.f16900if.mo21139else(t2))) {
            return false;
        }
        if (this.f16899for) {
            return this.f16901new.mo19676for(t).equals(this.f16901new.mo19676for(t2));
        }
        return true;
    }

    @Override // com.google.protobuf.Schema
    public int getSerializedSize(T t) {
        int iM20405do = m20405do(this.f16900if, t) + 0;
        return this.f16899for ? iM20405do + this.f16901new.mo19676for(t).m19396static() : iM20405do;
    }

    @Override // com.google.protobuf.Schema
    public int hashCode(T t) {
        int iHashCode = this.f16900if.mo21139else(t).hashCode();
        return this.f16899for ? (iHashCode * 53) + this.f16901new.mo19676for(t).hashCode() : iHashCode;
    }

    @Override // com.google.protobuf.Schema
    public final boolean isInitialized(T t) {
        return this.f16901new.mo19676for(t).m19385continue();
    }

    @Override // com.google.protobuf.Schema
    public void makeImmutable(T t) {
        this.f16900if.mo21133break(t);
        this.f16901new.mo19672case(t);
    }

    @Override // com.google.protobuf.Schema
    public void mergeFrom(T t, T t2) {
        y0.m21634transient(this.f16900if, t, t2);
        if (this.f16899for) {
            y0.m21618interface(this.f16901new, t, t2);
        }
    }

    @Override // com.google.protobuf.Schema
    public T newInstance() {
        return (T) this.f16898do.newBuilderForType().buildPartial();
    }

    @Override // com.google.protobuf.Schema
    public void writeTo(T t, Writer writer) throws IOException {
        Iterator itM19390interface = this.f16901new.mo19676for(t).m19390interface();
        while (itM19390interface.hasNext()) {
            Map.Entry entry = (Map.Entry) itM19390interface.next();
            FieldSet.FieldDescriptorLite fieldDescriptorLite = (FieldSet.FieldDescriptorLite) entry.getKey();
            if (fieldDescriptorLite.getLiteJavaType() != c2.Cfor.MESSAGE || fieldDescriptorLite.isRepeated() || fieldDescriptorLite.isPacked()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof q.Cif) {
                writer.writeMessageSetItem(fieldDescriptorLite.getNumber(), ((q.Cif) entry).m21001do().m21039final());
            } else {
                writer.writeMessageSetItem(fieldDescriptorLite.getNumber(), entry.getValue());
            }
        }
        m20409try(this.f16900if, t, writer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00cb A[EDGE_INSN: B:59:0x00cb->B:34:0x00cb BREAK  A[LOOP:1: B:18:0x006d->B:62:0x006d], SYNTHETIC] */
    @Override // com.google.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mergeFrom(T t, byte[] bArr, int i, int i2, Cthis.Cif cif) throws IOException {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t;
        u1 u1VarM21420final = generatedMessageLite.f16465do;
        if (u1VarM21420final == u1.m21421for()) {
            u1VarM21420final = u1.m21420final();
            generatedMessageLite.f16465do = u1VarM21420final;
        }
        FieldSet<GeneratedMessageLite.Ccase> fieldSetG = ((GeneratedMessageLite.Ctry) t).g();
        GeneratedMessageLite.Celse celse = null;
        while (i < i2) {
            int iM21295protected = Cthis.m21295protected(bArr, i, cif);
            int i3 = cif.f17245do;
            if (i3 == c2.f16700while) {
                int i4 = 0;
                ByteString byteString = null;
                while (iM21295protected < i2) {
                    iM21295protected = Cthis.m21295protected(bArr, iM21295protected, cif);
                    int i5 = cif.f17245do;
                    int iM19962do = c2.m19962do(i5);
                    int iM19964if = c2.m19964if(i5);
                    if (iM19962do != 2) {
                        if (iM19962do == 3) {
                            if (celse != null) {
                                iM21295protected = Cthis.m21304throw(q0.m21002do().m21011this(celse.mo19450for().getClass()), bArr, iM21295protected, i2, cif);
                                fieldSetG.b(celse.f16476new, cif.f17246for);
                            } else if (iM19964if == 2) {
                                iM21295protected = Cthis.m21286if(bArr, iM21295protected, cif);
                                byteString = (ByteString) cif.f17246for;
                            }
                        }
                        if (i5 != c2.f16692import) {
                            break;
                        } else {
                            iM21295protected = Cthis.a(i5, bArr, iM21295protected, i2, cif);
                        }
                    } else if (iM19964if == 0) {
                        iM21295protected = Cthis.m21295protected(bArr, iM21295protected, cif);
                        i4 = cif.f17245do;
                        celse = (GeneratedMessageLite.Celse) this.f16901new.mo19678if(cif.f17248new, this.f16898do, i4);
                    } else if (i5 != c2.f16692import) {
                    }
                }
                if (byteString != null) {
                    u1VarM21420final.m21438while(c2.m19963for(i4, 2), byteString);
                }
                i = iM21295protected;
            } else if (c2.m19964if(i3) == 2) {
                GeneratedMessageLite.Celse celse2 = (GeneratedMessageLite.Celse) this.f16901new.mo19678if(cif.f17248new, this.f16898do, c2.m19962do(i3));
                if (celse2 != null) {
                    i = Cthis.m21304throw(q0.m21002do().m21011this(celse2.mo19450for().getClass()), bArr, iM21295protected, i2, cif);
                    fieldSetG.b(celse2.f16476new, cif.f17246for);
                } else {
                    i = Cthis.m21308volatile(i3, bArr, iM21295protected, i2, u1VarM21420final, cif);
                }
                celse = celse2;
            } else {
                i = Cthis.a(i3, bArr, iM21295protected, i2, cif);
            }
        }
        if (i != i2) {
            throw n.parseFailure();
        }
    }

    @Override // com.google.protobuf.Schema
    public void mergeFrom(T t, Reader reader, Cimplements cimplements) throws IOException {
        m20407if(this.f16900if, this.f16901new, t, reader, cimplements);
    }
}
