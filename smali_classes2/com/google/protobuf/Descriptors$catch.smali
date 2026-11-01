.class public final Lcom/google/protobuf/Descriptors$catch;
.super Lcom/google/protobuf/Descriptors$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "catch"
.end annotation


# instance fields
.field private final do:I

.field private final for:Ljava/lang/String;

.field private if:Lcom/google/protobuf/DescriptorProtos$throw;

.field private final new:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private try:[Lcom/google/protobuf/Descriptors$this;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$throw;Lcom/google/protobuf/Descriptors$FileDescriptor;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$goto;-><init>(Lcom/google/protobuf/Descriptors$do;)V

    .line 3
    iput p3, p0, Lcom/google/protobuf/Descriptors$catch;->do:I

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$catch;->if:Lcom/google/protobuf/DescriptorProtos$throw;

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$throw;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lcom/google/protobuf/Descriptors;->if(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$catch;->for:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$catch;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$throw;->getMethodCount()I

    move-result p3

    new-array p3, p3, [Lcom/google/protobuf/Descriptors$this;

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$catch;->try:[Lcom/google/protobuf/Descriptors$this;

    const/4 p3, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$throw;->getMethodCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 9
    iget-object v6, p0, Lcom/google/protobuf/Descriptors$catch;->try:[Lcom/google/protobuf/Descriptors$this;

    new-instance v7, Lcom/google/protobuf/Descriptors$this;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/DescriptorProtos$throw;->getMethod(I)Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Descriptors$this;-><init>(Lcom/google/protobuf/DescriptorProtos$class;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$catch;ILcom/google/protobuf/Descriptors$do;)V

    aput-object v7, v6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$for;->case(Lcom/google/protobuf/Descriptors$goto;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$throw;Lcom/google/protobuf/Descriptors$FileDescriptor;ILcom/google/protobuf/Descriptors$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/Descriptors$catch;-><init>(Lcom/google/protobuf/DescriptorProtos$throw;Lcom/google/protobuf/Descriptors$FileDescriptor;I)V

    return-void
.end method

.method public static synthetic case(Lcom/google/protobuf/Descriptors$catch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$catch;->else()V

    return-void
.end method

.method private class(Lcom/google/protobuf/DescriptorProtos$throw;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$catch;->if:Lcom/google/protobuf/DescriptorProtos$throw;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$catch;->try:[Lcom/google/protobuf/Descriptors$this;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$throw;->getMethod(I)Lcom/google/protobuf/DescriptorProtos$class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$this;->case(Lcom/google/protobuf/Descriptors$this;Lcom/google/protobuf/DescriptorProtos$class;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private else()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$catch;->try:[Lcom/google/protobuf/Descriptors$this;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lcom/google/protobuf/Descriptors$this;->try(Lcom/google/protobuf/Descriptors$this;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic try(Lcom/google/protobuf/Descriptors$catch;Lcom/google/protobuf/DescriptorProtos$throw;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$catch;->class(Lcom/google/protobuf/DescriptorProtos$throw;)V

    return-void
.end method


# virtual methods
.method public break()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$this;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$catch;->try:[Lcom/google/protobuf/Descriptors$this;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public catch()Lcom/google/protobuf/DescriptorProtos$while;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$catch;->if:Lcom/google/protobuf/DescriptorProtos$throw;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$throw;->getOptions()Lcom/google/protobuf/DescriptorProtos$while;

    move-result-object v0

    return-object v0
.end method

.method public const()Lcom/google/protobuf/DescriptorProtos$throw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$catch;->if:Lcom/google/protobuf/DescriptorProtos$throw;

    return-object v0
.end method

.method public do()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$catch;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$catch;->if:Lcom/google/protobuf/DescriptorProtos$throw;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$throw;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$this;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$catch;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$catch;->for:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$for;->else(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$goto;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$this;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/protobuf/Descriptors$this;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$catch;->for:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic new()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$catch;->const()Lcom/google/protobuf/DescriptorProtos$throw;

    move-result-object v0

    return-object v0
.end method

.method public this()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/Descriptors$catch;->do:I

    return v0
.end method
