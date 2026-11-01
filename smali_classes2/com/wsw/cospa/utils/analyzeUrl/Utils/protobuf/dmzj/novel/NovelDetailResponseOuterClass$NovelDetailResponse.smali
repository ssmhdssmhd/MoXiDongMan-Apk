.class public final Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NovelDetailResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

.field public static final ERRMSG_FIELD_NUMBER:I = 0x2

.field public static final ERRNO_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private data_:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

.field private volatile errmsg_:Ljava/lang/Object;

.field private errno_:I

.field private memoizedIsInitialized:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$1;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errmsg_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    const/16 v4, 0x12

    if-eq v2, v4, :cond_3

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 13
    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->data_:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    move-result-object v2

    .line 15
    :cond_2
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->interface(Lcom/google/protobuf/Parser;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->data_:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v2, v3}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;

    .line 17
    invoke-virtual {v2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse$Builder;->buildPartial()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->data_:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errmsg_:Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errno_:I
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    new-instance p2, Lcom/google/protobuf/n;

    invoke-direct {p2, p1}, Lcom/google/protobuf/n;-><init>(Ljava/io/IOException;)V

    .line 22
    invoke-virtual {p2, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 25
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 26
    throw p1

    .line 27
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$if<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V

    return-void
.end method

.method public static synthetic access$1000()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$1100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$602(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errno_:I

    return p1
.end method

.method public static synthetic access$700(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errmsg_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errmsg_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$802(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->data_:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;)Lcom/google/protobuf/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->access$000()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/implements;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getErrno()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getErrno()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getErrmsg()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getErrmsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->hasData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->hasData()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->hasData()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getData()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getData()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/t1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method public getData()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->data_:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->getDefaultInstance()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDataOrBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponseOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getData()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    return-object v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errmsg_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errmsg_:Ljava/lang/Object;

    return-object v0
.end method

.method public getErrmsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errmsg_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errmsg_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getErrno()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errno_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errno_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getErrmsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errmsg_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->data_:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getData()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->data_:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getErrno()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getErrmsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->hasData()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getData()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    const-class v2, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->newBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$try;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    invoke-direct {p1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->DEFAULT_INSTANCE:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$1;)V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;->mergeFrom(Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/native;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errno_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getErrmsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->errmsg_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->data_:Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailResponse;->getData()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelDetailResponseOuterClass$NovelDetailInfoResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/native;->f0(ILcom/google/protobuf/MessageLite;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1;->writeTo(Lcom/google/protobuf/native;)V

    return-void
.end method
