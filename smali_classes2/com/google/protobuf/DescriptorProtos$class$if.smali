.class public final Lcom/google/protobuf/DescriptorProtos$class$if;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/google/protobuf/DescriptorProtos$class$if;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private case:Lcom/google/protobuf/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/DescriptorProtos$const;",
            "Lcom/google/protobuf/DescriptorProtos$const$if;",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private do:I

.field private else:Z

.field private for:Ljava/lang/Object;

.field private goto:Z

.field private if:Ljava/lang/Object;

.field private new:Ljava/lang/Object;

.field private try:Lcom/google/protobuf/DescriptorProtos$const;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->else()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->throw()Lcom/google/protobuf/a1;

    :cond_0
    return-void
.end method

.method private throw()Lcom/google/protobuf/a1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/DescriptorProtos$const;",
            "Lcom/google/protobuf/DescriptorProtos$const$if;",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->case:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/a1;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->getOptions()Lcom/google/protobuf/DescriptorProtos$const;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->case:Lcom/google/protobuf/a1;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->case:Lcom/google/protobuf/a1;

    return-object v0
.end method


# virtual methods
.method public abstract(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$class$if;->do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$class$if;->do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public break()Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->case:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->if()Lcom/google/protobuf/a1;

    .line 5
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->if()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->if()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->for()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->for()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    return-object v0
.end method

.method public case(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$class$if;

    return-object p1
.end method

.method public catch()Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$class;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$class;->getOutputType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public class()Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->goto:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->new()Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->new()Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->new()Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->new()Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->case(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->case(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->this(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->this(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->this(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->const()Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->const()Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->const()Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->const()Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->const()Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->const()Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object v0

    return-object v0
.end method

.method public const()Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$class$if;

    return-object v0
.end method

.method public continue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public default(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$class$if;

    return-object p1
.end method

.method public else()Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$class;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$class;->getInputType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public extends(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final()Lcom/google/protobuf/DescriptorProtos$class;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$class;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    return-object v0
.end method

.method public finally(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public for()Lcom/google/protobuf/DescriptorProtos$class;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$class;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$class;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/DescriptorProtos$do;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$class;->access$14202(Lcom/google/protobuf/DescriptorProtos$class;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$class;->access$14302(Lcom/google/protobuf/DescriptorProtos$class;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$class;->access$14402(Lcom/google/protobuf/DescriptorProtos$class;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_4

    .line 6
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->case:Lcom/google/protobuf/a1;

    if-nez v3, :cond_3

    .line 7
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$class;->access$14502(Lcom/google/protobuf/DescriptorProtos$class;Lcom/google/protobuf/DescriptorProtos$const;)Lcom/google/protobuf/DescriptorProtos$const;

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/a1;->do()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/DescriptorProtos$const;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$class;->access$14502(Lcom/google/protobuf/DescriptorProtos$class;Lcom/google/protobuf/DescriptorProtos$const;)Lcom/google/protobuf/DescriptorProtos$const;

    :goto_1
    or-int/lit8 v2, v2, 0x8

    :cond_4
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    .line 9
    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->else:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$class;->access$14602(Lcom/google/protobuf/DescriptorProtos$class;Z)Z

    or-int/lit8 v2, v2, 0x10

    :cond_5
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 10
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->goto:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$class;->access$14702(Lcom/google/protobuf/DescriptorProtos$class;Z)Z

    or-int/lit8 v2, v2, 0x20

    .line 11
    :cond_6
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$class;->access$14802(Lcom/google/protobuf/DescriptorProtos$class;I)I

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public getClientStreaming()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->else:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->final()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->final()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->else()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 7
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInputTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 7
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$const;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->case:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$const;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$const;

    move-result-object v0

    :cond_0
    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->try()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$const;

    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->case:Lcom/google/protobuf/a1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->case()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$const;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$const;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getOutputType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 7
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOutputTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getServerStreaming()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->goto:Z

    return v0
.end method

.method public goto()Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$class;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public hasClientStreaming()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInputType()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, 0x2

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
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

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
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOutputType()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServerStreaming()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if()Lcom/google/protobuf/DescriptorProtos$class;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->for()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$class;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public import(Lcom/google/protobuf/DescriptorProtos$class;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$class;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$class;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$class;->access$14200(Lcom/google/protobuf/DescriptorProtos$class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$class;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 8
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$class;->access$14300(Lcom/google/protobuf/DescriptorProtos$class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$class;->hasOutputType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 12
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$class;->access$14400(Lcom/google/protobuf/DescriptorProtos$class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$class;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$class;->getOptions()Lcom/google/protobuf/DescriptorProtos$const;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$class$if;->public(Lcom/google/protobuf/DescriptorProtos$const;)Lcom/google/protobuf/DescriptorProtos$class$if;

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$class;->hasClientStreaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$class;->getClientStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$class$if;->static(Z)Lcom/google/protobuf/DescriptorProtos$class$if;

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$class;->hasServerStreaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$class;->getServerStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$class$if;->volatile(Z)Lcom/google/protobuf/DescriptorProtos$class$if;

    .line 20
    :cond_6
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->return(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$class$if;

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final interface(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$class$if;

    return-object p1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->goto()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$class;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$class$if;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->getOptions()Lcom/google/protobuf/DescriptorProtos$const;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$const;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$class$if;->while(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->native(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$class$if;->while(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$class$if;->while(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->native(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$class$if;->while(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->return(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->return(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->return(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public native(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$class;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$class;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->import(Lcom/google/protobuf/DescriptorProtos$class;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public new()Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->if:Ljava/lang/Object;

    .line 3
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x3

    .line 5
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->new:Ljava/lang/Object;

    and-int/lit8 v0, v1, -0x5

    .line 7
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->case:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->if()Lcom/google/protobuf/a1;

    .line 11
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->else:Z

    and-int/lit8 v0, v0, -0x11

    .line 13
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 14
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->goto:Z

    and-int/lit8 v0, v0, -0x21

    .line 15
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    return-object p0
.end method

.method public package(Lcom/google/protobuf/DescriptorProtos$const$if;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->case:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$const$if;->protected()Lcom/google/protobuf/DescriptorProtos$const;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$const$if;->protected()Lcom/google/protobuf/DescriptorProtos$const;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    return-object p0
.end method

.method public private(Lcom/google/protobuf/DescriptorProtos$const;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->case:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    return-object p0
.end method

.method public public(Lcom/google/protobuf/DescriptorProtos$const;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->case:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$const;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$const;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$const;->newBuilder(Lcom/google/protobuf/DescriptorProtos$const;)Lcom/google/protobuf/DescriptorProtos$const$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$const$if;->l(Lcom/google/protobuf/DescriptorProtos$const;)Lcom/google/protobuf/DescriptorProtos$const$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$const$if;->transient()Lcom/google/protobuf/DescriptorProtos$const;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->try:Lcom/google/protobuf/DescriptorProtos$const;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->else(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 9
    :goto_1
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    return-object p0
.end method

.method public final return(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$class$if;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$class$if;->switch(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$class$if;->switch(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$class$if;->strictfp(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$class$if;->strictfp(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->interface(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->interface(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$class$if;

    move-result-object p1

    return-object p1
.end method

.method public static(Z)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->else:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public strictfp(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$class$if;

    return-object p1
.end method

.method public super()Lcom/google/protobuf/DescriptorProtos$const$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$class$if;->throw()Lcom/google/protobuf/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/a1;->new()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$const$if;

    return-object v0
.end method

.method public switch(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$class$if;

    return-object p1
.end method

.method public this(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$class$if;

    return-object p1
.end method

.method public throws(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->for:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public try()Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->else:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public volatile(Z)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->do:I

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$class$if;->goto:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public while(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$class$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$class;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$class;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$class$if;->import(Lcom/google/protobuf/DescriptorProtos$class;)Lcom/google/protobuf/DescriptorProtos$class$if;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/n;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/n;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$class$if;->import(Lcom/google/protobuf/DescriptorProtos$class;)Lcom/google/protobuf/DescriptorProtos$class$if;

    .line 6
    :cond_1
    throw p1
.end method
