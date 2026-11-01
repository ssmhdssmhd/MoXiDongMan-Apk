.class public final Lcom/google/protobuf/DescriptorProtos$case;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$case$if;,
        Lcom/google/protobuf/DescriptorProtos$case$for;,
        Lcom/google/protobuf/DescriptorProtos$case$new;
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE_FIELD_NUMBER:I = 0x7

.field public static final EXTENDEE_FIELD_NUMBER:I = 0x2

.field public static final JSON_NAME_FIELD_NUMBER:I = 0xa

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final ONEOF_INDEX_FIELD_NUMBER:I = 0x9

.field public static final OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$case;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTO3_OPTIONAL_FIELD_NUMBER:I = 0x11

.field public static final TYPE_FIELD_NUMBER:I = 0x5

.field public static final TYPE_NAME_FIELD_NUMBER:I = 0x6

.field private static final do:Lcom/google/protobuf/DescriptorProtos$case;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile defaultValue_:Ljava/lang/Object;

.field private volatile extendee_:Ljava/lang/Object;

.field private volatile jsonName_:Ljava/lang/Object;

.field private label_:I

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private number_:I

.field private oneofIndex_:I

.field private options_:Lcom/google/protobuf/DescriptorProtos$else;

.field private proto3Optional_:Z

.field private volatile typeName_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$case;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$case;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$case;->do:Lcom/google/protobuf/DescriptorProtos$case;

    .line 2
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$case$do;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$case$do;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->label_:I

    .line 9
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->type_:I

    .line 10
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->typeName_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->extendee_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->defaultValue_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->jsonName_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$case;-><init>()V

    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 18
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;I)Z

    move-result v2

    goto/16 :goto_2

    .line 19
    :sswitch_0
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->return()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->proto3Optional_:Z

    goto :goto_0

    .line 21
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 22
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    .line 23
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->jsonName_:Ljava/lang/Object;

    goto :goto_0

    .line 24
    :sswitch_2
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    .line 25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->oneofIndex_:I

    goto :goto_0

    :sswitch_3
    const/4 v2, 0x0

    .line 26
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    .line 27
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->options_:Lcom/google/protobuf/DescriptorProtos$else;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$else;->toBuilder()Lcom/google/protobuf/DescriptorProtos$else$if;

    move-result-object v2

    .line 28
    :cond_1
    sget-object v3, Lcom/google/protobuf/DescriptorProtos$else;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->interface(Lcom/google/protobuf/Parser;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/DescriptorProtos$else;

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->options_:Lcom/google/protobuf/DescriptorProtos$else;

    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {v2, v3}, Lcom/google/protobuf/DescriptorProtos$else$if;->p(Lcom/google/protobuf/DescriptorProtos$else;)Lcom/google/protobuf/DescriptorProtos$else$if;

    .line 30
    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$else$if;->transient()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->options_:Lcom/google/protobuf/DescriptorProtos$else;

    .line 31
    :cond_2
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    goto :goto_0

    .line 32
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 33
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    .line 34
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->defaultValue_:Ljava/lang/Object;

    goto :goto_0

    .line 35
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 36
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    .line 37
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->typeName_:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->extends()I

    move-result v2

    .line 39
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$case$new;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$case$new;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x5

    .line 40
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/t1$if;->package(II)Lcom/google/protobuf/t1$if;

    goto/16 :goto_0

    .line 41
    :cond_3
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    .line 42
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->type_:I

    goto/16 :goto_0

    .line 43
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->extends()I

    move-result v2

    .line 44
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$case$for;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$case$for;

    move-result-object v3

    const/4 v4, 0x4

    if-nez v3, :cond_4

    .line 45
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/t1$if;->package(II)Lcom/google/protobuf/t1$if;

    goto/16 :goto_0

    .line 46
    :cond_4
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    .line 47
    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->label_:I

    goto/16 :goto_0

    .line 48
    :sswitch_8
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    .line 49
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->number_:I

    goto/16 :goto_0

    .line 50
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 51
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    .line 52
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->extendee_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 53
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 54
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    .line 55
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_b
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 56
    :try_start_1
    new-instance p2, Lcom/google/protobuf/n;

    invoke-direct {p2, p1}, Lcom/google/protobuf/n;-><init>(Ljava/io/IOException;)V

    .line 57
    invoke-virtual {p2, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 58
    invoke-virtual {p1, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 61
    throw p1

    .line 62
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x18 -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x48 -> :sswitch_2
        0x52 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;Lcom/google/protobuf/DescriptorProtos$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$case;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V

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
    iput-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/DescriptorProtos$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$case;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V

    return-void
.end method

.method public static synthetic access$7400(Lcom/google/protobuf/DescriptorProtos$case;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$case;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$7402(Lcom/google/protobuf/DescriptorProtos$case;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$7502(Lcom/google/protobuf/DescriptorProtos$case;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->number_:I

    return p1
.end method

.method public static synthetic access$7602(Lcom/google/protobuf/DescriptorProtos$case;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->label_:I

    return p1
.end method

.method public static synthetic access$7702(Lcom/google/protobuf/DescriptorProtos$case;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->type_:I

    return p1
.end method

.method public static synthetic access$7800(Lcom/google/protobuf/DescriptorProtos$case;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$case;->typeName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$7802(Lcom/google/protobuf/DescriptorProtos$case;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->typeName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$7900(Lcom/google/protobuf/DescriptorProtos$case;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$case;->extendee_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$7902(Lcom/google/protobuf/DescriptorProtos$case;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->extendee_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$8000(Lcom/google/protobuf/DescriptorProtos$case;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$case;->defaultValue_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$8002(Lcom/google/protobuf/DescriptorProtos$case;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->defaultValue_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$8102(Lcom/google/protobuf/DescriptorProtos$case;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->oneofIndex_:I

    return p1
.end method

.method public static synthetic access$8200(Lcom/google/protobuf/DescriptorProtos$case;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$case;->jsonName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$8202(Lcom/google/protobuf/DescriptorProtos$case;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->jsonName_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$8302(Lcom/google/protobuf/DescriptorProtos$case;Lcom/google/protobuf/DescriptorProtos$else;)Lcom/google/protobuf/DescriptorProtos$else;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->options_:Lcom/google/protobuf/DescriptorProtos$else;

    return-object p1
.end method

.method public static synthetic access$8402(Lcom/google/protobuf/DescriptorProtos$case;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->proto3Optional_:Z

    return p1
.end method

.method public static synthetic access$8502(Lcom/google/protobuf/DescriptorProtos$case;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->do:Lcom/google/protobuf/DescriptorProtos$case;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->f()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$case$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->do:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->toBuilder()Lcom/google/protobuf/DescriptorProtos$case$if;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$case;)Lcom/google/protobuf/DescriptorProtos$case$if;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->do:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->toBuilder()Lcom/google/protobuf/DescriptorProtos$case$if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$case$if;->switch(Lcom/google/protobuf/DescriptorProtos$case;)Lcom/google/protobuf/DescriptorProtos$case$if;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$case;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/protobuf/DescriptorProtos$case;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$case;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasNumber()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasNumber()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getNumber()I

    move-result v1

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasLabel()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasLabel()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->label_:I

    iget v2, p1, Lcom/google/protobuf/DescriptorProtos$case;->label_:I

    if-eq v1, v2, :cond_7

    return v3

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasType()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 16
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasType()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 17
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->type_:I

    iget v2, p1, Lcom/google/protobuf/DescriptorProtos$case;->type_:I

    if-eq v1, v2, :cond_9

    return v3

    .line 18
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasTypeName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasTypeName()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 19
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasTypeName()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 22
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasExtendee()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasExtendee()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 23
    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasExtendee()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getExtendee()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getExtendee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 26
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasDefaultValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasDefaultValue()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 27
    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasDefaultValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 30
    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasOneofIndex()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasOneofIndex()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 31
    :cond_10
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasOneofIndex()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getOneofIndex()I

    move-result v1

    .line 33
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getOneofIndex()I

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 34
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasJsonName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasJsonName()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 35
    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasJsonName()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getJsonName()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getJsonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 38
    :cond_13
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasOptions()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasOptions()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 39
    :cond_14
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getOptions()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getOptions()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/DescriptorProtos$else;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 42
    :cond_15
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasProto3Optional()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasProto3Optional()Z

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    .line 43
    :cond_16
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasProto3Optional()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getProto3Optional()Z

    move-result v1

    .line 45
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getProto3Optional()Z

    move-result v2

    if-eq v1, v2, :cond_17

    return v3

    .line 46
    :cond_17
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/t1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v3

    :cond_18
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->do:Lcom/google/protobuf/DescriptorProtos$case;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$case;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$case;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->defaultValue_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->defaultValue_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDefaultValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->defaultValue_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->defaultValue_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getExtendee()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->extendee_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->extendee_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getExtendeeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->extendee_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->extendee_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getJsonName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->jsonName_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->jsonName_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getJsonNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->jsonName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->jsonName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLabel()Lcom/google/protobuf/DescriptorProtos$case$for;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->label_:I

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$case$for;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$case$for;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case$for;->LABEL_OPTIONAL:Lcom/google/protobuf/DescriptorProtos$case$for;

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->name_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->name_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->number_:I

    return v0
.end method

.method public getOneofIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->oneofIndex_:I

    return v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->options_:Lcom/google/protobuf/DescriptorProtos$else;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$else;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$FieldOptionsOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->options_:Lcom/google/protobuf/DescriptorProtos$else;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$else;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$case;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProto3Optional()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->proto3Optional_:Z

    return v0
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

    .line 2
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->name_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->extendee_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->number_:I

    .line 8
    invoke-static {v1, v2}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 10
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->label_:I

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/native;->import(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 13
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->type_:I

    .line 14
    invoke-static {v1, v3}, Lcom/google/protobuf/native;->import(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 16
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->typeName_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_6
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 18
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$case;->defaultValue_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_7
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getOptions()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_8
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 22
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->oneofIndex_:I

    .line 23
    invoke-static {v1, v2}, Lcom/google/protobuf/native;->abstract(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_9
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 25
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->jsonName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_a
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_b

    const/16 v1, 0x11

    .line 27
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->proto3Optional_:Z

    .line 28
    invoke-static {v1, v2}, Lcom/google/protobuf/native;->goto(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getType()Lcom/google/protobuf/DescriptorProtos$case$new;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->type_:I

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$case$new;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$case$new;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case$new;->TYPE_DOUBLE:Lcom/google/protobuf/DescriptorProtos$case$new;

    :cond_0
    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->typeName_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->typeName_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTypeNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->typeName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->typeName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object v0
.end method

.method public hasDefaultValue()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExtendee()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJsonName()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNumber()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOneofIndex()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProto3Optional()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTypeName()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$case;->getDescriptor()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getNumber()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->label_:I

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasType()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 10
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->type_:I

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasTypeName()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasExtendee()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getExtendee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasDefaultValue()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasOneofIndex()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getOneofIndex()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasJsonName()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getJsonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getOptions()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$else;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasProto3Optional()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getProto3Optional()Z

    move-result v1

    .line 25
    invoke-static {v1}, Lcom/google/protobuf/Internal;->catch(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    mul-int/lit8 v0, v0, 0x1d

    .line 26
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->h()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$case;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$case$if;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getOptions()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$else;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->memoizedIsInitialized:B

    return v2

    .line 5
    :cond_2
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$case$if;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$case;->newBuilder()Lcom/google/protobuf/DescriptorProtos$case$if;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$case$if;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$case$if;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$case$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$do;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$case$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$case;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$case$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$case$if;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$try;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/protobuf/DescriptorProtos$case;

    invoke-direct {p1}, Lcom/google/protobuf/DescriptorProtos$case;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$case$if;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case;->do:Lcom/google/protobuf/DescriptorProtos$case;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$case$if;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$case$if;-><init>(Lcom/google/protobuf/DescriptorProtos$do;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$case$if;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$case$if;-><init>(Lcom/google/protobuf/DescriptorProtos$do;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$case$if;->switch(Lcom/google/protobuf/DescriptorProtos$case;)Lcom/google/protobuf/DescriptorProtos$case$if;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->toBuilder()Lcom/google/protobuf/DescriptorProtos$case$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->toBuilder()Lcom/google/protobuf/DescriptorProtos$case$if;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/native;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->extendee_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->number_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 8
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->label_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->writeEnum(II)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->type_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/native;->writeEnum(II)V

    .line 11
    :cond_4
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->typeName_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 13
    :cond_5
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$case;->defaultValue_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 15
    :cond_6
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$case;->getOptions()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/native;->f0(ILcom/google/protobuf/MessageLite;)V

    .line 17
    :cond_7
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->oneofIndex_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/native;->writeInt32(II)V

    .line 19
    :cond_8
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 20
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->jsonName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 21
    :cond_9
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const/16 v0, 0x11

    .line 22
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$case;->proto3Optional_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/native;->writeBool(IZ)V

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1;->writeTo(Lcom/google/protobuf/native;)V

    return-void
.end method
