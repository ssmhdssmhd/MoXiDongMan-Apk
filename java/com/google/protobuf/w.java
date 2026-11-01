package com.google.protobuf;

/* loaded from: classes2.dex */
final class w implements SchemaFactory {

    /* renamed from: if, reason: not valid java name */
    private static final MessageInfoFactory f17297if = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private final MessageInfoFactory f17298do;

    /* renamed from: com.google.protobuf.w$do, reason: invalid class name */
    public class Cdo implements MessageInfoFactory {
        @Override // com.google.protobuf.MessageInfoFactory
        public boolean isSupported(Class<?> cls) {
            return false;
        }

        @Override // com.google.protobuf.MessageInfoFactory
        public MessageInfo messageInfoFor(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }
    }

    /* renamed from: com.google.protobuf.w$if, reason: invalid class name */
    public static class Cif implements MessageInfoFactory {

        /* renamed from: do, reason: not valid java name */
        private MessageInfoFactory[] f17299do;

        public Cif(MessageInfoFactory... messageInfoFactoryArr) {
            this.f17299do = messageInfoFactoryArr;
        }

        @Override // com.google.protobuf.MessageInfoFactory
        public boolean isSupported(Class<?> cls) {
            for (MessageInfoFactory messageInfoFactory : this.f17299do) {
                if (messageInfoFactory.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.protobuf.MessageInfoFactory
        public MessageInfo messageInfoFor(Class<?> cls) {
            for (MessageInfoFactory messageInfoFactory : this.f17299do) {
                if (messageInfoFactory.isSupported(cls)) {
                    return messageInfoFactory.messageInfoFor(cls);
                }
            }
            String name = cls.getName();
            throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
        }
    }

    public w() {
        this(m21494do());
    }

    /* renamed from: do, reason: not valid java name */
    private static MessageInfoFactory m21494do() {
        return new Cif(j.m20623do(), m21496if());
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m21495for(MessageInfo messageInfo) {
        return messageInfo.getSyntax() == p0.PROTO2;
    }

    /* renamed from: if, reason: not valid java name */
    private static MessageInfoFactory m21496if() {
        try {
            return (MessageInfoFactory) Class.forName("com.google.protobuf.return").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f17297if;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static <T> Schema<T> m21497new(Class<T> cls, MessageInfo messageInfo) {
        return GeneratedMessageLite.class.isAssignableFrom(cls) ? m21495for(messageInfo) ? e0.m20324protected(cls, messageInfo, k0.m20769if(), t.m21175if(), y0.f(), b.m19800if(), c0.m19942if()) : e0.m20324protected(cls, messageInfo, k0.m20769if(), t.m21175if(), y0.f(), null, c0.m19942if()) : m21495for(messageInfo) ? e0.m20324protected(cls, messageInfo, k0.m20767do(), t.m21174do(), y0.m21615implements(), b.m19798do(), c0.m19940do()) : e0.m20324protected(cls, messageInfo, k0.m20767do(), t.m21174do(), y0.m21617instanceof(), null, c0.m19940do());
    }

    @Override // com.google.protobuf.SchemaFactory
    public <T> Schema<T> createSchema(Class<T> cls) {
        y0.m21630synchronized(cls);
        MessageInfo messageInfoMessageInfoFor = this.f17298do.messageInfoFor(cls);
        return messageInfoMessageInfoFor.isMessageSetWireFormat() ? GeneratedMessageLite.class.isAssignableFrom(cls) ? f0.m20406for(y0.f(), b.m19800if(), messageInfoMessageInfoFor.getDefaultInstance()) : f0.m20406for(y0.m21615implements(), b.m19798do(), messageInfoMessageInfoFor.getDefaultInstance()) : m21497new(cls, messageInfoMessageInfoFor);
    }

    private w(MessageInfoFactory messageInfoFactory) {
        this.f17298do = (MessageInfoFactory) Internal.m19632try(messageInfoFactory, "messageInfoFactory");
    }
}
