package com.google.protobuf;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.Cthis;
import com.google.protobuf.FieldSet;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite.Cif;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLite;
import com.google.protobuf.c2;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Cif<MessageType, BuilderType>> extends AbstractMessageLite<MessageType, BuilderType> {

    /* renamed from: for, reason: not valid java name */
    private static Map<Object, GeneratedMessageLite<?, ?>> f16464for = new ConcurrentHashMap();

    /* renamed from: do, reason: not valid java name */
    public u1 f16465do = u1.m21421for();

    /* renamed from: if, reason: not valid java name */
    public int f16466if = -1;

    public interface ExtendableMessageOrBuilder<MessageType extends Ctry<MessageType, BuilderType>, BuilderType extends Cnew<MessageType, BuilderType>> extends MessageLiteOrBuilder {
        <Type> Type getExtension(Cinterface<MessageType, Type> cinterface);

        <Type> Type getExtension(Cinterface<MessageType, List<Type>> cinterface, int i);

        <Type> int getExtensionCount(Cinterface<MessageType, List<Type>> cinterface);

        <Type> boolean hasExtension(Cinterface<MessageType, Type> cinterface);
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$case, reason: invalid class name */
    public static final class Ccase implements FieldSet.FieldDescriptorLite<Ccase> {

        /* renamed from: do, reason: not valid java name */
        public final Internal.EnumLiteMap<?> f16467do;

        /* renamed from: for, reason: not valid java name */
        public final c2.Cif f16468for;

        /* renamed from: if, reason: not valid java name */
        public final int f16469if;

        /* renamed from: new, reason: not valid java name */
        public final boolean f16470new;

        /* renamed from: try, reason: not valid java name */
        public final boolean f16471try;

        public Ccase(Internal.EnumLiteMap<?> enumLiteMap, int i, c2.Cif cif, boolean z, boolean z2) {
            this.f16467do = enumLiteMap;
            this.f16469if = i;
            this.f16468for = cif;
            this.f16470new = z;
            this.f16471try = z2;
        }

        @Override // java.lang.Comparable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compareTo(Ccase ccase) {
            return this.f16469if - ccase.f16469if;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public Internal.EnumLiteMap<?> getEnumType() {
            return this.f16467do;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public c2.Cfor getLiteJavaType() {
            return this.f16468for.getJavaType();
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public c2.Cif getLiteType() {
            return this.f16468for;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public int getNumber() {
            return this.f16469if;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messageLite) {
            return ((Cif) builder).m19547break((GeneratedMessageLite) messageLite);
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public boolean isPacked() {
            return this.f16471try;
        }

        @Override // com.google.protobuf.FieldSet.FieldDescriptorLite
        public boolean isRepeated() {
            return this.f16470new;
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16472do;

        static {
            int[] iArr = new int[c2.Cfor.values().length];
            f16472do = iArr;
            try {
                iArr[c2.Cfor.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16472do[c2.Cfor.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$else, reason: invalid class name */
    public static class Celse<ContainingType extends MessageLite, Type> extends Cinterface<ContainingType, Type> {

        /* renamed from: do, reason: not valid java name */
        public final ContainingType f16473do;

        /* renamed from: for, reason: not valid java name */
        public final MessageLite f16474for;

        /* renamed from: if, reason: not valid java name */
        public final Type f16475if;

        /* renamed from: new, reason: not valid java name */
        public final Ccase f16476new;

        public Celse(ContainingType containingtype, Type type, MessageLite messageLite, Ccase ccase, Class cls) {
            if (containingtype == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            }
            if (ccase.getLiteType() == c2.Cif.MESSAGE && messageLite == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            }
            this.f16473do = containingtype;
            this.f16475if = type;
            this.f16474for = messageLite;
            this.f16476new = ccase;
        }

        /* renamed from: break, reason: not valid java name */
        public Object m19539break(Object obj) {
            return this.f16476new.getLiteJavaType() == c2.Cfor.ENUM ? Integer.valueOf(((Internal.EnumLite) obj).getNumber()) : obj;
        }

        @Override // com.google.protobuf.Cinterface
        /* renamed from: case */
        public boolean mo19444case() {
            return this.f16476new.f16470new;
        }

        /* renamed from: catch, reason: not valid java name */
        public Object m19540catch(Object obj) {
            if (!this.f16476new.isRepeated()) {
                return m19539break(obj);
            }
            if (this.f16476new.getLiteJavaType() != c2.Cfor.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(m19539break(it.next()));
            }
            return arrayList;
        }

        @Override // com.google.protobuf.Cinterface
        /* renamed from: do */
        public Type mo19447do() {
            return this.f16475if;
        }

        /* renamed from: else, reason: not valid java name */
        public Object m19541else(Object obj) {
            if (!this.f16476new.isRepeated()) {
                return m19543this(obj);
            }
            if (this.f16476new.getLiteJavaType() != c2.Cfor.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(m19543this(it.next()));
            }
            return arrayList;
        }

        @Override // com.google.protobuf.Cinterface
        /* renamed from: for */
        public MessageLite mo19450for() {
            return this.f16474for;
        }

        /* renamed from: goto, reason: not valid java name */
        public ContainingType m19542goto() {
            return this.f16473do;
        }

        @Override // com.google.protobuf.Cinterface
        /* renamed from: if */
        public c2.Cif mo19452if() {
            return this.f16476new.getLiteType();
        }

        @Override // com.google.protobuf.Cinterface
        /* renamed from: new */
        public int mo19453new() {
            return this.f16476new.getNumber();
        }

        /* renamed from: this, reason: not valid java name */
        public Object m19543this(Object obj) {
            return this.f16476new.getLiteJavaType() == c2.Cfor.ENUM ? this.f16476new.f16467do.findValueByNumber(((Integer) obj).intValue()) : obj;
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$for, reason: invalid class name */
    public static class Cfor<T extends GeneratedMessageLite<T, ?>> extends com.google.protobuf.Cdo<T> {

        /* renamed from: do, reason: not valid java name */
        private final T f16477do;

        public Cfor(T t) {
            this.f16477do = t;
        }

        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public T parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            return (T) GeneratedMessageLite.m19522synchronized(this.f16477do, codedInputStream, cimplements);
        }

        @Override // com.google.protobuf.Cdo, com.google.protobuf.Parser
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public T parsePartialFrom(byte[] bArr, int i, int i2, Cimplements cimplements) throws n {
            return (T) GeneratedMessageLite.a(this.f16477do, bArr, i, i2, cimplements);
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$goto, reason: invalid class name */
    public enum Cgoto {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$if, reason: invalid class name */
    public static abstract class Cif<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Cif<MessageType, BuilderType>> extends AbstractMessageLite.Cdo<MessageType, BuilderType> {

        /* renamed from: do, reason: not valid java name */
        private final MessageType f16479do;

        /* renamed from: for, reason: not valid java name */
        public boolean f16480for = false;

        /* renamed from: if, reason: not valid java name */
        public MessageType f16481if;

        public Cif(MessageType messagetype) {
            this.f16479do = messagetype;
            this.f16481if = (MessageType) messagetype.m19528else(Cgoto.NEW_MUTABLE_INSTANCE);
        }

        /* renamed from: const, reason: not valid java name */
        private void m19546const(MessageType messagetype, MessageType messagetype2) {
            q0.m21002do().m21003break(messagetype).mergeFrom(messagetype, messagetype2);
        }

        /* renamed from: break, reason: not valid java name */
        public BuilderType m19547break(MessageType messagetype) {
            m19558try();
            m19546const(this.f16481if, messagetype);
            return this;
        }

        /* renamed from: case, reason: not valid java name */
        public void mo19548case() {
            MessageType messagetype = (MessageType) this.f16481if.m19528else(Cgoto.NEW_MUTABLE_INSTANCE);
            m19546const(messagetype, this.f16481if);
            this.f16481if = messagetype;
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType mergeFrom(byte[] bArr, int i, int i2) throws n {
            return (BuilderType) mergeFrom(bArr, i, i2, Cimplements.m20607new());
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType mergeFrom(byte[] bArr, int i, int i2, Cimplements cimplements) throws n {
            m19558try();
            try {
                q0.m21002do().m21003break(this.f16481if).mergeFrom(this.f16481if, bArr, i, i + i2, new Cthis.Cif(cimplements));
                return this;
            } catch (n e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException unused) {
                throw n.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public final MessageType build() {
            MessageType messagetype = (MessageType) buildPartial();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw AbstractMessageLite.Cdo.newUninitializedMessageException(messagetype);
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public MessageType getDefaultInstanceForType() {
            return this.f16479do;
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public final BuilderType clear() {
            this.f16481if = (MessageType) this.f16481if.m19528else(Cgoto.NEW_MUTABLE_INSTANCE);
            return this;
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType internalMergeFrom(MessageType messagetype) {
            return (BuilderType) m19547break(messagetype);
        }

        @Override // com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public MessageType buildPartial() {
            if (this.f16480for) {
                return this.f16481if;
            }
            this.f16481if.m19533super();
            this.f16480for = true;
            return this.f16481if;
        }

        @Override // com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return GeneratedMessageLite.m19507final(this.f16481if, false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.AbstractMessageLite.Cdo
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public BuilderType mo18392clone() {
            Cnew cnew = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            cnew.m19547break(buildPartial());
            return cnew;
        }

        @Override // com.google.protobuf.AbstractMessageLite.Cdo, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public BuilderType mergeFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            m19558try();
            try {
                q0.m21002do().m21003break(this.f16481if).mergeFrom(this.f16481if, Cimport.m20614do(codedInputStream), cimplements);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }

        /* renamed from: try, reason: not valid java name */
        public final void m19558try() {
            if (this.f16480for) {
                mo19548case();
                this.f16480for = false;
            }
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$new, reason: invalid class name */
    public static abstract class Cnew<MessageType extends Ctry<MessageType, BuilderType>, BuilderType extends Cnew<MessageType, BuilderType>> extends Cif<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType, BuilderType> {
        public Cnew(MessageType messagetype) {
            super(messagetype);
        }

        /* renamed from: return, reason: not valid java name */
        private void m19559return(Celse<MessageType, ?> celse) {
            if (celse.m19542goto() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        /* renamed from: while, reason: not valid java name */
        private FieldSet<Ccase> m19560while() {
            FieldSet<Ccase> fieldSet = ((Ctry) this.f16481if).f16482new;
            if (!fieldSet.m19382abstract()) {
                return fieldSet;
            }
            FieldSet fieldSetM19384catch = fieldSet.clone();
            ((Ctry) this.f16481if).f16482new = fieldSetM19384catch;
            return fieldSetM19384catch;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Cif
        /* renamed from: case */
        public void mo19548case() {
            super.mo19548case();
            MessageType messagetype = this.f16481if;
            ((Ctry) messagetype).f16482new = ((Ctry) messagetype).f16482new.clone();
        }

        /* renamed from: final, reason: not valid java name */
        public final <Type> BuilderType m19561final(Cinterface<MessageType, List<Type>> cinterface, Type type) {
            Celse<MessageType, ?> celseM19509for = GeneratedMessageLite.m19509for(cinterface);
            m19559return(celseM19509for);
            m19558try();
            m19560while().m19388goto(celseM19509for.f16476new, celseM19509for.m19539break(type));
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, Type> cinterface) {
            return (Type) ((Ctry) this.f16481if).getExtension(cinterface);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cinterface<MessageType, List<Type>> cinterface) {
            return ((Ctry) this.f16481if).getExtensionCount(cinterface);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cinterface<MessageType, Type> cinterface) {
            return ((Ctry) this.f16481if).hasExtension(cinterface);
        }

        /* renamed from: import, reason: not valid java name */
        public void m19562import(FieldSet<Ccase> fieldSet) {
            m19558try();
            ((Ctry) this.f16481if).f16482new = fieldSet;
        }

        /* renamed from: native, reason: not valid java name */
        public final <Type> BuilderType m19563native(Cinterface<MessageType, List<Type>> cinterface, int i, Type type) {
            Celse<MessageType, ?> celseM19509for = GeneratedMessageLite.m19509for(cinterface);
            m19559return(celseM19509for);
            m19558try();
            m19560while().c(celseM19509for.f16476new, i, celseM19509for.m19539break(type));
            return this;
        }

        /* renamed from: public, reason: not valid java name */
        public final <Type> BuilderType m19564public(Cinterface<MessageType, Type> cinterface, Type type) {
            Celse<MessageType, ?> celseM19509for = GeneratedMessageLite.m19509for(cinterface);
            m19559return(celseM19509for);
            m19558try();
            m19560while().b(celseM19509for.f16476new, celseM19509for.m19540catch(type));
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.Cif
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public final MessageType buildPartial() {
            if (this.f16480for) {
                return (MessageType) this.f16481if;
            }
            ((Ctry) this.f16481if).f16482new.m19393protected();
            return (MessageType) super.buildPartial();
        }

        /* renamed from: throw, reason: not valid java name */
        public final BuilderType m19566throw(Cinterface<MessageType, ?> cinterface) {
            Celse<MessageType, ?> celseM19509for = GeneratedMessageLite.m19509for(cinterface);
            m19559return(celseM19509for);
            m19558try();
            m19560while().m19383break(celseM19509for.f16476new);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, List<Type>> cinterface, int i) {
            return (Type) ((Ctry) this.f16481if).getExtension(cinterface, i);
        }
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$this, reason: invalid class name */
    public static final class Cthis implements Serializable {
        private static final long serialVersionUID = 0;
        private final byte[] asBytes;
        private final Class<?> messageClass;
        private final String messageClassName;

        public Cthis(MessageLite messageLite) {
            Class<?> cls = messageLite.getClass();
            this.messageClass = cls;
            this.messageClassName = cls.getName();
            this.asBytes = messageLite.toByteArray();
        }

        @Deprecated
        /* renamed from: do, reason: not valid java name */
        private Object m19567do() throws ObjectStreamException, NoSuchFieldException {
            try {
                Field declaredField = m19568if().getDeclaredField("defaultInstance");
                declaredField.setAccessible(true);
                return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (n e) {
                throw new RuntimeException("Unable to understand proto buffer", e);
            } catch (ClassNotFoundException e2) {
                String strValueOf = String.valueOf(this.messageClassName);
                throw new RuntimeException(strValueOf.length() != 0 ? "Unable to find proto buffer class: ".concat(strValueOf) : new String("Unable to find proto buffer class: "), e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException("Unable to call parsePartialFrom", e3);
            } catch (NoSuchFieldException e4) {
                String strValueOf2 = String.valueOf(this.messageClassName);
                throw new RuntimeException(strValueOf2.length() != 0 ? "Unable to find defaultInstance in ".concat(strValueOf2) : new String("Unable to find defaultInstance in "), e4);
            } catch (SecurityException e5) {
                String strValueOf3 = String.valueOf(this.messageClassName);
                throw new RuntimeException(strValueOf3.length() != 0 ? "Unable to call defaultInstance in ".concat(strValueOf3) : new String("Unable to call defaultInstance in "), e5);
            }
        }

        /* renamed from: if, reason: not valid java name */
        private Class<?> m19568if() throws ClassNotFoundException {
            Class<?> cls = this.messageClass;
            return cls != null ? cls : Class.forName(this.messageClassName);
        }

        public static Cthis of(MessageLite messageLite) {
            return new Cthis(messageLite);
        }

        public Object readResolve() throws ObjectStreamException, NoSuchFieldException {
            try {
                Field declaredField = m19568if().getDeclaredField("DEFAULT_INSTANCE");
                declaredField.setAccessible(true);
                return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (n e) {
                throw new RuntimeException("Unable to understand proto buffer", e);
            } catch (ClassNotFoundException e2) {
                String strValueOf = String.valueOf(this.messageClassName);
                throw new RuntimeException(strValueOf.length() != 0 ? "Unable to find proto buffer class: ".concat(strValueOf) : new String("Unable to find proto buffer class: "), e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException("Unable to call parsePartialFrom", e3);
            } catch (NoSuchFieldException unused) {
                return m19567do();
            } catch (SecurityException e4) {
                String strValueOf2 = String.valueOf(this.messageClassName);
                throw new RuntimeException(strValueOf2.length() != 0 ? "Unable to call DEFAULT_INSTANCE in ".concat(strValueOf2) : new String("Unable to call DEFAULT_INSTANCE in "), e4);
            }
        }
    }

    public static <T extends GeneratedMessageLite<T, ?>> T a(T t, byte[] bArr, int i, int i2, Cimplements cimplements) throws n {
        T t2 = (T) t.m19528else(Cgoto.NEW_MUTABLE_INSTANCE);
        try {
            Schema schemaM21003break = q0.m21002do().m21003break(t2);
            schemaM21003break.mergeFrom(t2, bArr, i, i + i2, new Cthis.Cif(cimplements));
            schemaM21003break.makeImmutable(t2);
            if (t2.memoizedHashCode == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (e.getCause() instanceof n) {
                throw ((n) e.getCause());
            }
            throw new n(e.getMessage()).setUnfinishedMessage(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw n.truncatedMessage().setUnfinishedMessage(t2);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19499abstract(T t, InputStream inputStream) throws n {
        return (T) m19514new(m19522synchronized(t, CodedInputStream.m18408break(inputStream), Cimplements.m20607new()));
    }

    private static <T extends GeneratedMessageLite<T, ?>> T b(T t, byte[] bArr, Cimplements cimplements) throws n {
        return (T) m19514new(a(t, bArr, 0, bArr.length, cimplements));
    }

    /* renamed from: break, reason: not valid java name */
    public static <E> Internal.ProtobufList<E> m19500break() {
        return r0.m21045for();
    }

    /* renamed from: catch, reason: not valid java name */
    private final void m19501catch() {
        if (this.f16465do == u1.m21421for()) {
            this.f16465do = u1.m21420final();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static <T extends GeneratedMessageLite<?, ?>> T m19502class(Class<T> cls) throws ClassNotFoundException {
        GeneratedMessageLite<?, ?> generatedMessageLite = f16464for.get(cls);
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite = f16464for.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (generatedMessageLite == null) {
            generatedMessageLite = (T) ((GeneratedMessageLite) z1.m21657break(cls)).getDefaultInstanceForType();
            if (generatedMessageLite == null) {
                throw new IllegalStateException();
            }
            f16464for.put(cls, generatedMessageLite);
        }
        return (T) generatedMessageLite;
    }

    /* renamed from: continue, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19503continue(T t, InputStream inputStream, Cimplements cimplements) throws n {
        return (T) m19514new(m19522synchronized(t, CodedInputStream.m18408break(inputStream), cimplements));
    }

    public static <T extends GeneratedMessageLite<?, ?>> void d(Class<T> cls, T t) {
        f16464for.put(cls, t);
    }

    /* renamed from: default, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19504default(T t, InputStream inputStream, Cimplements cimplements) throws n {
        return (T) m19514new(m19524transient(t, inputStream, cimplements));
    }

    public static Internal.BooleanList emptyBooleanList() {
        return Cconst.m20167try();
    }

    public static Internal.DoubleList emptyDoubleList() {
        return Cswitch.m21167try();
    }

    public static Internal.FloatList emptyFloatList() {
        return h.m20546try();
    }

    public static Internal.IntList emptyIntList() {
        return m.m20821try();
    }

    public static Internal.LongList emptyLongList() {
        return v.m21442try();
    }

    /* renamed from: extends, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19506extends(T t, ByteString byteString) throws n {
        return (T) m19514new(m19508finally(t, byteString, Cimplements.m20607new()));
    }

    /* renamed from: final, reason: not valid java name */
    public static final <T extends GeneratedMessageLite<T, ?>> boolean m19507final(T t, boolean z) {
        byte bByteValue = ((Byte) t.m19528else(Cgoto.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zIsInitialized = q0.m21002do().m21003break(t).isInitialized(t);
        if (z) {
            t.m19529goto(Cgoto.SET_MEMOIZED_IS_INITIALIZED, zIsInitialized ? t : null);
        }
        return zIsInitialized;
    }

    /* renamed from: finally, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19508finally(T t, ByteString byteString, Cimplements cimplements) throws n {
        return (T) m19514new(m19510implements(t, byteString, cimplements));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static <MessageType extends Ctry<MessageType, BuilderType>, BuilderType extends Cnew<MessageType, BuilderType>, T> Celse<MessageType, T> m19509for(Cinterface<MessageType, T> cinterface) {
        if (cinterface.mo20622try()) {
            return (Celse) cinterface;
        }
        throw new IllegalArgumentException("Expected a lite extension.");
    }

    public static Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            String name = cls.getName();
            StringBuilder sb = new StringBuilder(name.length() + 45 + String.valueOf(str).length());
            sb.append("Generated message class \"");
            sb.append(name);
            sb.append("\" missing method \"");
            sb.append(str);
            sb.append("\".");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: implements, reason: not valid java name */
    private static <T extends GeneratedMessageLite<T, ?>> T m19510implements(T t, ByteString byteString, Cimplements cimplements) throws n {
        try {
            CodedInputStream codedInputStreamNewCodedInput = byteString.newCodedInput();
            T t2 = (T) m19522synchronized(t, codedInputStreamNewCodedInput, cimplements);
            try {
                codedInputStreamNewCodedInput.mo18423do(0);
                return t2;
            } catch (n e) {
                throw e.setUnfinishedMessage(t2);
            }
        } catch (n e2) {
            throw e2;
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19511instanceof(T t, CodedInputStream codedInputStream) throws n {
        return (T) m19522synchronized(t, codedInputStream, Cimplements.m20607new());
    }

    /* renamed from: interface, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19512interface(T t, byte[] bArr) throws n {
        return (T) m19514new(a(t, bArr, 0, bArr.length, Cimplements.m20607new()));
    }

    public static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$IntList] */
    public static Internal.IntList mutableCopy(Internal.IntList intList) {
        int size = intList.size();
        return intList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    /* renamed from: native, reason: not valid java name */
    public static <E> Internal.ProtobufList<E> m19513native(Internal.ProtobufList<E> protobufList) {
        int size = protobufList.size();
        return protobufList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    /* renamed from: new, reason: not valid java name */
    private static <T extends GeneratedMessageLite<T, ?>> T m19514new(T t) throws n {
        if (t == null || t.isInitialized()) {
            return t;
        }
        throw t.newUninitializedMessageException().asInvalidProtocolBufferException().setUnfinishedMessage(t);
    }

    /* renamed from: package, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19515package(T t, CodedInputStream codedInputStream) throws n {
        return (T) m19516private(t, codedInputStream, Cimplements.m20607new());
    }

    /* renamed from: private, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19516private(T t, CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        return (T) m19514new(m19522synchronized(t, codedInputStream, cimplements));
    }

    /* renamed from: protected, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19517protected(T t, byte[] bArr, Cimplements cimplements) throws n {
        return (T) m19514new(a(t, bArr, 0, bArr.length, cimplements));
    }

    /* renamed from: return, reason: not valid java name */
    public static Object m19518return(MessageLite messageLite, String str, Object[] objArr) {
        return new t0(messageLite, str, objArr);
    }

    /* renamed from: static, reason: not valid java name */
    public static <ContainingType extends MessageLite, Type> Celse<ContainingType, Type> m19519static(ContainingType containingtype, MessageLite messageLite, Internal.EnumLiteMap<?> enumLiteMap, int i, c2.Cif cif, boolean z, Class cls) {
        return new Celse<>(containingtype, Collections.emptyList(), messageLite, new Ccase(enumLiteMap, i, cif, true, z), cls);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19520strictfp(T t, ByteBuffer byteBuffer) throws n {
        return (T) m19525volatile(t, byteBuffer, Cimplements.m20607new());
    }

    /* renamed from: switch, reason: not valid java name */
    public static <ContainingType extends MessageLite, Type> Celse<ContainingType, Type> m19521switch(ContainingType containingtype, Type type, MessageLite messageLite, Internal.EnumLiteMap<?> enumLiteMap, int i, c2.Cif cif, Class cls) {
        return new Celse<>(containingtype, type, messageLite, new Ccase(enumLiteMap, i, cif, false, false), cls);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19522synchronized(T t, CodedInputStream codedInputStream, Cimplements cimplements) throws n {
        T t2 = (T) t.m19528else(Cgoto.NEW_MUTABLE_INSTANCE);
        try {
            Schema schemaM21003break = q0.m21002do().m21003break(t2);
            schemaM21003break.mergeFrom(t2, Cimport.m20614do(codedInputStream), cimplements);
            schemaM21003break.makeImmutable(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof n) {
                throw ((n) e.getCause());
            }
            throw new n(e.getMessage()).setUnfinishedMessage(t2);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof n) {
                throw ((n) e2.getCause());
            }
            throw e2;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19523throws(T t, InputStream inputStream) throws n {
        return (T) m19514new(m19524transient(t, inputStream, Cimplements.m20607new()));
    }

    /* renamed from: transient, reason: not valid java name */
    private static <T extends GeneratedMessageLite<T, ?>> T m19524transient(T t, InputStream inputStream, Cimplements cimplements) throws IOException {
        try {
            int i = inputStream.read();
            if (i == -1) {
                return null;
            }
            CodedInputStream codedInputStreamM18408break = CodedInputStream.m18408break(new AbstractMessageLite.Cdo.C0156do(inputStream, CodedInputStream.b(i, inputStream)));
            T t2 = (T) m19522synchronized(t, codedInputStreamM18408break, cimplements);
            try {
                codedInputStreamM18408break.mo18423do(0);
                return t2;
            } catch (n e) {
                throw e.setUnfinishedMessage(t2);
            }
        } catch (IOException e2) {
            throw new n(e2.getMessage());
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public static <T extends GeneratedMessageLite<T, ?>> T m19525volatile(T t, ByteBuffer byteBuffer, Cimplements cimplements) throws n {
        return (T) m19514new(m19516private(t, CodedInputStream.m18412final(byteBuffer), cimplements));
    }

    public boolean c(int i, CodedInputStream codedInputStream) throws IOException {
        if (c2.m19964if(i) == 4) {
            return false;
        }
        m19501catch();
        return this.f16465do.m21435this(i, codedInputStream);
    }

    /* renamed from: case, reason: not valid java name */
    public final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Cif<MessageType, BuilderType>> BuilderType m19526case(MessageType messagetype) {
        return (BuilderType) m19536try().m19547break(messagetype);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public final MessageType getDefaultInstanceForType() {
        return (MessageType) m19528else(Cgoto.GET_DEFAULT_INSTANCE);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final BuilderType toBuilder() {
        BuilderType buildertype = (BuilderType) m19528else(Cgoto.NEW_BUILDER);
        buildertype.m19547break(this);
        return buildertype;
    }

    /* renamed from: else, reason: not valid java name */
    public Object m19528else(Cgoto cgoto) {
        return m19534this(cgoto, null, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return q0.m21002do().m21003break(this).equals(this, (GeneratedMessageLite) obj);
        }
        return false;
    }

    @Override // com.google.protobuf.AbstractMessageLite
    public int getMemoizedSerializedSize() {
        return this.f16466if;
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    public final Parser<MessageType> getParserForType() {
        return (Parser) m19528else(Cgoto.GET_PARSER);
    }

    @Override // com.google.protobuf.MessageLite
    public int getSerializedSize() {
        if (this.f16466if == -1) {
            this.f16466if = q0.m21002do().m21003break(this).getSerializedSize(this);
        }
        return this.f16466if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Object m19529goto(Cgoto cgoto, Object obj) {
        return m19534this(cgoto, obj, null);
    }

    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = q0.m21002do().m21003break(this).hashCode(this);
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    /* renamed from: if, reason: not valid java name */
    public Object m19530if() throws Exception {
        return m19528else(Cgoto.BUILD_MESSAGE_INFO);
    }

    /* renamed from: import, reason: not valid java name */
    public void m19531import(int i, int i2) {
        m19501catch();
        this.f16465do.m21427class(i, i2);
    }

    @Override // com.google.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        return m19507final(this, true);
    }

    @Override // com.google.protobuf.MessageLite, com.google.protobuf.Message
    /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
    public final BuilderType newBuilderForType() {
        return (BuilderType) m19528else(Cgoto.NEW_BUILDER);
    }

    @Override // com.google.protobuf.AbstractMessageLite
    public void setMemoizedSerializedSize(int i) {
        this.f16466if = i;
    }

    /* renamed from: super, reason: not valid java name */
    public void m19533super() {
        q0.m21002do().m21003break(this).makeImmutable(this);
    }

    /* renamed from: this, reason: not valid java name */
    public abstract Object m19534this(Cgoto cgoto, Object obj, Object obj2);

    /* renamed from: throw, reason: not valid java name */
    public void m19535throw(int i, ByteString byteString) {
        m19501catch();
        this.f16465do.m21426catch(i, byteString);
    }

    public String toString() {
        return d0.m20251try(this, super.toString());
    }

    /* renamed from: try, reason: not valid java name */
    public final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Cif<MessageType, BuilderType>> BuilderType m19536try() {
        return (BuilderType) m19528else(Cgoto.NEW_BUILDER);
    }

    /* renamed from: while, reason: not valid java name */
    public final void m19537while(u1 u1Var) {
        this.f16465do = u1.m21418const(this.f16465do, u1Var);
    }

    @Override // com.google.protobuf.MessageLite
    public void writeTo(Cnative cnative) throws IOException {
        q0.m21002do().m21003break(this).writeTo(this, Cpublic.m20991do(cnative));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$LongList] */
    public static Internal.LongList mutableCopy(Internal.LongList longList) {
        int size = longList.size();
        return longList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    /* renamed from: com.google.protobuf.GeneratedMessageLite$try, reason: invalid class name */
    public static abstract class Ctry<MessageType extends Ctry<MessageType, BuilderType>, BuilderType extends Cnew<MessageType, BuilderType>> extends GeneratedMessageLite<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType, BuilderType> {

        /* renamed from: new, reason: not valid java name */
        public FieldSet<Ccase> f16482new = FieldSet.m19372native();

        /* renamed from: com.google.protobuf.GeneratedMessageLite$try$do, reason: invalid class name */
        public class Cdo {

            /* renamed from: do, reason: not valid java name */
            private final Iterator<Map.Entry<Ccase, Object>> f16483do;

            /* renamed from: for, reason: not valid java name */
            private final boolean f16484for;

            /* renamed from: if, reason: not valid java name */
            private Map.Entry<Ccase, Object> f16485if;

            public /* synthetic */ Cdo(Ctry ctry, boolean z, Cdo cdo) {
                this(z);
            }

            /* renamed from: do, reason: not valid java name */
            public void m19569do(int i, Cnative cnative) throws IOException {
                while (true) {
                    Map.Entry<Ccase, Object> entry = this.f16485if;
                    if (entry == null || entry.getKey().getNumber() >= i) {
                        return;
                    }
                    Ccase key = this.f16485if.getKey();
                    if (this.f16484for && key.getLiteJavaType() == c2.Cfor.MESSAGE && !key.isRepeated()) {
                        cnative.j0(key.getNumber(), (MessageLite) this.f16485if.getValue());
                    } else {
                        FieldSet.g(key, this.f16485if.getValue(), cnative);
                    }
                    if (this.f16483do.hasNext()) {
                        this.f16485if = this.f16483do.next();
                    } else {
                        this.f16485if = null;
                    }
                }
            }

            private Cdo(boolean z) {
                Iterator itM19390interface = Ctry.this.f16482new.m19390interface();
                this.f16483do = itM19390interface;
                if (itM19390interface.hasNext()) {
                    this.f16485if = (Map.Entry) itM19390interface.next();
                }
                this.f16484for = z;
            }
        }

        private void f(CodedInputStream codedInputStream, Celse<?, ?> celse, Cimplements cimplements, int i) throws IOException {
            m(codedInputStream, cimplements, celse, c2.m19963for(i, 2), i);
        }

        private void i(ByteString byteString, Cimplements cimplements, Celse<?, ?> celse) throws IOException {
            MessageLite messageLite = (MessageLite) this.f16482new.m19395return(celse.f16476new);
            MessageLite.Builder builder = messageLite != null ? messageLite.toBuilder() : null;
            if (builder == null) {
                builder = celse.mo19450for().newBuilderForType();
            }
            builder.mergeFrom(byteString, cimplements);
            g().b(celse.f16476new, celse.m19539break(builder.build()));
        }

        private <MessageType extends MessageLite> void j(MessageType messagetype, CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
            int iM = 0;
            ByteString byteStringMo18443throws = null;
            Celse<?, ?> celseM20609for = null;
            while (true) {
                int iL = codedInputStream.l();
                if (iL == 0) {
                    break;
                }
                if (iL == c2.f16693native) {
                    iM = codedInputStream.m();
                    if (iM != 0) {
                        celseM20609for = cimplements.m20609for(messagetype, iM);
                    }
                } else if (iL == c2.f16695public) {
                    if (iM == 0 || celseM20609for == null) {
                        byteStringMo18443throws = codedInputStream.mo18443throws();
                    } else {
                        f(codedInputStream, celseM20609for, cimplements, iM);
                        byteStringMo18443throws = null;
                    }
                } else if (!codedInputStream.t(iL)) {
                    break;
                }
            }
            codedInputStream.mo18423do(c2.f16692import);
            if (byteStringMo18443throws == null || iM == 0) {
                return;
            }
            if (celseM20609for != null) {
                i(byteStringMo18443throws, cimplements, celseM20609for);
            } else {
                m19535throw(iM, byteStringMo18443throws);
            }
        }

        private boolean m(CodedInputStream codedInputStream, Cimplements cimplements, Celse<?, ?> celse, int i, int i2) throws IOException {
            boolean z;
            boolean z2;
            Object objBuild;
            MessageLite messageLite;
            int iM19964if = c2.m19964if(i);
            if (celse == null) {
                z = true;
                z2 = false;
            } else if (iM19964if == FieldSet.m19367finally(celse.f16476new.getLiteType(), false)) {
                z = false;
                z2 = false;
            } else {
                Ccase ccase = celse.f16476new;
                if (ccase.f16470new && ccase.f16468for.isPackable() && iM19964if == FieldSet.m19367finally(celse.f16476new.getLiteType(), true)) {
                    z = false;
                    z2 = true;
                }
                z = true;
                z2 = false;
            }
            if (z) {
                return c(i, codedInputStream);
            }
            g();
            if (z2) {
                int iMo18436public = codedInputStream.mo18436public(codedInputStream.a());
                if (celse.f16476new.getLiteType() == c2.Cif.ENUM) {
                    while (codedInputStream.mo18420case() > 0) {
                        Internal.EnumLite enumLiteFindValueByNumber = celse.f16476new.getEnumType().findValueByNumber(codedInputStream.mo18425extends());
                        if (enumLiteFindValueByNumber == null) {
                            return true;
                        }
                        this.f16482new.m19388goto(celse.f16476new, celse.m19539break(enumLiteFindValueByNumber));
                    }
                } else {
                    while (codedInputStream.mo18420case() > 0) {
                        this.f16482new.m19388goto(celse.f16476new, FieldSet.a(codedInputStream, celse.f16476new.getLiteType(), false));
                    }
                }
                codedInputStream.mo18431native(iMo18436public);
            } else {
                int i3 = Cdo.f16472do[celse.f16476new.getLiteJavaType().ordinal()];
                if (i3 == 1) {
                    MessageLite.Builder builderNewBuilderForType = null;
                    if (!celse.f16476new.isRepeated() && (messageLite = (MessageLite) this.f16482new.m19395return(celse.f16476new)) != null) {
                        builderNewBuilderForType = messageLite.toBuilder();
                    }
                    if (builderNewBuilderForType == null) {
                        builderNewBuilderForType = celse.mo19450for().newBuilderForType();
                    }
                    if (celse.f16476new.getLiteType() == c2.Cif.GROUP) {
                        codedInputStream.mo18421continue(celse.mo19453new(), builderNewBuilderForType, cimplements);
                    } else {
                        codedInputStream.mo18435protected(builderNewBuilderForType, cimplements);
                    }
                    objBuild = builderNewBuilderForType.build();
                } else if (i3 != 2) {
                    objBuild = FieldSet.a(codedInputStream, celse.f16476new.getLiteType(), false);
                } else {
                    int iMo18425extends = codedInputStream.mo18425extends();
                    Internal.EnumLite enumLiteFindValueByNumber2 = celse.f16476new.getEnumType().findValueByNumber(iMo18425extends);
                    if (enumLiteFindValueByNumber2 == null) {
                        m19531import(i2, iMo18425extends);
                        return true;
                    }
                    objBuild = enumLiteFindValueByNumber2;
                }
                if (celse.f16476new.isRepeated()) {
                    this.f16482new.m19388goto(celse.f16476new, celse.m19539break(objBuild));
                } else {
                    this.f16482new.b(celse.f16476new, celse.m19539break(objBuild));
                }
            }
            return true;
        }

        private void p(Celse<MessageType, ?> celse) {
            if (celse.m19542goto() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        public boolean extensionsAreInitialized() {
            return this.f16482new.m19385continue();
        }

        public int extensionsSerializedSize() {
            return this.f16482new.m19387extends();
        }

        public int extensionsSerializedSizeAsMessageSet() {
            return this.f16482new.m19396static();
        }

        public FieldSet<Ccase> g() {
            if (this.f16482new.m19382abstract()) {
                this.f16482new = this.f16482new.clone();
            }
            return this.f16482new;
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public /* bridge */ /* synthetic */ MessageLite getDefaultInstanceForType() {
            return super.getDefaultInstanceForType();
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, Type> cinterface) {
            Celse<MessageType, ?> celseM19509for = GeneratedMessageLite.m19509for(cinterface);
            p(celseM19509for);
            Object objM19395return = this.f16482new.m19395return(celseM19509for.f16476new);
            return objM19395return == null ? celseM19509for.f16475if : (Type) celseM19509for.m19541else(objM19395return);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> int getExtensionCount(Cinterface<MessageType, List<Type>> cinterface) {
            Celse<MessageType, ?> celseM19509for = GeneratedMessageLite.m19509for(cinterface);
            p(celseM19509for);
            return this.f16482new.m19386default(celseM19509for.f16476new);
        }

        public final void h(MessageType messagetype) {
            if (this.f16482new.m19382abstract()) {
                this.f16482new = this.f16482new.clone();
            }
            this.f16482new.m19399transient(messagetype.f16482new);
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> boolean hasExtension(Cinterface<MessageType, Type> cinterface) {
            Celse<MessageType, ?> celseM19509for = GeneratedMessageLite.m19509for(cinterface);
            p(celseM19509for);
            return this.f16482new.m19391package(celseM19509for.f16476new);
        }

        public Ctry<MessageType, BuilderType>.Cdo k() {
            return new Cdo(this, false, null);
        }

        public Ctry<MessageType, BuilderType>.Cdo l() {
            return new Cdo(this, true, null);
        }

        public <MessageType extends MessageLite> boolean n(MessageType messagetype, CodedInputStream codedInputStream, Cimplements cimplements, int i) throws IOException {
            int iM19962do = c2.m19962do(i);
            return m(codedInputStream, cimplements, cimplements.m20609for(messagetype, iM19962do), i, iM19962do);
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public /* bridge */ /* synthetic */ MessageLite.Builder newBuilderForType() {
            return super.newBuilderForType();
        }

        public <MessageType extends MessageLite> boolean o(MessageType messagetype, CodedInputStream codedInputStream, Cimplements cimplements, int i) throws IOException {
            if (i != c2.f16700while) {
                return c2.m19964if(i) == 2 ? n(messagetype, codedInputStream, cimplements, i) : codedInputStream.t(i);
            }
            j(messagetype, codedInputStream, cimplements);
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public /* bridge */ /* synthetic */ MessageLite.Builder toBuilder() {
            return super.toBuilder();
        }

        @Override // com.google.protobuf.GeneratedMessageLite.ExtendableMessageOrBuilder
        public final <Type> Type getExtension(Cinterface<MessageType, List<Type>> cinterface, int i) {
            Celse<MessageType, ?> celseM19509for = GeneratedMessageLite.m19509for(cinterface);
            p(celseM19509for);
            return (Type) celseM19509for.m19543this(this.f16482new.m19398throws(celseM19509for.f16476new, i));
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$FloatList] */
    public static Internal.FloatList mutableCopy(Internal.FloatList floatList) {
        int size = floatList.size();
        return floatList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$DoubleList] */
    public static Internal.DoubleList mutableCopy(Internal.DoubleList doubleList) {
        int size = doubleList.size();
        return doubleList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.Internal$BooleanList] */
    public static Internal.BooleanList mutableCopy(Internal.BooleanList booleanList) {
        int size = booleanList.size();
        return booleanList.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
    }
}
