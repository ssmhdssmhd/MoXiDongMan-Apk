.class public final Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;"
    }
.end annotation


# instance fields
.field private case:Lcom/google/protobuf/LazyStringList;

.field private do:I

.field private for:Lcom/google/protobuf/Internal$IntList;

.field private if:Lcom/google/protobuf/Internal$IntList;

.field private new:Ljava/lang/Object;

.field private try:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    .line 5
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 11
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    .line 12
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    const-string p1, ""

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

    .line 15
    sget-object p1, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    .line 16
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->volatile()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method private public()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/s;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/s;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    .line 3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    :cond_0
    return-void
.end method

.method private return()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    .line 3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    :cond_0
    return-void
.end method

.method private static()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    .line 3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->else(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->else(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public break()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/DescriptorProtos$do;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 4
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$27902(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 6
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 8
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28002(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28102(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v2, v2, 0x2

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28202(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    .line 14
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28302(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 16
    invoke-static {v0, v2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28402(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;I)I

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->this()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->this()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->break()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->break()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    move-result-object v0

    return-object v0
.end method

.method public case(I)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->return()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public catch()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    .line 2
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    .line 3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    .line 5
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x5

    .line 7
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 8
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x9

    .line 9
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 10
    sget-object v1, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    and-int/lit8 v0, v0, -0x11

    .line 11
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    return-object p0
.end method

.method public class(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->catch()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->catch()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->catch()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->catch()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->class(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->class(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->super(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->super(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->super(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->native()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->native()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->native()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->native()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->native()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

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
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->native()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object v0

    return-object v0
.end method

.method public const()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->getLeadingComments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public continue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public default(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->extends(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

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

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->extends(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    .line 6
    :cond_1
    throw p1
.end method

.method public do(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->public()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$do;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public else(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    return-object p1
.end method

.method public extends(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$27900(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$27900(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    .line 5
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->return()V

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$27900(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28000(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28000(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    .line 12
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    goto :goto_1

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->static()V

    .line 14
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28000(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->hasLeadingComments()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 18
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28100(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->hasTrailingComments()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 22
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28200(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 24
    :cond_6
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28300(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 25
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28300(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    .line 27
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    goto :goto_2

    .line 28
    :cond_7
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->public()V

    .line 29
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->access$28300(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 31
    :cond_8
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->package(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public finally(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->extends(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public for(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->static()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$do;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->switch()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->switch()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->volatile()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getLeadingComments()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 7
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLeadingCommentsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->new:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLeadingDetachedComments(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getLeadingDetachedCommentsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getLeadingDetachedCommentsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLeadingDetachedCommentsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->throws()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getPath(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getPathCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathList()Ljava/util/List;
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
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    :goto_0
    return-object v0
.end method

.method public getSpan(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getSpanCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpanList()Ljava/util/List;
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
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    :goto_0
    return-object v0
.end method

.method public getTrailingComments()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 7
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrailingCommentsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public goto(I)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->static()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public hasLeadingComments()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrailingComments()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->return()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$do;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public implements(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public import()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->getTrailingComments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final instanceof(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    return-object p1
.end method

.method public interface(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    return-object p1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->interface()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->new(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->default(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->finally(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->default(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->default(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->finally(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->default(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->package(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->package(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->package(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public native()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    return-object v0
.end method

.method public new(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->public()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final package(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    return-object p1
.end method

.method public private(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    return-object p1
.end method

.method public protected(II)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->static()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->private(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->private(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->interface(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->interface(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->instanceof(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->instanceof(Lcom/google/protobuf/t1;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    move-result-object p1

    return-object p1
.end method

.method public strictfp(ILjava/lang/String;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->public()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public super(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;

    return-object p1
.end method

.method public switch()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    move-result-object v0

    return-object v0
.end method

.method public this()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->break()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public throw()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public throws()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public transient(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->try:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public try(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->public()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->case:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public volatile(II)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->return()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->if:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public while()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->for:Lcom/google/protobuf/Internal$IntList;

    .line 2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$for$if;->do:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method
