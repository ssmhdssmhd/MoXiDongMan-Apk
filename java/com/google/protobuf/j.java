package com.google.protobuf;

/* loaded from: classes2.dex */
class j implements MessageInfoFactory {

    /* renamed from: do, reason: not valid java name */
    private static final j f16999do = new j();

    private j() {
    }

    /* renamed from: do, reason: not valid java name */
    public static j m20623do() {
        return f16999do;
    }

    @Override // com.google.protobuf.MessageInfoFactory
    public boolean isSupported(Class<?> cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }

    @Override // com.google.protobuf.MessageInfoFactory
    public MessageInfo messageInfoFor(Class<?> cls) {
        if (!GeneratedMessageLite.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (MessageInfo) GeneratedMessageLite.m19502class(cls.asSubclass(GeneratedMessageLite.class)).m19530if();
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }
}
