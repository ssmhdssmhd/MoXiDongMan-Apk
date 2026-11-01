package com.google.protobuf;

/* renamed from: com.google.protobuf.static, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cstatic {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.protobuf.static$do, reason: invalid class name */
    public class Cdo<T> extends com.google.protobuf.Cdo<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Parser f17211do;

        public Cdo(Parser parser) {
            this.f17211do = parser;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)TT; */
        @Override // com.google.protobuf.Parser
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Message parsePartialFrom(CodedInputStream codedInputStream, Cimplements cimplements) throws n {
            try {
                codedInputStream.m18432new();
                return (Message) this.f17211do.parsePartialFrom(codedInputStream, cimplements);
            } finally {
                codedInputStream.y();
            }
        }
    }

    private Cstatic() {
    }

    /* renamed from: do, reason: not valid java name */
    public static final <T extends Message> Parser<T> m21153do(Parser<T> parser) {
        return new Cdo(parser);
    }
}
