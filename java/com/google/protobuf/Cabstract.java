package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Ccontinue;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.c1;
import com.google.protobuf.o0;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* renamed from: com.google.protobuf.abstract, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cabstract extends GeneratedMessageV3 implements EnumOrBuilder {
    public static final int ENUMVALUE_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int OPTIONS_FIELD_NUMBER = 3;
    public static final int SOURCE_CONTEXT_FIELD_NUMBER = 4;
    public static final int SYNTAX_FIELD_NUMBER = 5;

    /* renamed from: do, reason: not valid java name */
    private static final Cabstract f16604do = new Cabstract();

    /* renamed from: if, reason: not valid java name */
    private static final Parser<Cabstract> f16605if = new Cdo();
    private static final long serialVersionUID = 0;
    private List<Ccontinue> enumvalue_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<o0> options_;
    private c1 sourceContext_;
    private int syntax_;

    /* renamed from: com.google.protobuf.abstract$do, reason: invalid class name */
    public class Cdo extends com.google.protobuf.Cdo<Cabstract> {
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cabstract parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return new Cabstract(codedInputStream, cimplements, null);
        }
    }

    /* renamed from: com.google.protobuf.abstract$if, reason: invalid class name */
    public static final class Cif extends GeneratedMessageV3.Cif<Cif> implements EnumOrBuilder {

        /* renamed from: case, reason: not valid java name */
        private v0<o0, o0.Cif, OptionOrBuilder> f16606case;

        /* renamed from: do, reason: not valid java name */
        private int f16607do;

        /* renamed from: else, reason: not valid java name */
        private c1 f16608else;

        /* renamed from: for, reason: not valid java name */
        private List<Ccontinue> f16609for;

        /* renamed from: goto, reason: not valid java name */
        private a1<c1, c1.Cif, SourceContextOrBuilder> f16610goto;

        /* renamed from: if, reason: not valid java name */
        private Object f16611if;

        /* renamed from: new, reason: not valid java name */
        private v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> f16612new;

        /* renamed from: this, reason: not valid java name */
        private int f16613this;

        /* renamed from: try, reason: not valid java name */
        private List<o0> f16614try;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        /* renamed from: finally, reason: not valid java name */
        private void m19759finally() {
            if ((this.f16607do & 1) == 0) {
                this.f16609for = new ArrayList(this.f16609for);
                this.f16607do |= 1;
            }
        }

        public static final Descriptors.Cif getDescriptor() {
            return o1.f17141try;
        }

        /* renamed from: implements, reason: not valid java name */
        private a1<c1, c1.Cif, SourceContextOrBuilder> m19760implements() {
            if (this.f16610goto == null) {
                this.f16610goto = new a1<>(getSourceContext(), getParentForChildren(), isClean());
                this.f16608else = null;
            }
            return this.f16610goto;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                m19763strictfp();
                m19762protected();
            }
        }

        /* renamed from: package, reason: not valid java name */
        private void m19761package() {
            if ((this.f16607do & 2) == 0) {
                this.f16614try = new ArrayList(this.f16614try);
                this.f16607do |= 2;
            }
        }

        /* renamed from: protected, reason: not valid java name */
        private v0<o0, o0.Cif, OptionOrBuilder> m19762protected() {
            if (this.f16606case == null) {
                this.f16606case = new v0<>(this.f16614try, (this.f16607do & 2) != 0, getParentForChildren(), isClean());
                this.f16614try = null;
            }
            return this.f16606case;
        }

        /* renamed from: strictfp, reason: not valid java name */
        private v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> m19763strictfp() {
            if (this.f16612new == null) {
                this.f16612new = new v0<>(this.f16609for, (this.f16607do & 1) != 0, getParentForChildren(), isClean());
                this.f16609for = null;
            }
            return this.f16612new;
        }

        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Cif mergeFrom(Message message) {
            if (message instanceof Cabstract) {
                return m19790synchronized((Cabstract) message);
            }
            super.mergeFrom(message);
            return this;
        }

        /* renamed from: abstract, reason: not valid java name */
        public Ccontinue.Cif m19764abstract(int i) {
            return (Ccontinue.Cif) m19763strictfp().m21454catch(i);
        }

        public Cif b(c1 c1Var) {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16610goto;
            if (a1Var == null) {
                c1 c1Var2 = this.f16608else;
                if (c1Var2 != null) {
                    this.f16608else = c1.newBuilder(c1Var2).m19947class(c1Var).buildPartial();
                } else {
                    this.f16608else = c1Var;
                }
                onChanged();
            } else {
                a1Var.m19687else(c1Var);
            }
            return this;
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m19765break(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m19761package();
                this.f16614try.add(i, o0Var);
                onChanged();
            } else {
                v0Var.m21464new(i, o0Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Cif mergeUnknownFields(t1 t1Var) {
            return (Cif) super.mergeUnknownFields(t1Var);
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m19766case(Ccontinue ccontinue) {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            if (v0Var == null) {
                Objects.requireNonNull(ccontinue);
                m19759finally();
                this.f16609for.add(ccontinue);
                onChanged();
            } else {
                v0Var.m21469try(ccontinue);
            }
            return this;
        }

        /* renamed from: catch, reason: not valid java name */
        public Cif m19767catch(o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            if (v0Var == null) {
                m19761package();
                this.f16614try.add(cif.build());
                onChanged();
            } else {
                v0Var.m21469try(cif.build());
            }
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public Cif m19768class(o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m19761package();
                this.f16614try.add(o0Var);
                onChanged();
            } else {
                v0Var.m21469try(o0Var);
            }
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public o0.Cif m19769const() {
            return (o0.Cif) m19762protected().m21460for(o0.getDefaultInstance());
        }

        /* renamed from: continue, reason: not valid java name */
        public List<Ccontinue.Cif> m19770continue() {
            return m19763strictfp().m21455class();
        }

        public Cif d(int i) {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            if (v0Var == null) {
                m19759finally();
                this.f16609for.remove(i);
                onChanged();
            } else {
                v0Var.m21466static(i);
            }
            return this;
        }

        /* renamed from: default, reason: not valid java name */
        public Cif m19771default() {
            this.f16613this = 0;
            onChanged();
            return this;
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m19772do(Iterable<? extends Ccontinue> iterable) {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            if (v0Var == null) {
                m19759finally();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16609for);
                onChanged();
            } else {
                v0Var.m21457do(iterable);
            }
            return this;
        }

        public Cif e(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            if (v0Var == null) {
                m19761package();
                this.f16614try.remove(i);
                onChanged();
            } else {
                v0Var.m21466static(i);
            }
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public Ccontinue.Cif m19773else() {
            return (Ccontinue.Cif) m19763strictfp().m21460for(Ccontinue.getDefaultInstance());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo18392clone() {
            return (Cif) super.mo18392clone();
        }

        public Cif f(int i, Ccontinue.Cif cif) {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            if (v0Var == null) {
                m19759finally();
                this.f16609for.set(i, cif.build());
                onChanged();
            } else {
                v0Var.m21467switch(i, cif.build());
            }
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public o0.Cif m19775final(int i) {
            return (o0.Cif) m19762protected().m21462if(i, o0.getDefaultInstance());
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m19776for(int i, Ccontinue.Cif cif) {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            if (v0Var == null) {
                m19759finally();
                this.f16609for.add(i, cif.build());
                onChanged();
            } else {
                v0Var.m21464new(i, cif.build());
            }
            return this;
        }

        public Cif g(int i, Ccontinue ccontinue) {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            if (v0Var == null) {
                Objects.requireNonNull(ccontinue);
                m19759finally();
                this.f16609for.set(i, ccontinue);
                onChanged();
            } else {
                v0Var.m21467switch(i, ccontinue);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
        public Descriptors.Cif getDescriptorForType() {
            return o1.f17141try;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public Ccontinue getEnumvalue(int i) {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            return v0Var == null ? this.f16609for.get(i) : (Ccontinue) v0Var.m21459final(i);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public int getEnumvalueCount() {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            return v0Var == null ? this.f16609for.size() : v0Var.m21456const();
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public List<Ccontinue> getEnumvalueList() {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            return v0Var == null ? Collections.unmodifiableList(this.f16609for) : v0Var.m21468throw();
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public EnumValueOrBuilder getEnumvalueOrBuilder(int i) {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            return v0Var == null ? this.f16609for.get(i) : (EnumValueOrBuilder) v0Var.m21470while(i);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public List<? extends EnumValueOrBuilder> getEnumvalueOrBuilderList() {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f16609for);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public String getName() {
            Object obj = this.f16611if;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.f16611if = stringUtf8;
            return stringUtf8;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.f16611if;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f16611if = byteStringCopyFromUtf8;
            return byteStringCopyFromUtf8;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public o0 getOptions(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            return v0Var == null ? this.f16614try.get(i) : (o0) v0Var.m21459final(i);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public int getOptionsCount() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            return v0Var == null ? this.f16614try.size() : v0Var.m21456const();
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public List<o0> getOptionsList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            return v0Var == null ? Collections.unmodifiableList(this.f16614try) : v0Var.m21468throw();
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public OptionOrBuilder getOptionsOrBuilder(int i) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            return v0Var == null ? this.f16614try.get(i) : (OptionOrBuilder) v0Var.m21470while(i);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            return v0Var != null ? v0Var.m21463import() : Collections.unmodifiableList(this.f16614try);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public c1 getSourceContext() {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16610goto;
            if (a1Var != null) {
                return (c1) a1Var.m19692try();
            }
            c1 c1Var = this.f16608else;
            return c1Var == null ? c1.getDefaultInstance() : c1Var;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public SourceContextOrBuilder getSourceContextOrBuilder() {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16610goto;
            if (a1Var != null) {
                return (SourceContextOrBuilder) a1Var.m19685case();
            }
            c1 c1Var = this.f16608else;
            return c1Var == null ? c1.getDefaultInstance() : c1Var;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public i1 getSyntax() {
            i1 i1VarValueOf = i1.valueOf(this.f16613this);
            return i1VarValueOf == null ? i1.UNRECOGNIZED : i1VarValueOf;
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public int getSyntaxValue() {
            return this.f16613this;
        }

        /* renamed from: goto, reason: not valid java name */
        public Ccontinue.Cif m19777goto(int i) {
            return (Ccontinue.Cif) m19763strictfp().m21462if(i, Ccontinue.getDefaultInstance());
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public Cif setField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.setField(celse, obj);
        }

        @Override // com.google.protobuf.EnumOrBuilder
        public boolean hasSourceContext() {
            return (this.f16610goto == null && this.f16608else == null) ? false : true;
        }

        public Cif i(String str) {
            Objects.requireNonNull(str);
            this.f16611if = str;
            onChanged();
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m19778if(Iterable<? extends o0> iterable) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            if (v0Var == null) {
                m19761package();
                AbstractMessageLite.Cdo.addAll((Iterable) iterable, (List) this.f16614try);
                onChanged();
            } else {
                v0Var.m21457do(iterable);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clear() {
            super.clear();
            this.f16611if = "";
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            if (v0Var == null) {
                this.f16609for = Collections.emptyList();
                this.f16607do &= -2;
            } else {
                v0Var.m21458else();
            }
            v0<o0, o0.Cif, OptionOrBuilder> v0Var2 = this.f16606case;
            if (v0Var2 == null) {
                this.f16614try = Collections.emptyList();
                this.f16607do &= -3;
            } else {
                v0Var2.m21458else();
            }
            if (this.f16610goto == null) {
                this.f16608else = null;
            } else {
                this.f16608else = null;
                this.f16610goto = null;
            }
            this.f16613this = 0;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: instanceof, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws Throwable {
            Cabstract cabstract = null;
            try {
                try {
                    Cabstract cabstract2 = (Cabstract) Cabstract.f16605if.parsePartialFrom(codedInputStream, cimplements);
                    if (cabstract2 != null) {
                        m19790synchronized(cabstract2);
                    }
                    return this;
                } catch (n e) {
                    Cabstract cabstract3 = (Cabstract) e.getUnfinishedMessage();
                    try {
                        throw e.unwrapIOException();
                    } catch (Throwable th) {
                        th = th;
                        cabstract = cabstract3;
                        if (cabstract != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (cabstract != null) {
                    m19790synchronized(cabstract);
                }
                throw th;
            }
        }

        /* renamed from: interface, reason: not valid java name */
        public List<o0.Cif> m19781interface() {
            return m19762protected().m21455class();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return o1.f17132case.m19575new(Cabstract.class, Cif.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Cif j(ByteString byteString) throws IllegalArgumentException {
            Objects.requireNonNull(byteString);
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.f16611if = byteString;
            onChanged();
            return this;
        }

        public Cif k(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            if (v0Var == null) {
                m19761package();
                this.f16614try.set(i, cif.build());
                onChanged();
            } else {
                v0Var.m21467switch(i, cif.build());
            }
            return this;
        }

        public Cif l(int i, o0 o0Var) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            if (v0Var == null) {
                Objects.requireNonNull(o0Var);
                m19761package();
                this.f16614try.set(i, o0Var);
                onChanged();
            } else {
                v0Var.m21467switch(i, o0Var);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: m, reason: merged with bridge method [inline-methods] */
        public Cif setRepeatedField(Descriptors.Celse celse, int i, Object obj) {
            return (Cif) super.setRepeatedField(celse, i, obj);
        }

        public Cif n(c1.Cif cif) {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16610goto;
            if (a1Var == null) {
                this.f16608else = cif.build();
                onChanged();
            } else {
                a1Var.m19691this(cif.build());
            }
            return this;
        }

        /* renamed from: native, reason: not valid java name */
        public Cif m19782native() {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            if (v0Var == null) {
                this.f16609for = Collections.emptyList();
                this.f16607do &= -2;
                onChanged();
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m19783new(int i, Ccontinue ccontinue) {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            if (v0Var == null) {
                Objects.requireNonNull(ccontinue);
                m19759finally();
                this.f16609for.add(i, ccontinue);
                onChanged();
            } else {
                v0Var.m21464new(i, ccontinue);
            }
            return this;
        }

        public Cif o(c1 c1Var) {
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16610goto;
            if (a1Var == null) {
                Objects.requireNonNull(c1Var);
                this.f16608else = c1Var;
                onChanged();
            } else {
                a1Var.m19691this(c1Var);
            }
            return this;
        }

        public Cif p(i1 i1Var) {
            Objects.requireNonNull(i1Var);
            this.f16613this = i1Var.getNumber();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: private, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cabstract getDefaultInstanceForType() {
            return Cabstract.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearField(Descriptors.Celse celse) {
            return (Cif) super.clearField(celse);
        }

        public Cif q(int i) {
            this.f16613this = i;
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: r, reason: merged with bridge method [inline-methods] */
        public final Cif setUnknownFields(t1 t1Var) {
            return (Cif) super.setUnknownFields(t1Var);
        }

        /* renamed from: return, reason: not valid java name */
        public Cif m19786return() {
            this.f16611if = Cabstract.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.AbstractMessage.Cdo, com.google.protobuf.Message.Builder
        /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif clearOneof(Descriptors.Cbreak cbreak) {
            return (Cif) super.clearOneof(cbreak);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.Cif, com.google.protobuf.Message.Builder
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif addRepeatedField(Descriptors.Celse celse, Object obj) {
            return (Cif) super.addRepeatedField(celse, obj);
        }

        /* renamed from: switch, reason: not valid java name */
        public Cif m19789switch() {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            if (v0Var == null) {
                this.f16614try = Collections.emptyList();
                this.f16607do &= -3;
                onChanged();
            } else {
                v0Var.m21458else();
            }
            return this;
        }

        /* renamed from: synchronized, reason: not valid java name */
        public Cif m19790synchronized(Cabstract cabstract) {
            if (cabstract == Cabstract.getDefaultInstance()) {
                return this;
            }
            if (!cabstract.getName().isEmpty()) {
                this.f16611if = cabstract.name_;
                onChanged();
            }
            if (this.f16612new == null) {
                if (!cabstract.enumvalue_.isEmpty()) {
                    if (this.f16609for.isEmpty()) {
                        this.f16609for = cabstract.enumvalue_;
                        this.f16607do &= -2;
                    } else {
                        m19759finally();
                        this.f16609for.addAll(cabstract.enumvalue_);
                    }
                    onChanged();
                }
            } else if (!cabstract.enumvalue_.isEmpty()) {
                if (this.f16612new.m21465public()) {
                    this.f16612new.m21461goto();
                    this.f16612new = null;
                    this.f16609for = cabstract.enumvalue_;
                    this.f16607do &= -2;
                    this.f16612new = GeneratedMessageV3.alwaysUseFieldBuilders ? m19763strictfp() : null;
                } else {
                    this.f16612new.m21457do(cabstract.enumvalue_);
                }
            }
            if (this.f16606case == null) {
                if (!cabstract.options_.isEmpty()) {
                    if (this.f16614try.isEmpty()) {
                        this.f16614try = cabstract.options_;
                        this.f16607do &= -3;
                    } else {
                        m19761package();
                        this.f16614try.addAll(cabstract.options_);
                    }
                    onChanged();
                }
            } else if (!cabstract.options_.isEmpty()) {
                if (this.f16606case.m21465public()) {
                    this.f16606case.m21461goto();
                    this.f16606case = null;
                    this.f16614try = cabstract.options_;
                    this.f16607do &= -3;
                    this.f16606case = GeneratedMessageV3.alwaysUseFieldBuilders ? m19762protected() : null;
                } else {
                    this.f16606case.m21457do(cabstract.options_);
                }
            }
            if (cabstract.hasSourceContext()) {
                b(cabstract.getSourceContext());
            }
            if (cabstract.syntax_ != 0) {
                q(cabstract.getSyntaxValue());
            }
            mergeUnknownFields(cabstract.unknownFields);
            onChanged();
            return this;
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m19791this(int i, o0.Cif cif) {
            v0<o0, o0.Cif, OptionOrBuilder> v0Var = this.f16606case;
            if (v0Var == null) {
                m19761package();
                this.f16614try.add(i, cif.build());
                onChanged();
            } else {
                v0Var.m21464new(i, cif.build());
            }
            return this;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cabstract build() {
            Cabstract cabstractBuildPartial = buildPartial();
            if (cabstractBuildPartial.isInitialized()) {
                return cabstractBuildPartial;
            }
            throw AbstractMessage.Cdo.newUninitializedMessageException((Message) cabstractBuildPartial);
        }

        /* renamed from: throws, reason: not valid java name */
        public Cif m19793throws() {
            if (this.f16610goto == null) {
                this.f16608else = null;
                onChanged();
            } else {
                this.f16608else = null;
                this.f16610goto = null;
            }
            return this;
        }

        /* renamed from: transient, reason: not valid java name */
        public c1.Cif m19794transient() {
            onChanged();
            return (c1.Cif) m19760implements().m19690new();
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m19795try(Ccontinue.Cif cif) {
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            if (v0Var == null) {
                m19759finally();
                this.f16609for.add(cif.build());
                onChanged();
            } else {
                v0Var.m21469try(cif.build());
            }
            return this;
        }

        /* renamed from: volatile, reason: not valid java name */
        public o0.Cif m19796volatile(int i) {
            return (o0.Cif) m19762protected().m21454catch(i);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cabstract buildPartial() {
            Cabstract cabstract = new Cabstract(this, (Cdo) null);
            cabstract.name_ = this.f16611if;
            v0<Ccontinue, Ccontinue.Cif, EnumValueOrBuilder> v0Var = this.f16612new;
            if (v0Var == null) {
                if ((this.f16607do & 1) != 0) {
                    this.f16609for = Collections.unmodifiableList(this.f16609for);
                    this.f16607do &= -2;
                }
                cabstract.enumvalue_ = this.f16609for;
            } else {
                cabstract.enumvalue_ = v0Var.m21453case();
            }
            v0<o0, o0.Cif, OptionOrBuilder> v0Var2 = this.f16606case;
            if (v0Var2 == null) {
                if ((this.f16607do & 2) != 0) {
                    this.f16614try = Collections.unmodifiableList(this.f16614try);
                    this.f16607do &= -3;
                }
                cabstract.options_ = this.f16614try;
            } else {
                cabstract.options_ = v0Var2.m21453case();
            }
            a1<c1, c1.Cif, SourceContextOrBuilder> a1Var = this.f16610goto;
            if (a1Var == null) {
                cabstract.sourceContext_ = this.f16608else;
            } else {
                cabstract.sourceContext_ = (c1) a1Var.m19686do();
            }
            cabstract.syntax_ = this.f16613this;
            onBuilt();
            return cabstract;
        }

        public /* synthetic */ Cif(GeneratedMessageV3.BuilderParent builderParent, Cdo cdo) {
            this(builderParent);
        }

        private Cif() {
            this.f16611if = "";
            this.f16609for = Collections.emptyList();
            this.f16614try = Collections.emptyList();
            this.f16613this = 0;
            maybeForceBuilderInitialization();
        }

        private Cif(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.f16611if = "";
            this.f16609for = Collections.emptyList();
            this.f16614try = Collections.emptyList();
            this.f16613this = 0;
            maybeForceBuilderInitialization();
        }
    }

    public /* synthetic */ Cabstract(CodedInputStream codedInputStream, Cimplements cimplements, Cdo cdo) throws n {
        this(codedInputStream, cimplements);
    }

    public static Cabstract getDefaultInstance() {
        return f16604do;
    }

    public static final Descriptors.Cif getDescriptor() {
        return o1.f17141try;
    }

    public static Cif newBuilder() {
        return f16604do.toBuilder();
    }

    public static Cabstract parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Cabstract) GeneratedMessageV3.parseDelimitedWithIOException(f16605if, inputStream);
    }

    public static Cabstract parseFrom(ByteBuffer byteBuffer) throws n {
        return f16605if.parseFrom(byteBuffer);
    }

    public static Parser<Cabstract> parser() {
        return f16605if;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cabstract)) {
            return super.equals(obj);
        }
        Cabstract cabstract = (Cabstract) obj;
        if (getName().equals(cabstract.getName()) && getEnumvalueList().equals(cabstract.getEnumvalueList()) && getOptionsList().equals(cabstract.getOptionsList()) && hasSourceContext() == cabstract.hasSourceContext()) {
            return (!hasSourceContext() || getSourceContext().equals(cabstract.getSourceContext())) && this.syntax_ == cabstract.syntax_ && this.unknownFields.equals(cabstract.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public Ccontinue getEnumvalue(int i) {
        return this.enumvalue_.get(i);
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public int getEnumvalueCount() {
        return this.enumvalue_.size();
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public List<Ccontinue> getEnumvalueList() {
        return this.enumvalue_;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public EnumValueOrBuilder getEnumvalueOrBuilder(int i) {
        return this.enumvalue_.get(i);
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public List<? extends EnumValueOrBuilder> getEnumvalueOrBuilderList() {
        return this.enumvalue_;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = byteStringCopyFromUtf8;
        return byteStringCopyFromUtf8;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public o0 getOptions(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public int getOptionsCount() {
        return this.options_.size();
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public List<o0> getOptionsList() {
        return this.options_;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public OptionOrBuilder getOptionsOrBuilder(int i) {
        return this.options_.get(i);
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public List<? extends OptionOrBuilder> getOptionsOrBuilderList() {
        return this.options_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Parser<Cabstract> getParserForType() {
        return f16605if;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int iComputeStringSize = !getNameBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i2 = 0; i2 < this.enumvalue_.size(); i2++) {
            iComputeStringSize += Cnative.m20900synchronized(2, this.enumvalue_.get(i2));
        }
        for (int i3 = 0; i3 < this.options_.size(); i3++) {
            iComputeStringSize += Cnative.m20900synchronized(3, this.options_.get(i3));
        }
        if (this.sourceContext_ != null) {
            iComputeStringSize += Cnative.m20900synchronized(4, getSourceContext());
        }
        if (this.syntax_ != i1.SYNTAX_PROTO2.getNumber()) {
            iComputeStringSize += Cnative.m20887import(5, this.syntax_);
        }
        int serializedSize = iComputeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public c1 getSourceContext() {
        c1 c1Var = this.sourceContext_;
        return c1Var == null ? c1.getDefaultInstance() : c1Var;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public SourceContextOrBuilder getSourceContextOrBuilder() {
        return getSourceContext();
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public i1 getSyntax() {
        i1 i1VarValueOf = i1.valueOf(this.syntax_);
        return i1VarValueOf == null ? i1.UNRECOGNIZED : i1VarValueOf;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public int getSyntaxValue() {
        return this.syntax_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
    public final t1 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.EnumOrBuilder
    public boolean hasSourceContext() {
        return this.sourceContext_ != null;
    }

    @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getEnumvalueCount() > 0) {
            iHashCode = (((iHashCode * 37) + 2) * 53) + getEnumvalueList().hashCode();
        }
        if (getOptionsCount() > 0) {
            iHashCode = (((iHashCode * 37) + 3) * 53) + getOptionsList().hashCode();
        }
        if (hasSourceContext()) {
            iHashCode = (((iHashCode * 37) + 4) * 53) + getSourceContext().hashCode();
        }
        int iHashCode2 = (((((iHashCode * 37) + 5) * 53) + this.syntax_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return o1.f17132case.m19575new(Cabstract.class, Cif.class);
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
        return new Cabstract();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(cnative, 1, this.name_);
        }
        for (int i = 0; i < this.enumvalue_.size(); i++) {
            cnative.f0(2, this.enumvalue_.get(i));
        }
        for (int i2 = 0; i2 < this.options_.size(); i2++) {
            cnative.f0(3, this.options_.get(i2));
        }
        if (this.sourceContext_ != null) {
            cnative.f0(4, getSourceContext());
        }
        if (this.syntax_ != i1.SYNTAX_PROTO2.getNumber()) {
            cnative.writeEnum(5, this.syntax_);
        }
        this.unknownFields.writeTo(cnative);
    }

    public /* synthetic */ Cabstract(GeneratedMessageV3.Cif cif, Cdo cdo) {
        this(cif);
    }

    public static Cif newBuilder(Cabstract cabstract) {
        return f16604do.toBuilder().m19790synchronized(cabstract);
    }

    public static Cabstract parseFrom(ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return f16605if.parseFrom(byteBuffer, cimplements);
    }

    private Cabstract(GeneratedMessageV3.Cif<?> cif) {
        super(cif);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Cabstract parseDelimitedFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cabstract) GeneratedMessageV3.parseDelimitedWithIOException(f16605if, inputStream, cimplements);
    }

    public static Cabstract parseFrom(ByteString byteString) throws n {
        return f16605if.parseFrom(byteString);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    public Cabstract getDefaultInstanceForType() {
        return f16604do;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif toBuilder() {
        Cdo cdo = null;
        return this == f16604do ? new Cif(cdo) : new Cif(cdo).m19790synchronized(this);
    }

    public static Cabstract parseFrom(ByteString byteString, Cimplements cimplements) throws n {
        return f16605if.parseFrom(byteString, cimplements);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public Cif newBuilderForType() {
        return newBuilder();
    }

    private Cabstract() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.enumvalue_ = Collections.emptyList();
        this.options_ = Collections.emptyList();
        this.syntax_ = 0;
    }

    public static Cabstract parseFrom(byte[] bArr) throws n {
        return f16605if.parseFrom(bArr);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    public Cif newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Cif(builderParent, null);
    }

    public static Cabstract parseFrom(byte[] bArr, Cimplements cimplements) throws n {
        return f16605if.parseFrom(bArr, cimplements);
    }

    public static Cabstract parseFrom(InputStream inputStream) throws IOException {
        return (Cabstract) GeneratedMessageV3.parseWithIOException(f16605if, inputStream);
    }

    public static Cabstract parseFrom(InputStream inputStream, Cimplements cimplements) throws IOException {
        return (Cabstract) GeneratedMessageV3.parseWithIOException(f16605if, inputStream, cimplements);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Cabstract(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        this();
        Objects.requireNonNull(cimplements);
        t1.Cif cifM21191this = t1.m21191this();
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int iL = codedInputStream.l();
                    if (iL != 0) {
                        if (iL == 10) {
                            this.name_ = codedInputStream.k();
                        } else if (iL == 18) {
                            if ((i & 1) == 0) {
                                this.enumvalue_ = new ArrayList();
                                i |= 1;
                            }
                            this.enumvalue_.add(codedInputStream.mo18430interface(Ccontinue.parser(), cimplements));
                        } else if (iL == 26) {
                            if ((i & 2) == 0) {
                                this.options_ = new ArrayList();
                                i |= 2;
                            }
                            this.options_.add(codedInputStream.mo18430interface(o0.parser(), cimplements));
                        } else if (iL == 34) {
                            c1 c1Var = this.sourceContext_;
                            c1.Cif builder = c1Var != null ? c1Var.toBuilder() : null;
                            c1 c1Var2 = (c1) codedInputStream.mo18430interface(c1.parser(), cimplements);
                            this.sourceContext_ = c1Var2;
                            if (builder != null) {
                                builder.m19947class(c1Var2);
                                this.sourceContext_ = builder.buildPartial();
                            }
                        } else if (iL != 40) {
                            if (!parseUnknownField(codedInputStream, cifM21191this, cimplements, iL)) {
                            }
                        } else {
                            this.syntax_ = codedInputStream.mo18425extends();
                        }
                    }
                    z = true;
                } catch (n e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new n(e2).setUnfinishedMessage(this);
                }
            } finally {
                if ((i & 1) != 0) {
                    this.enumvalue_ = Collections.unmodifiableList(this.enumvalue_);
                }
                if ((i & 2) != 0) {
                    this.options_ = Collections.unmodifiableList(this.options_);
                }
                this.unknownFields = cifM21191this.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Cabstract parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Cabstract) GeneratedMessageV3.parseWithIOException(f16605if, codedInputStream);
    }

    public static Cabstract parseFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        return (Cabstract) GeneratedMessageV3.parseWithIOException(f16605if, codedInputStream, cimplements);
    }
}
