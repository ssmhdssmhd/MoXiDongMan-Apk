package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Internal;
import com.google.protobuf.f1;
import com.google.protobuf.t1;
import com.google.protobuf.u;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class b2 extends GeneratedMessageV3 implements ValueOrBuilder {
    public static final int BOOL_VALUE_FIELD_NUMBER = 4;
    public static final int LIST_VALUE_FIELD_NUMBER = 6;
    public static final int NULL_VALUE_FIELD_NUMBER = 1;
    public static final int NUMBER_VALUE_FIELD_NUMBER = 2;
    public static final int STRING_VALUE_FIELD_NUMBER = 3;
    public static final int STRUCT_VALUE_FIELD_NUMBER = 5;

    /* renamed from: do, reason: not valid java name */
    private static final b2 f16638do = new b2();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<b2> f16639if = new Cdo();
    private static final long serialVersionUID = 0;
    private int kindCase_;
    private Object kind_;
    private byte memoizedIsInitialized;

    /* renamed from: com.google.protobuf.b2$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<b2> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public b2 parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new b2(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.b2$for, reason: invalid class name */
    public static final class Cfor extends GeneratedMessageV3.Cif<Cfor> implements ValueOrBuilder {

        /* renamed from: do, reason: not valid java name */
        private int f16640do;

        /* renamed from: for, reason: not valid java name */
        private a1<f1, f1.Cif, StructOrBuilder> f16641for;

        /* renamed from: if, reason: not valid java name */
        private Object f16642if;

        /* renamed from: new, reason: not valid java name */
        private a1<u, u.Cif, ListValueOrBuilder> f16643new;

        public /* synthetic */ Cfor(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        public static final Descriptors.Cif getDescriptor() {
            return g1.f16948try;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        /* renamed from: native, reason: not valid java name */
        private a1<f1, f1.Cif, StructOrBuilder> m19835native() {
            if (this.f16641for == null) {
                if (this.f16640do != 5) {
                    this.f16642if = f1.getDefaultInstance();
                }
                this.f16641for = new a1<>((f1) this.f16642if, getParentForChildren(), isClean());
                this.f16642if = null;
            }
            this.f16640do = 5;
            onChanged();
            return this.f16641for;
        }

        /* renamed from: while, reason: not valid java name */
        private a1<u, u.Cif, ListValueOrBuilder> m19836while() {
            if (this.f16643new == null) {
                if (this.f16640do != 6) {
                    this.f16642if = u.getDefaultInstance();
                }
                this.f16643new = new a1<>((u) this.f16642if, getParentForChildren(), isClean());
                this.f16642if = null;
            }
            this.f16640do = 6;
            onChanged();
            return this.f16643new;
        }

        /* renamed from: abstract, reason: not valid java name */
        public Cfor m19837abstract(m0 m0Var) {
            Objects.requireNonNull(m0Var);
            this.f16640do = 1;
            this.f16642if = Integer.valueOf(m0Var.getNumber());
            onChanged();
            return this;
        }

        /* renamed from: break, reason: not valid java name */
        public Cfor m19838break() {
            if (this.f16640do == 2) {
                this.f16640do = 0;
                this.f16642if = null;
                onChanged();
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor clearField(Descriptors.Celse celse) {
            return (Cfor) super.clearField(celse);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor clearOneof(Descriptors.Cbreak cbreak) {
            return (Cfor) super.clearOneof(cbreak);
        }

        /* renamed from: class, reason: not valid java name */
        public Cfor m19841class() {
            if (this.f16640do == 3) {
                this.f16640do = 0;
                this.f16642if = null;
                onChanged();
            }
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cfor m19842const() {
            a1<f1, f1.Cif, StructOrBuilder> a1Var = this.f16641for;
            if (a1Var != null) {
                if (this.f16640do == 5) {
                    this.f16640do = 0;
                    this.f16642if = null;
                }
                a1Var.m19689if();
            } else if (this.f16640do == 5) {
                this.f16640do = 0;
                this.f16642if = null;
                onChanged();
            }
            return this;
        }

        /* renamed from: continue, reason: not valid java name */
        public Cfor m19843continue(int i) {
            this.f16640do = 1;
            this.f16642if = Integer.valueOf(i);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cfor mergeUnknownFields(t1 t1Var) {
            return (Cfor) super.mergeUnknownFields(t1Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cfor) super.addRepeatedField(celse, obj);
        }

        /* renamed from: else, reason: not valid java name */
        public Cfor m19846else() {
            this.f16640do = 0;
            this.f16642if = null;
            onChanged();
            return this;
        }

        /* renamed from: extends, reason: not valid java name */
        public Cfor m19847extends(boolean z) {
            this.f16640do = 4;
            this.f16642if = Boolean.valueOf(z);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor mo18392clone() {
            return (Cfor) super.mo18392clone();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: finally, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor setField(Descriptors.Celse celse, Object obj) {
            return (Cfor) super.setField(celse, obj);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public b2 buildPartial() {
            b2 b2Var = new b2(this, (Cdo) null);
            if (this.f16640do == 1) {
                b2Var.kind_ = this.f16642if;
            }
            if (this.f16640do == 2) {
                b2Var.kind_ = this.f16642if;
            }
            if (this.f16640do == 3) {
                b2Var.kind_ = this.f16642if;
            }
            if (this.f16640do == 4) {
                b2Var.kind_ = this.f16642if;
            }
            if (this.f16640do == 5) {
                a1<f1, f1.Cif, StructOrBuilder> a1Var = this.f16641for;
                if (a1Var == null) {
                    b2Var.kind_ = this.f16642if;
                } else {
                    b2Var.kind_ = a1Var.m19686do();
                }
            }
            if (this.f16640do == 6) {
                a1<u, u.Cif, ListValueOrBuilder> a1Var2 = this.f16643new;
                if (a1Var2 == null) {
                    b2Var.kind_ = this.f16642if;
                } else {
                    b2Var.kind_ = a1Var2.m19686do();
                }
            }
            b2Var.kindCase_ = this.f16640do;
            onBuilt();
            return b2Var;
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public boolean getBoolValue() {
            if (this.f16640do == 4) {
                return ((Boolean) this.f16642if).booleanValue();
            }
            return false;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return g1.f16948try;
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public Cnew getKindCase() {
            return Cnew.forNumber(this.f16640do);
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public u getListValue() {
            a1<u, u.Cif, ListValueOrBuilder> a1Var = this.f16643new;
            return a1Var == null ? this.f16640do == 6 ? (u) this.f16642if : u.getDefaultInstance() : this.f16640do == 6 ? (u) a1Var.m19692try() : u.getDefaultInstance();
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public ListValueOrBuilder getListValueOrBuilder() {
            a1<u, u.Cif, ListValueOrBuilder> a1Var;
            int i = this.f16640do;
            return (i != 6 || (a1Var = this.f16643new) == null) ? i == 6 ? (u) this.f16642if : u.getDefaultInstance() : (ListValueOrBuilder) a1Var.m19685case();
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public m0 getNullValue() {
            if (this.f16640do != 1) {
                return m0.NULL_VALUE;
            }
            m0 m0VarValueOf = m0.valueOf(((Integer) this.f16642if).intValue());
            return m0VarValueOf == null ? m0.UNRECOGNIZED : m0VarValueOf;
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public int getNullValueValue() {
            if (this.f16640do == 1) {
                return ((Integer) this.f16642if).intValue();
            }
            return 0;
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public double getNumberValue() {
            if (this.f16640do == 2) {
                return ((Double) this.f16642if).doubleValue();
            }
            return 0.0d;
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public String getStringValue() {
            String str = this.f16640do == 3 ? this.f16642if : "";
            if (str instanceof String) {
                return (String) str;
            }
            String stringUtf8 = ((ByteString) str).toStringUtf8();
            if (this.f16640do == 3) {
                this.f16642if = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public ByteString getStringValueBytes() {
            String str = this.f16640do == 3 ? this.f16642if : "";
            if (!(str instanceof String)) {
                return (ByteString) str;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.f16640do == 3) {
                this.f16642if = byteStringCopyFromUtf8;
            }
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public f1 getStructValue() {
            a1<f1, f1.Cif, StructOrBuilder> a1Var = this.f16641for;
            return a1Var == null ? this.f16640do == 5 ? (f1) this.f16642if : f1.getDefaultInstance() : this.f16640do == 5 ? (f1) a1Var.m19692try() : f1.getDefaultInstance();
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public StructOrBuilder getStructValueOrBuilder() {
            a1<f1, f1.Cif, StructOrBuilder> a1Var;
            int i = this.f16640do;
            return (i != 5 || (a1Var = this.f16641for) == null) ? i == 5 ? (f1) this.f16642if : f1.getDefaultInstance() : (StructOrBuilder) a1Var.m19685case();
        }

        /* renamed from: goto, reason: not valid java name */
        public Cfor m19851goto() {
            a1<u, u.Cif, ListValueOrBuilder> a1Var = this.f16643new;
            if (a1Var != null) {
                if (this.f16640do == 6) {
                    this.f16640do = 0;
                    this.f16642if = null;
                }
                a1Var.m19689if();
            } else if (this.f16640do == 6) {
                this.f16640do = 0;
                this.f16642if = null;
                onChanged();
            }
            return this;
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public boolean hasListValue() {
            return this.f16640do == 6;
        }

        @Override // com.google.protobuf.ValueOrBuilder
        public boolean hasStructValue() {
            return this.f16640do == 5;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public b2 build() {
            b2 b2VarBuildPartial = buildPartial();
            if (b2VarBuildPartial.isInitialized()) {
                return b2VarBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) b2VarBuildPartial);
        }

        /* renamed from: implements, reason: not valid java name */
        public Cfor m19853implements(f1 f1Var) {
            a1<f1, f1.Cif, StructOrBuilder> a1Var = this.f16641for;
            if (a1Var == null) {
                Objects.requireNonNull(f1Var);
                this.f16642if = f1Var;
                onChanged();
            } else {
                a1Var.m19691this(f1Var);
            }
            this.f16640do = 5;
            return this;
        }

        /* renamed from: import, reason: not valid java name */
        public f1.Cif m19854import() {
            return (f1.Cif) m19835native().m19690new();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: instanceof, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Cfor setUnknownFields(t1 t1Var) {
            return (Cfor) super.setUnknownFields(t1Var);
        }

        /* renamed from: interface, reason: not valid java name */
        public Cfor m19856interface(String str) {
            Objects.requireNonNull(str);
            this.f16640do = 3;
            this.f16642if = str;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return g1.f16940case.m19575new(b2.class, Cfor.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor clear() {
            super.clear();
            this.f16640do = 0;
            this.f16642if = null;
            return this;
        }

        /* renamed from: package, reason: not valid java name */
        public Cfor m19858package(u.Cif cif) {
            a1<u, u.Cif, ListValueOrBuilder> a1Var = this.f16643new;
            if (a1Var == null) {
                this.f16642if = cif.build();
                onChanged();
            } else {
                a1Var.m19691this(cif.build());
            }
            this.f16640do = 6;
            return this;
        }

        /* renamed from: private, reason: not valid java name */
        public Cfor m19859private(u uVar) {
            a1<u, u.Cif, ListValueOrBuilder> a1Var = this.f16643new;
            if (a1Var == null) {
                Objects.requireNonNull(uVar);
                this.f16642if = uVar;
                onChanged();
            } else {
                a1Var.m19691this(uVar);
            }
            this.f16640do = 6;
            return this;
        }

        /* renamed from: protected, reason: not valid java name */
        public Cfor m19860protected(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16640do = 3;
            this.f16642if = byteString;
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cfor mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            b2 b2Var = null;
            try {
                try {
                    b2 b2Var2 = (b2) b2.f16639if.parsePartialFrom(codedInputStream, cimplements);
                    if (b2Var2 != null) {
                        m19863static(b2Var2);
                    }
                    return this;
                } catch (n e) {
                    b2 b2Var3 = (b2) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        b2Var = b2Var3;
                        if (b2Var != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (b2Var != null) {
                    m19863static(b2Var);
                }
                throw th;
            }
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor mergeFrom(Message message) {
            if (message instanceof b2) {
                return m19863static((b2) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: static, reason: not valid java name */
        public Cfor m19863static(b2 b2Var) {
            if (b2Var == b2.getDefaultInstance()) {
                return this;
            }
            switch (Cif.f16644do[b2Var.getKindCase().ordinal()]) {
                case 1:
                    m19843continue(b2Var.getNullValueValue());
                    break;
                case 2:
                    m19864strictfp(b2Var.getNumberValue());
                    break;
                case 3:
                    this.f16640do = 3;
                    this.f16642if = b2Var.kind_;
                    onChanged();
                    break;
                case 4:
                    m19847extends(b2Var.getBoolValue());
                    break;
                case 5:
                    m19869throws(b2Var.getStructValue());
                    break;
                case 6:
                    m19866switch(b2Var.getListValue());
                    break;
            }
            mergeUnknownFields(b2Var.unknownFields);
            onChanged();
            return this;
        }

        /* renamed from: strictfp, reason: not valid java name */
        public Cfor m19864strictfp(double d) {
            this.f16640do = 2;
            this.f16642if = Double.valueOf(d);
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public b2 getDefaultInstanceForType() {
            return b2.getDefaultInstance();
        }

        /* renamed from: switch, reason: not valid java name */
        public Cfor m19866switch(u uVar) {
            a1<u, u.Cif, ListValueOrBuilder> a1Var = this.f16643new;
            if (a1Var == null) {
                if (this.f16640do != 6 || this.f16642if == u.getDefaultInstance()) {
                    this.f16642if = uVar;
                } else {
                    this.f16642if = u.newBuilder((u) this.f16642if).m21380static(uVar).buildPartial();
                }
                onChanged();
            } else {
                if (this.f16640do == 6) {
                    a1Var.m19687else(uVar);
                }
                this.f16643new.m19691this(uVar);
            }
            this.f16640do = 6;
            return this;
        }

        /* renamed from: this, reason: not valid java name */
        public Cfor m19867this() {
            if (this.f16640do == 1) {
                this.f16640do = 0;
                this.f16642if = null;
                onChanged();
            }
            return this;
        }

        /* renamed from: throw, reason: not valid java name */
        public u.Cif m19868throw() {
            return (u.Cif) m19836while().m19690new();
        }

        /* renamed from: throws, reason: not valid java name */
        public Cfor m19869throws(f1 f1Var) {
            a1<f1, f1.Cif, StructOrBuilder> a1Var = this.f16641for;
            if (a1Var == null) {
                if (this.f16640do != 5 || this.f16642if == f1.getDefaultInstance()) {
                    this.f16642if = f1Var;
                } else {
                    this.f16642if = f1.newBuilder((f1) this.f16642if).m20429super(f1Var).buildPartial();
                }
                onChanged();
            } else {
                if (this.f16640do == 5) {
                    a1Var.m19687else(f1Var);
                }
                this.f16641for.m19691this(f1Var);
            }
            this.f16640do = 5;
            return this;
        }

        /* renamed from: transient, reason: not valid java name */
        public Cfor m19870transient(f1.Cif cif) {
            a1<f1, f1.Cif, StructOrBuilder> a1Var = this.f16641for;
            if (a1Var == null) {
                this.f16642if = cif.build();
                onChanged();
            } else {
                a1Var.m19691this(cif.build());
            }
            this.f16640do = 5;
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cfor m19871try() {
            if (this.f16640do == 4) {
                this.f16640do = 0;
                this.f16642if = null;
                onChanged();
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: volatile, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfor setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cfor) super.setRepeatedField(celse, i, obj);
        }

        public /* synthetic */ Cfor(Cdo cdo) {
            this();
        }

        private Cfor() {
            this.f16640do = 0;
            maybeForceBuilderInitialization();
        }

        private Cfor(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f16640do = 0;
            maybeForceBuilderInitialization();
        }
    }

    /* renamed from: com.google.protobuf.b2$if, reason: invalid class name */
    public static /* synthetic */ class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16644do;

        static {
            int[] iArr = new int[Cnew.values().length];
            f16644do = iArr;
            try {
                iArr[Cnew.NULL_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16644do[Cnew.NUMBER_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16644do[Cnew.STRING_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16644do[Cnew.BOOL_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16644do[Cnew.STRUCT_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16644do[Cnew.LIST_VALUE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16644do[Cnew.KIND_NOT_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.google.protobuf.b2$new, reason: invalid class name */
    public enum Cnew implements Internal.EnumLite, AbstractMessageLite.InternalOneOfEnum {
        NULL_VALUE(1),
        NUMBER_VALUE(2),
        STRING_VALUE(3),
        BOOL_VALUE(4),
        STRUCT_VALUE(5),
        LIST_VALUE(6),
        KIND_NOT_SET(0);

        private final int value;

        Cnew(int i) {
            this.value = i;
        }

        public static Cnew forNumber(int i) {
            switch (i) {
                case 0:
                    return KIND_NOT_SET;
                case 1:
                    return NULL_VALUE;
                case 2:
                    return NUMBER_VALUE;
                case 3:
                    return STRING_VALUE;
                case 4:
                    return BOOL_VALUE;
                case 5:
                    return STRUCT_VALUE;
                case 6:
                    return LIST_VALUE;
                default:
                    return null;
            }
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static Cnew valueOf(int i) {
            return forNumber(i);
        }
    }

    public /* synthetic */ b2(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static b2 getDefaultInstance() {
        return f16638do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return g1.f16948try;
    }

    public static Cfor newBuilder() {
        return f16638do.toBuilder();
    }

    public static b2 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (b2) GeneratedMessageV3.parseDelimitedWithIOException(f16639if, inputStream);
    }

    public static b2 parseFrom(ByteBuffer byteBuffer) throws n {
        return f16639if.parseFrom(byteBuffer);
    }

    public static Parser<b2> parser() {
        return f16639if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b2)) {
            return super.equals(obj);
        }
        b2 b2Var = (b2) obj;
        if (!getKindCase().equals(b2Var.getKindCase())) {
            return false;
        }
        switch (this.kindCase_) {
            case 1:
                if (getNullValueValue() != b2Var.getNullValueValue()) {
                    return false;
                }
                break;
            case 2:
                if (Double.doubleToLongBits(getNumberValue()) != Double.doubleToLongBits(b2Var.getNumberValue())) {
                    return false;
                }
                break;
            case 3:
                if (!getStringValue().equals(b2Var.getStringValue())) {
                    return false;
                }
                break;
            case 4:
                if (getBoolValue() != b2Var.getBoolValue()) {
                    return false;
                }
                break;
            case 5:
                if (!getStructValue().equals(b2Var.getStructValue())) {
                    return false;
                }
                break;
            case 6:
                if (!getListValue().equals(b2Var.getListValue())) {
                    return false;
                }
                break;
        }
        return this.unknownFields.equals(b2Var.unknownFields);
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public boolean getBoolValue() {
        if (this.kindCase_ == 4) {
            return ((Boolean) this.kind_).booleanValue();
        }
        return false;
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public Cnew getKindCase() {
        return Cnew.forNumber(this.kindCase_);
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public u getListValue() {
        return this.kindCase_ == 6 ? (u) this.kind_ : u.getDefaultInstance();
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public ListValueOrBuilder getListValueOrBuilder() {
        return this.kindCase_ == 6 ? (u) this.kind_ : u.getDefaultInstance();
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public m0 getNullValue() {
        if (this.kindCase_ != 1) {
            return m0.NULL_VALUE;
        }
        m0 m0VarValueOf = m0.valueOf(((Integer) this.kind_).intValue());
        return m0VarValueOf == null ? m0.UNRECOGNIZED : m0VarValueOf;
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public int getNullValueValue() {
        if (this.kindCase_ == 1) {
            return ((Integer) this.kind_).intValue();
        }
        return 0;
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public double getNumberValue() {
        if (this.kindCase_ == 2) {
            return ((Double) this.kind_).doubleValue();
        }
        return 0.0d;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<b2> getParserForType() {
        return f16639if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iM20887import = this.kindCase_ == 1 ? 0 + Cnative.m20887import(1, ((Integer) this.kind_).intValue()) : 0;
        if (this.kindCase_ == 2) {
            iM20887import += Cnative.m20902throw(2, ((Double) this.kind_).doubleValue());
        }
        if (this.kindCase_ == 3) {
            iM20887import += GeneratedMessageV3.computeStringSize(3, this.kind_);
        }
        if (this.kindCase_ == 4) {
            iM20887import += Cnative.m20885goto(4, ((Boolean) this.kind_).booleanValue());
        }
        if (this.kindCase_ == 5) {
            iM20887import += Cnative.m20900synchronized(5, (f1) this.kind_);
        }
        if (this.kindCase_ == 6) {
            iM20887import += Cnative.m20900synchronized(6, (u) this.kind_);
        }
        int serializedSize = iM20887import + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public String getStringValue() {
        String str = this.kindCase_ == 3 ? this.kind_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.kindCase_ == 3) {
            this.kind_ = stringUtf8;
        }
        return stringUtf8;
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public ByteString getStringValueBytes() {
        String str = this.kindCase_ == 3 ? this.kind_ : "";
        if (!(str instanceof String)) {
            return (ByteString) str;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) str);
        if (this.kindCase_ == 3) {
            this.kind_ = byteStringCopyFromUtf8;
        }
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public f1 getStructValue() {
        return this.kindCase_ == 5 ? (f1) this.kind_ : f1.getDefaultInstance();
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public StructOrBuilder getStructValueOrBuilder() {
        return this.kindCase_ == 5 ? (f1) this.kind_ : f1.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public boolean hasListValue() {
        return this.kindCase_ == 6;
    }

    @Override // com.google.protobuf.ValueOrBuilder
    public boolean hasStructValue() {
        return this.kindCase_ == 5;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i;
        int nullValueValue;
        int i2 = this.memoizedHashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = 779 + getDescriptor().hashCode();
        switch (this.kindCase_) {
            case 1:
                i = ((iHashCode * 37) + 1) * 53;
                nullValueValue = getNullValueValue();
                break;
            case 2:
                i = ((iHashCode * 37) + 2) * 53;
                nullValueValue = Internal.m19622native(Double.doubleToLongBits(getNumberValue()));
                break;
            case 3:
                i = ((iHashCode * 37) + 3) * 53;
                nullValueValue = getStringValue().hashCode();
                break;
            case 4:
                i = ((iHashCode * 37) + 4) * 53;
                nullValueValue = Internal.m19610catch(getBoolValue());
                break;
            case 5:
                i = ((iHashCode * 37) + 5) * 53;
                nullValueValue = getStructValue().hashCode();
                break;
            case 6:
                i = ((iHashCode * 37) + 6) * 53;
                nullValueValue = getListValue().hashCode();
                break;
            default:
                int iHashCode2 = (iHashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = iHashCode2;
                return iHashCode2;
        }
        iHashCode = i + nullValueValue;
        int iHashCode22 = (iHashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode22;
        return iHashCode22;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return g1.f16940case.m19575new(b2.class, Cfor.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.Ctry ctry) {
        return new b2();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (this.kindCase_ == 1) {
            cnative.writeEnum(1, ((Integer) this.kind_).intValue());
        }
        if (this.kindCase_ == 2) {
            cnative.writeDouble(2, ((Double) this.kind_).doubleValue());
        }
        if (this.kindCase_ == 3) {
            GeneratedMessageV3.writeString(cnative, 3, this.kind_);
        }
        if (this.kindCase_ == 4) {
            cnative.writeBool(4, ((Boolean) this.kind_).booleanValue());
        }
        if (this.kindCase_ == 5) {
            cnative.f0(5, (f1) this.kind_);
        }
        if (this.kindCase_ == 6) {
            cnative.f0(6, (u) this.kind_);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ b2(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cfor newBuilder(b2 b2Var) {
        return f16638do.toBuilder().m19863static(b2Var);
    }

    public static b2 parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16639if.parseFrom(byteBuffer, cimplements);
    }

    private b2(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.kindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static b2 parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (b2) GeneratedMessageV3.parseDelimitedWithIOException(f16639if, inputStream, cimplements);
    }

    public static b2 parseFrom(ByteString byteString) throws n {
        return f16639if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public b2 getDefaultInstanceForType() {
        return f16638do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cfor toBuilder() {
        Cdo cdo = null;
        return this == f16638do ? new Cfor(cdo) : new Cfor(cdo).m19863static(this);
    }

    public static b2 parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16639if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cfor newBuilderForType() {
        return newBuilder();
    }

    public static b2 parseFrom(byte[] bArr) throws n {
        return f16639if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cfor newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cfor(builderParent, null);
    }

    private b2() {
        this.kindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static b2 parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16639if.parseFrom(bArr, cimplements);
    }

    public static b2 parseFrom(InputStream inputStream) throws IOException {
        return (b2) GeneratedMessageV3.parseWithIOException(f16639if, inputStream);
    }

    private b2(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iL = codedInputStream.l();
                    if (iL != 0) {
                        if (iL == 8) {
                            int iMo18425extends = codedInputStream.mo18425extends();
                            this.kindCase_ = 1;
                            this.kind_ = Integer.valueOf(iMo18425extends);
                        } else if (iL == 17) {
                            this.kindCase_ = 2;
                            this.kind_ = Double.valueOf(codedInputStream.mo18422default());
                        } else if (iL == 26) {
                            String strK = codedInputStream.k();
                            this.kindCase_ = 3;
                            this.kind_ = strK;
                        } else if (iL != 32) {
                            if (iL == 42) {
                                f1.Cif builder = this.kindCase_ == 5 ? ((f1) this.kind_).toBuilder() : null;
                                MessageLite messageLiteMo18430interface = codedInputStream.mo18430interface(f1.parser(), cimplements);
                                this.kind_ = messageLiteMo18430interface;
                                if (builder != null) {
                                    builder.m20429super((f1) messageLiteMo18430interface);
                                    this.kind_ = builder.buildPartial();
                                }
                                this.kindCase_ = 5;
                            } else if (iL != 50) {
                                if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                                }
                            } else {
                                u.Cif builder2 = this.kindCase_ == 6 ? ((u) this.kind_).toBuilder() : null;
                                MessageLite messageLiteMo18430interface2 = codedInputStream.mo18430interface(u.parser(), cimplements);
                                this.kind_ = messageLiteMo18430interface2;
                                if (builder2 != null) {
                                    builder2.m21380static((u) messageLiteMo18430interface2);
                                    this.kind_ = builder2.buildPartial();
                                }
                                this.kindCase_ = 6;
                            }
                        } else {
                            this.kindCase_ = 4;
                            this.kind_ = Boolean.valueOf(codedInputStream.mo18437return());
                        }
                    }
                    z = true;
                } catch (n e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new n(e2).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static b2 parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (b2) GeneratedMessageV3.parseWithIOException(f16639if, inputStream, cimplements);
    }

    public static b2 parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (b2) GeneratedMessageV3.parseWithIOException(f16639if, codedInputStream);
    }

    public static b2 parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (b2) GeneratedMessageV3.parseWithIOException(f16639if, codedInputStream, cimplements);
    }
}
