.class public final Lcom/google/protobuf/Descriptors$break;
.super Lcom/google/protobuf/Descriptors$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "break"
.end annotation


# instance fields
.field private case:I

.field private final do:I

.field private else:[Lcom/google/protobuf/Descriptors$else;

.field private final for:Ljava/lang/String;

.field private if:Lcom/google/protobuf/DescriptorProtos$final;

.field private final new:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private try:Lcom/google/protobuf/Descriptors$if;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$final;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;I)V
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
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$break;->if:Lcom/google/protobuf/DescriptorProtos$final;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$final;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/google/protobuf/Descriptors;->if(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$break;->for:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$break;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    iput p4, p0, Lcom/google/protobuf/Descriptors$break;->do:I

    .line 7
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$break;->try:Lcom/google/protobuf/Descriptors$if;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/protobuf/Descriptors$break;->case:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$final;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;ILcom/google/protobuf/Descriptors$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$break;-><init>(Lcom/google/protobuf/DescriptorProtos$final;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;I)V

    return-void
.end method

.method public static synthetic case(Lcom/google/protobuf/Descriptors$break;[Lcom/google/protobuf/Descriptors$else;)[Lcom/google/protobuf/Descriptors$else;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$break;->else:[Lcom/google/protobuf/Descriptors$else;

    return-object p1
.end method

.method public static synthetic else(Lcom/google/protobuf/Descriptors$break;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/Descriptors$break;->case:I

    return p1
.end method

.method public static synthetic goto(Lcom/google/protobuf/Descriptors$break;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/Descriptors$break;->case:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/Descriptors$break;->case:I

    return v0
.end method

.method public static synthetic this(Lcom/google/protobuf/Descriptors$break;Lcom/google/protobuf/DescriptorProtos$final;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$break;->while(Lcom/google/protobuf/DescriptorProtos$final;)V

    return-void
.end method

.method public static synthetic try(Lcom/google/protobuf/Descriptors$break;)[Lcom/google/protobuf/Descriptors$else;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/Descriptors$break;->else:[Lcom/google/protobuf/Descriptors$else;

    return-object p0
.end method

.method private while(Lcom/google/protobuf/DescriptorProtos$final;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$break;->if:Lcom/google/protobuf/DescriptorProtos$final;

    return-void
.end method


# virtual methods
.method public break()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$break;->try:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public catch(I)Lcom/google/protobuf/Descriptors$else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$break;->else:[Lcom/google/protobuf/Descriptors$else;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public class()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/Descriptors$break;->case:I

    return v0
.end method

.method public const()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$else;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$break;->else:[Lcom/google/protobuf/Descriptors$else;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public do()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$break;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/Descriptors$break;->do:I

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$break;->if:Lcom/google/protobuf/DescriptorProtos$final;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$final;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$break;->for:Ljava/lang/String;

    return-object v0
.end method

.method public import()Lcom/google/protobuf/DescriptorProtos$final;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$break;->if:Lcom/google/protobuf/DescriptorProtos$final;

    return-object v0
.end method

.method public bridge synthetic new()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$break;->import()Lcom/google/protobuf/DescriptorProtos$final;

    move-result-object v0

    return-object v0
.end method

.method public super()Lcom/google/protobuf/DescriptorProtos$super;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$break;->if:Lcom/google/protobuf/DescriptorProtos$final;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$final;->getOptions()Lcom/google/protobuf/DescriptorProtos$super;

    move-result-object v0

    return-object v0
.end method

.method public throw()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$break;->else:[Lcom/google/protobuf/Descriptors$else;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$else;->else(Lcom/google/protobuf/Descriptors$else;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
