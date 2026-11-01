.class public final Lcom/google/protobuf/Descriptors$this;
.super Lcom/google/protobuf/Descriptors$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "this"
.end annotation


# instance fields
.field private case:Lcom/google/protobuf/Descriptors$if;

.field private final do:I

.field private else:Lcom/google/protobuf/Descriptors$if;

.field private final for:Ljava/lang/String;

.field private if:Lcom/google/protobuf/DescriptorProtos$class;

.field private final new:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final try:Lcom/google/protobuf/Descriptors$catch;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$class;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$catch;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$goto;-><init>(Lcom/google/protobuf/Descriptors$do;)V

    .line 3
    iput p4, p0, Lcom/google/protobuf/Descriptors$this;->do:I

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$this;->if:Lcom/google/protobuf/DescriptorProtos$class;

    .line 5
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$this;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$this;->try:Lcom/google/protobuf/Descriptors$catch;

    .line 7
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$catch;->if()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$this;->for:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$for;->case(Lcom/google/protobuf/Descriptors$goto;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$class;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$catch;ILcom/google/protobuf/Descriptors$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$this;-><init>(Lcom/google/protobuf/DescriptorProtos$class;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$catch;I)V

    return-void
.end method

.method public static synthetic case(Lcom/google/protobuf/Descriptors$this;Lcom/google/protobuf/DescriptorProtos$class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$this;->super(Lcom/google/protobuf/DescriptorProtos$class;)V

    return-void
.end method

.method private else()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$this;->if:Lcom/google/protobuf/DescriptorProtos$class;

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$class;->getInputType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$for$for;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$for$for;

    .line 4
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/protobuf/Descriptors$for;->class(Ljava/lang/String;Lcom/google/protobuf/Descriptors$goto;Lcom/google/protobuf/Descriptors$for$for;)Lcom/google/protobuf/Descriptors$goto;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/protobuf/Descriptors$if;

    const/4 v3, 0x0

    const-string v4, "\" is not a message type."

    const/16 v5, 0x22

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$this;->case:Lcom/google/protobuf/Descriptors$if;

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$this;->if:Lcom/google/protobuf/DescriptorProtos$class;

    .line 9
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$class;->getOutputType()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/protobuf/Descriptors$for;->class(Ljava/lang/String;Lcom/google/protobuf/Descriptors$goto;Lcom/google/protobuf/Descriptors$for$for;)Lcom/google/protobuf/Descriptors$goto;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/protobuf/Descriptors$if;

    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$this;->else:Lcom/google/protobuf/Descriptors$if;

    return-void

    .line 13
    :cond_0
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$this;->if:Lcom/google/protobuf/DescriptorProtos$class;

    .line 14
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$class;->getOutputType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 15
    :cond_1
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$this;->if:Lcom/google/protobuf/DescriptorProtos$class;

    .line 16
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$class;->getInputType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0
.end method

.method private super(Lcom/google/protobuf/DescriptorProtos$class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$this;->if:Lcom/google/protobuf/DescriptorProtos$class;

    return-void
.end method

.method public static synthetic try(Lcom/google/protobuf/Descriptors$this;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$this;->else()V

    return-void
.end method


# virtual methods
.method public break()Lcom/google/protobuf/DescriptorProtos$const;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->if:Lcom/google/protobuf/DescriptorProtos$class;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$class;->getOptions()Lcom/google/protobuf/DescriptorProtos$const;

    move-result-object v0

    return-object v0
.end method

.method public catch()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->else:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public class()Lcom/google/protobuf/Descriptors$catch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->try:Lcom/google/protobuf/Descriptors$catch;

    return-object v0
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->if:Lcom/google/protobuf/DescriptorProtos$class;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$class;->getClientStreaming()Z

    move-result v0

    return v0
.end method

.method public do()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->if:Lcom/google/protobuf/DescriptorProtos$class;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$class;->getServerStreaming()Z

    move-result v0

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->if:Lcom/google/protobuf/DescriptorProtos$class;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/Descriptors$this;->do:I

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->for:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic new()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$this;->throw()Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v0

    return-object v0
.end method

.method public this()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->case:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public throw()Lcom/google/protobuf/DescriptorProtos$class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$this;->if:Lcom/google/protobuf/DescriptorProtos$class;

    return-object v0
.end method
