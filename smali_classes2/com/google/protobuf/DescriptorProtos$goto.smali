.class public final Lcom/google/protobuf/DescriptorProtos$goto;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "goto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$goto$if;
    }
.end annotation


# static fields
.field public static final DEPENDENCY_FIELD_NUMBER:I = 0x3

.field public static final ENUM_TYPE_FIELD_NUMBER:I = 0x5

.field public static final EXTENSION_FIELD_NUMBER:I = 0x7

.field public static final MESSAGE_TYPE_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final PACKAGE_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$goto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PUBLIC_DEPENDENCY_FIELD_NUMBER:I = 0xa

.field public static final SERVICE_FIELD_NUMBER:I = 0x6

.field public static final SOURCE_CODE_INFO_FIELD_NUMBER:I = 0x9

.field public static final SYNTAX_FIELD_NUMBER:I = 0xc

.field public static final WEAK_DEPENDENCY_FIELD_NUMBER:I = 0xb

.field private static final do:Lcom/google/protobuf/DescriptorProtos$goto;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dependency_:Lcom/google/protobuf/LazyStringList;

.field private enumType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private extension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$case;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private messageType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private volatile name_:Ljava/lang/Object;

.field private options_:Lcom/google/protobuf/DescriptorProtos$break;

.field private volatile package_:Ljava/lang/Object;

.field private publicDependency_:Lcom/google/protobuf/Internal$IntList;

.field private service_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$throw;",
            ">;"
        }
    .end annotation
.end field

.field private sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

.field private volatile syntax_:Ljava/lang/Object;

.field private weakDependency_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$goto;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$goto;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    .line 2
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$goto$do;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$goto$do;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->name_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->package_:Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    .line 10
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    .line 11
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->syntax_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$goto;-><init>()V

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_17

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->l()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 21
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/t1$if;Lcom/google/protobuf/implements;I)Z

    move-result v3

    goto/16 :goto_4

    .line 22
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 23
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    .line 24
    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->syntax_:Ljava/lang/Object;

    goto :goto_0

    .line 25
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->a()I

    move-result v3

    .line 26
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->public(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->case()I

    move-result v4

    if-lez v4, :cond_1

    .line 28
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x10

    .line 29
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->case()I

    move-result v4

    if-lez v4, :cond_2

    .line 30
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->native(I)V

    goto :goto_0

    :sswitch_2
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_3

    .line 32
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x10

    .line 33
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    .line 34
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->a()I

    move-result v3

    .line 35
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->public(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_4

    .line 36
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->case()I

    move-result v4

    if-lez v4, :cond_4

    .line 37
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x8

    .line 38
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->case()I

    move-result v4

    if-lez v4, :cond_5

    .line 39
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 40
    :cond_5
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->native(I)V

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_6

    .line 41
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x8

    .line 42
    :cond_6
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->strictfp()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_0

    .line 43
    :sswitch_5
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    .line 44
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->toBuilder()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$if;

    move-result-object v4

    .line 45
    :cond_7
    sget-object v3, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->interface(Lcom/google/protobuf/Parser;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    if-eqz v4, :cond_8

    .line 46
    invoke-virtual {v4, v3}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$if;->static(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$if;

    .line 47
    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$if;->break()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 48
    :cond_8
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    goto/16 :goto_0

    .line 49
    :sswitch_6
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_9

    .line 50
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->options_:Lcom/google/protobuf/DescriptorProtos$break;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$break;->toBuilder()Lcom/google/protobuf/DescriptorProtos$break$if;

    move-result-object v4

    .line 51
    :cond_9
    sget-object v3, Lcom/google/protobuf/DescriptorProtos$break;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->interface(Lcom/google/protobuf/Parser;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/DescriptorProtos$break;

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->options_:Lcom/google/protobuf/DescriptorProtos$break;

    if-eqz v4, :cond_a

    .line 52
    invoke-virtual {v4, v3}, Lcom/google/protobuf/DescriptorProtos$break$if;->D(Lcom/google/protobuf/DescriptorProtos$break;)Lcom/google/protobuf/DescriptorProtos$break$if;

    .line 53
    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$break$if;->transient()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->options_:Lcom/google/protobuf/DescriptorProtos$break;

    .line 54
    :cond_a
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    goto/16 :goto_0

    :sswitch_7
    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_b

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x100

    .line 56
    :cond_b
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    sget-object v4, Lcom/google/protobuf/DescriptorProtos$case;->PARSER:Lcom/google/protobuf/Parser;

    .line 57
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->interface(Lcom/google/protobuf/Parser;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    .line 58
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_c

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x80

    .line 60
    :cond_c
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    sget-object v4, Lcom/google/protobuf/DescriptorProtos$throw;->PARSER:Lcom/google/protobuf/Parser;

    .line 61
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->interface(Lcom/google/protobuf/Parser;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    .line 62
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_d

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 64
    :cond_d
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    sget-object v4, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 65
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->interface(Lcom/google/protobuf/Parser;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    .line 66
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_e

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 68
    :cond_e
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    sget-object v4, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 69
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->interface(Lcom/google/protobuf/Parser;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    .line 70
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 71
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v3

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_f

    .line 72
    new-instance v4, Lcom/google/protobuf/s;

    invoke-direct {v4}, Lcom/google/protobuf/s;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x4

    .line 73
    :cond_f
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 74
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 75
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    .line 76
    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->package_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 77
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->throws()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 78
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    .line 79
    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :sswitch_e
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_4
    if-nez v3, :cond_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 80
    :try_start_1
    new-instance p2, Lcom/google/protobuf/n;

    invoke-direct {p2, p1}, Lcom/google/protobuf/n;-><init>(Ljava/io/IOException;)V

    .line 81
    invoke-virtual {p2, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 82
    invoke-virtual {p1, p0}, Lcom/google/protobuf/n;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/n;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_10

    .line 83
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    :cond_10
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_11

    .line 84
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_12

    .line 85
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    :cond_12
    and-int/lit16 p2, v2, 0x80

    if-eqz p2, :cond_13

    .line 86
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    :cond_13
    and-int/lit16 p2, v2, 0x100

    if-eqz p2, :cond_14

    .line 87
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_15

    .line 88
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    :cond_15
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_16

    .line 89
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 90
    :cond_16
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 91
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 92
    throw p1

    :cond_17
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_18

    .line 93
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    :cond_18
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_19

    .line 94
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_1a

    .line 95
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    :cond_1a
    and-int/lit16 p1, v2, 0x80

    if-eqz p1, :cond_1b

    .line 96
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    :cond_1b
    and-int/lit16 p1, v2, 0x100

    if-eqz p1, :cond_1c

    .line 97
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    :cond_1c
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_1d

    .line 98
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    :cond_1d
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_1e

    .line 99
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 100
    :cond_1e
    invoke-virtual {v0}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    .line 101
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x52 -> :sswitch_3
        0x58 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
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
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$goto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)V

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
    iput-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/DescriptorProtos$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$goto;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/google/protobuf/DescriptorProtos$goto;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/google/protobuf/DescriptorProtos$goto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1300(Lcom/google/protobuf/DescriptorProtos$goto;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->package_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1302(Lcom/google/protobuf/DescriptorProtos$goto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->package_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1400(Lcom/google/protobuf/DescriptorProtos$goto;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/google/protobuf/DescriptorProtos$goto;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static synthetic access$1500(Lcom/google/protobuf/DescriptorProtos$goto;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    return-object p0
.end method

.method public static synthetic access$1502(Lcom/google/protobuf/DescriptorProtos$goto;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    return-object p1
.end method

.method public static synthetic access$1600(Lcom/google/protobuf/DescriptorProtos$goto;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    return-object p0
.end method

.method public static synthetic access$1602(Lcom/google/protobuf/DescriptorProtos$goto;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    return-object p1
.end method

.method public static synthetic access$1700(Lcom/google/protobuf/DescriptorProtos$goto;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/google/protobuf/DescriptorProtos$goto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1800(Lcom/google/protobuf/DescriptorProtos$goto;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1802(Lcom/google/protobuf/DescriptorProtos$goto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1900(Lcom/google/protobuf/DescriptorProtos$goto;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1902(Lcom/google/protobuf/DescriptorProtos$goto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2000(Lcom/google/protobuf/DescriptorProtos$goto;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2002(Lcom/google/protobuf/DescriptorProtos$goto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2102(Lcom/google/protobuf/DescriptorProtos$goto;Lcom/google/protobuf/DescriptorProtos$break;)Lcom/google/protobuf/DescriptorProtos$break;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->options_:Lcom/google/protobuf/DescriptorProtos$break;

    return-object p1
.end method

.method public static synthetic access$2202(Lcom/google/protobuf/DescriptorProtos$goto;Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    return-object p1
.end method

.method public static synthetic access$2300(Lcom/google/protobuf/DescriptorProtos$goto;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->syntax_:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2302(Lcom/google/protobuf/DescriptorProtos$goto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->syntax_:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$2402(Lcom/google/protobuf/DescriptorProtos$goto;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->g()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$goto$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$goto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$goto;)Lcom/google/protobuf/DescriptorProtos$goto$if;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$goto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$goto$if;->P(Lcom/google/protobuf/DescriptorProtos$goto;)Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$goto;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/google/protobuf/DescriptorProtos$goto;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$goto;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->hasName()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasPackage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->hasPackage()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasPackage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getDependencyList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getDependencyList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 18
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getMessageTypeList()Ljava/util/List;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getMessageTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getEnumTypeList()Ljava/util/List;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getEnumTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 22
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getServiceList()Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getServiceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getExtensionList()Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getExtensionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 26
    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasOptions()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->hasOptions()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 27
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getOptions()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getOptions()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/DescriptorProtos$break;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 30
    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasSourceCodeInfo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->hasSourceCodeInfo()Z

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 31
    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasSourceCodeInfo()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 34
    :cond_10
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasSyntax()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->hasSyntax()Z

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 35
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasSyntax()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getSyntax()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 38
    :cond_12
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/t1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v3

    :cond_13
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object v0

    return-object v0
.end method

.method public getDependency(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDependencyBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getDependencyCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDependencyList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getDependencyList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getDependencyList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p1
.end method

.method public getEnumTypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnumTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public getEnumTypeOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public getEnumTypeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public getExtension(I)Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$case;

    return-object p1
.end method

.method public getExtensionCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$case;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getExtensionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public getExtensionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    return-object p1
.end method

.method public getMessageTypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessageTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    return-object v0
.end method

.method public getMessageTypeOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;

    return-object p1
.end method

.method public getMessageTypeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->name_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->name_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->name_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$break;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->options_:Lcom/google/protobuf/DescriptorProtos$break;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$break;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->options_:Lcom/google/protobuf/DescriptorProtos$break;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$break;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->package_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->package_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->package_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->package_:Ljava/lang/Object;

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
            "Lcom/google/protobuf/DescriptorProtos$goto;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPublicDependency(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getPublicDependencyCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPublicDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->package_:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_1
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 7
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v4

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getDependencyList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 9
    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v3, v4, :cond_4

    .line 10
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    .line 11
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 12
    :goto_3
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 v4, 0x5

    .line 13
    iget-object v6, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    .line 14
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 15
    :goto_4
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x6

    .line 16
    iget-object v6, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    .line 17
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 18
    :goto_5
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    const/4 v4, 0x7

    .line 19
    iget-object v6, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    .line 20
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v6}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 21
    :cond_7
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    and-int/2addr v3, v5

    const/16 v4, 0x8

    if-eqz v3, :cond_8

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getOptions()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    .line 23
    :cond_8
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    const/16 v3, 0x9

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 25
    :goto_6
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 26
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    .line 27
    invoke-interface {v5, v3}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/native;->continue(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    add-int/2addr v0, v4

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 29
    :goto_7
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 30
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    .line 31
    invoke-interface {v4, v2}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/native;->continue(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    add-int/2addr v0, v3

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 33
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    .line 34
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->syntax_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getService(I)Lcom/google/protobuf/DescriptorProtos$throw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$throw;

    return-object p1
.end method

.method public getServiceCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$throw;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    return-object v0
.end method

.method public getServiceOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public getServiceOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    return-object v0
.end method

.method public getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceCodeInfoOrBuilder()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSyntax()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->syntax_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->syntax_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSyntaxBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->syntax_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->syntax_:Ljava/lang/Object;

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

.method public getWeakDependency(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getWeakDependencyCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWeakDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOptions()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPackage()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceCodeInfo()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSyntax()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

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
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$goto;->getDescriptor()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasPackage()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getDependencyCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getDependencyList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getPublicDependencyCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getWeakDependencyCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getMessageTypeCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getMessageTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getEnumTypeCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getEnumTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getServiceCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getServiceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getExtensionCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getExtensionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getOptions()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$break;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasSourceCodeInfo()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasSyntax()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getSyntax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    mul-int/lit8 v0, v0, 0x1d

    .line 27
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v1}, Lcom/google/protobuf/t1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->i()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$goto;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$goto$if;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->memoizedIsInitialized:B

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
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getMessageTypeCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$goto;->getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getEnumTypeCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$goto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 7
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->memoizedIsInitialized:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 8
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getServiceCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$goto;->getService(I)Lcom/google/protobuf/DescriptorProtos$throw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$throw;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 10
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->memoizedIsInitialized:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 11
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getExtensionCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$goto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$case;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$case;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    .line 13
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->memoizedIsInitialized:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 14
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getOptions()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$break;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    .line 16
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->memoizedIsInitialized:B

    return v2

    .line 17
    :cond_a
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$goto$if;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$goto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$goto$if;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$goto$if;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$goto$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$do;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$goto;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$try;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/protobuf/DescriptorProtos$goto;

    invoke-direct {p1}, Lcom/google/protobuf/DescriptorProtos$goto;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$goto$if;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$goto;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$goto$if;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$goto$if;-><init>(Lcom/google/protobuf/DescriptorProtos$do;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$goto$if;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$goto$if;-><init>(Lcom/google/protobuf/DescriptorProtos$do;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$goto$if;->P(Lcom/google/protobuf/DescriptorProtos$goto;)Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/native;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->package_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 6
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->messageType_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/native;->f0(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 9
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 10
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->enumType_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/google/protobuf/native;->f0(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 11
    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 12
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->service_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/google/protobuf/native;->f0(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 13
    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x7

    .line 14
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$goto;->extension_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v4}, Lcom/google/protobuf/native;->f0(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 15
    :cond_6
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    and-int/2addr v1, v3

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getOptions()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/native;->f0(ILcom/google/protobuf/MessageLite;)V

    .line 17
    :cond_7
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/native;->f0(ILcom/google/protobuf/MessageLite;)V

    :cond_8
    const/4 v1, 0x0

    .line 19
    :goto_5
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xa

    .line 20
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$goto;->publicDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/native;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 21
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/16 v1, 0xb

    .line 22
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$goto;->weakDependency_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/native;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 23
    :cond_a
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$goto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 24
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$goto;->syntax_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/native;ILjava/lang/Object;)V

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t1;->writeTo(Lcom/google/protobuf/native;)V

    return-void
.end method
