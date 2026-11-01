.class public Lcom/googlecode/protobuf/format/this;
.super Lcom/googlecode/protobuf/format/else;
.source "SourceFile"


# static fields
.field private static try:Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    sput-object v0, Lcom/googlecode/protobuf/format/this;->try:Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/googlecode/protobuf/format/else;-><init>()V

    return-void
.end method


# virtual methods
.method public const(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/googlecode/protobuf/format/this;->try:Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->WRITE_HEADER:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->enable(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->WRITE_END_MARKER:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->enable(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object p1
.end method

.method public new(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/googlecode/protobuf/format/this;->try:Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p3, p4}, Lcom/googlecode/protobuf/format/else;->import(Lcom/fasterxml/jackson/core/JsonParser;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method
