.class public final Lcom/google/protobuf/compiler/PluginProtos$if;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/compiler/PluginProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/compiler/PluginProtos$if$if;
    }
.end annotation


# static fields
.field public static final COMPILER_VERSION_FIELD_NUMBER:I = 0x3

.field public static final FILE_TO_GENERATE_FIELD_NUMBER:I = 0x1

.field public static final PARAMETER_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/compiler/PluginProtos$if;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTO_FILE_FIELD_NUMBER:I = 0xf

.field private static final do:Lcom/google/protobuf/compiler/PluginProtos$if;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private compilerVersion_:Lcom/google/protobuf/compiler/PluginProtos$for;

.field private fileToGenerate_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private volatile parameter_:Ljava/lang/Object;

.field private protoFile_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$goto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$if;

    invoke-direct {v0}, Lcom/google/protobuf/compiler/PluginProtos$if;-><init>()V

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->do:Lcom/google/protobuf/compiler/PluginProtos$if;

    .line 2
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$if$do;

    invoke-direct {v0}, Lcom/google/protobuf/compiler/PluginProtos$if$do;-><init>()V

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->memoizedIsInitialized:B

    .line 7
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->parameter_:Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    const/16 v5, 0xa

    if-eq v3, v5, :cond_7

    const/16 v5, 0x12

    if-eq v3, v5, :cond_6

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_3

    const/16 v5, 0x7a

    if-eq v3, v5, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_2

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 16
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    sget-object v4, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    .line 17
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->interface(Lcom/google/protobuf/Parser;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    .line 18
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 19
    iget v4, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 20
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->compilerVersion_:Lcom/google/protobuf/compiler/PluginProtos$for;

    invoke-virtual {v3}, Lcom/google/protobuf/compiler/PluginProtos$for;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object v3

    .line 21
    :cond_4
    sget-object v4, Lcom/google/protobuf/compiler/PluginProtos$for;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->interface(Lcom/google/protobuf/Parser;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/compiler/PluginProtos$for;

    iput-object v4, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->compilerVersion_:Lcom/google/protobuf/compiler/PluginProtos$for;

    if-eqz v3, :cond_5

    .line 22
    invoke-virtual {v3, v4}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->super(Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    .line 23
    invoke-virtual {v3}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->for()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->compilerVersion_:Lcom/google/protobuf/compiler/PluginProtos$for;

    .line 24
    :cond_5
    iget v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 26
    iget v5, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    .line 27
    iput-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->parameter_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_8

    .line 29
    new-instance v4, Lcom/google/protobuf/s;

    invoke-direct {v4}, Lcom/google/protobuf/s;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 30
    :cond_8
    iget-object v4, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    new-instance p2, Lcom/google/protobuf/n;

    invoke-direct {p2, p1}, Lcom/google/protobuf/n;-><init>(Ljava/io/IOException;)V

    .line 32
    invoke-virtual {p2, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 33
    invoke-virtual {p1, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_a

    .line 34
    iget-object p2, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    :cond_a
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_b

    .line 35
    iget-object p2, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    .line 36
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 38
    throw p1

    :cond_c
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_d

    .line 39
    iget-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    :cond_d
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_e

    .line 40
    iget-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    .line 41
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/compiler/PluginProtos$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$if;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V

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
    iput-byte p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/compiler/PluginProtos$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V

    return-void
.end method

.method public static synthetic access$1700()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1900(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method public static synthetic access$1902(Lcom/google/protobuf/compiler/PluginProtos$if;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static synthetic access$2000(Lcom/google/protobuf/compiler/PluginProtos$if;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->parameter_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2002(Lcom/google/protobuf/compiler/PluginProtos$if;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->parameter_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/google/protobuf/compiler/PluginProtos$if;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/google/protobuf/compiler/PluginProtos$if;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2202(Lcom/google/protobuf/compiler/PluginProtos$if;Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$for;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->compilerVersion_:Lcom/google/protobuf/compiler/PluginProtos$for;

    return-object p1
.end method

.method public static synthetic access$2302(Lcom/google/protobuf/compiler/PluginProtos$if;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    return p1
.end method

.method public static synthetic access$2400()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$2500(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->do:Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->for()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->do:Lcom/google/protobuf/compiler/PluginProtos$if;

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$if;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->do:Lcom/google/protobuf/compiler/PluginProtos$if;

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$if;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->interface(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/compiler/PluginProtos$if;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/protobuf/compiler/PluginProtos$if;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$if;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->hasParameter()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->hasParameter()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->hasParameter()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getParameter()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->getParameter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getProtoFileList()Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->getProtoFileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->hasCompilerVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->hasCompilerVersion()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->hasCompilerVersion()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getCompilerVersion()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->getCompilerVersion()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/compiler/PluginProtos$for;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/t1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getCompilerVersion()Lcom/google/protobuf/compiler/PluginProtos$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->compilerVersion_:Lcom/google/protobuf/compiler/PluginProtos$for;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$for;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCompilerVersionOrBuilder()Lcom/google/protobuf/compiler/PluginProtos$VersionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->compilerVersion_:Lcom/google/protobuf/compiler/PluginProtos$for;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$for;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->do:Lcom/google/protobuf/compiler/PluginProtos$if;

    return-object v0
.end method

.method public getFileToGenerate(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getFileToGenerateBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getFileToGenerateCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getFileToGenerateList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->parameter_:Ljava/lang/Object;

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

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->parameter_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParameterBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->parameter_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->parameter_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/compiler/PluginProtos$if;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProtoFile(I)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p1
.end method

.method public getProtoFileCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProtoFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$goto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    return-object v0
.end method

.method public getProtoFileOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public getProtoFileOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v0

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    .line 5
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->parameter_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 7
    :cond_2
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getCompilerVersion()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    .line 9
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/16 v1, 0xf

    .line 10
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    .line 11
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v0}, Lcom/google/protobuf/t1;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 13
    iput v2, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object v0
.end method

.method public hasCompilerVersion()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParameter()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$if;->getDescriptor()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getFileToGenerateCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->hasParameter()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getProtoFileCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getProtoFileList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->hasCompilerVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getCompilerVersion()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/compiler/PluginProtos$for;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->new()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/compiler/PluginProtos$if;

    const-class v2, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getProtoFileCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getProtoFile(I)Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$goto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4
    iput-byte v2, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_3
    iput-byte v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->newBuilderForType()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->newBuilderForType()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$if;->newBuilder()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/compiler/PluginProtos$do;)V

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$try;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/protobuf/compiler/PluginProtos$if;

    invoke-direct {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$if;->do:Lcom/google/protobuf/compiler/PluginProtos$if;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    invoke-direct {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;-><init>(Lcom/google/protobuf/compiler/PluginProtos$do;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    invoke-direct {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;-><init>(Lcom/google/protobuf/compiler/PluginProtos$do;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->interface(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/native;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    and-int/2addr v1, v3

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->parameter_:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getCompilerVersion()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/native;->f0(ILcom/google/protobuf/MessageLite;)V

    .line 7
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v1, 0xf

    .line 8
    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$if;->protoFile_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/native;->f0(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1;->writeTo(Lcom/google/protobuf/native;)V

    return-void
.end method
