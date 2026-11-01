.class public final Lcom/google/protobuf/compiler/PluginProtos$if$if;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/compiler/PluginProtos$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/google/protobuf/compiler/PluginProtos$if$if;",
        ">;",
        "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private case:Lcom/google/protobuf/compiler/PluginProtos$for;

.field private do:I

.field private else:Lcom/google/protobuf/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/compiler/PluginProtos$for;",
            "Lcom/google/protobuf/compiler/PluginProtos$for$if;",
            "Lcom/google/protobuf/compiler/PluginProtos$VersionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private for:Ljava/lang/Object;

.field private if:Lcom/google/protobuf/LazyStringList;

.field private new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$goto;",
            ">;"
        }
    .end annotation
.end field

.field private try:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/DescriptorProtos$goto;",
            "Lcom/google/protobuf/DescriptorProtos$goto$if;",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    .line 4
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 9
    sget-object p1, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/compiler/PluginProtos$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/compiler/PluginProtos$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;-><init>()V

    return-void
.end method

.method private abstract()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/DescriptorProtos$goto;",
            "Lcom/google/protobuf/DescriptorProtos$goto$if;",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/v0;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method private default()Lcom/google/protobuf/a1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/compiler/PluginProtos$for;",
            "Lcom/google/protobuf/compiler/PluginProtos$for$if;",
            "Lcom/google/protobuf/compiler/PluginProtos$VersionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->else:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/a1;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->getCompilerVersion()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->else:Lcom/google/protobuf/a1;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->else:Lcom/google/protobuf/a1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->for()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->abstract()Lcom/google/protobuf/v0;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->default()Lcom/google/protobuf/a1;

    :cond_0
    return-void
.end method

.method private static()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/s;

    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/s;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    .line 3
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    :cond_0
    return-void
.end method

.method private switch()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->static()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->catch(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->catch(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public break(I)Lcom/google/protobuf/DescriptorProtos$goto$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->abstract()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$goto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$goto$if;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->class()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->class()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->const()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->const()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public case(ILcom/google/protobuf/DescriptorProtos$goto;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->switch()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public catch(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    return-object p1
.end method

.method public class()Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->const()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$if;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->final()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->final()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->final()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->final()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->throw(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->throw(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->import(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->import(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->import(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->return()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->return()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->return()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->return()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->return()Lcom/google/protobuf/compiler/PluginProtos$if$if;

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
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->return()Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object v0

    return-object v0
.end method

.method public const()Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/compiler/PluginProtos$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/compiler/PluginProtos$do;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    .line 4
    iget v2, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$1902(Lcom/google/protobuf/compiler/PluginProtos$if;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2002(Lcom/google/protobuf/compiler/PluginProtos$if;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v3, :cond_3

    .line 8
    iget v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    .line 10
    iget v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2102(Lcom/google/protobuf/compiler/PluginProtos$if;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2102(Lcom/google/protobuf/compiler/PluginProtos$if;Ljava/util/List;)Ljava/util/List;

    :goto_1
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->else:Lcom/google/protobuf/a1;

    if-nez v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2202(Lcom/google/protobuf/compiler/PluginProtos$if;Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$for;

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/a1;->do()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/compiler/PluginProtos$for;

    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2202(Lcom/google/protobuf/compiler/PluginProtos$if;Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$for;

    :goto_2
    or-int/lit8 v2, v2, 0x2

    .line 16
    :cond_5
    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2302(Lcom/google/protobuf/compiler/PluginProtos$if;I)I

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public continue(Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->else:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$for;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/compiler/PluginProtos$for;->newBuilder(Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->super(Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$for$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->for()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->else(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 9
    :goto_1
    iget p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    return-object p0
.end method

.method public d(ILcom/google/protobuf/DescriptorProtos$goto$if;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->switch()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$goto$if;->implements()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$goto$if;->implements()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public do(Ljava/lang/Iterable;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protobuf/compiler/PluginProtos$if$if;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->static()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$do;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public e(ILcom/google/protobuf/DescriptorProtos$goto;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->switch()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public else(Lcom/google/protobuf/DescriptorProtos$goto$if;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->switch()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto$if;->implements()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto$if;->implements()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public extends()Lcom/google/protobuf/compiler/PluginProtos$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$if;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    return-object p1
.end method

.method public final()Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    .line 2
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    .line 3
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x3

    .line 5
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    .line 8
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->else:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->if()Lcom/google/protobuf/a1;

    .line 13
    :goto_1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    return-object p0
.end method

.method public finally()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public for(Ljava/lang/String;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->static()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final g(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    return-object p1
.end method

.method public getCompilerVersion()Lcom/google/protobuf/compiler/PluginProtos$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->else:Lcom/google/protobuf/a1;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$for;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    :cond_0
    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->try()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$for;

    return-object v0
.end method

.method public getCompilerVersionOrBuilder()Lcom/google/protobuf/compiler/PluginProtos$VersionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->else:Lcom/google/protobuf/a1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->case()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$VersionOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$for;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->extends()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->extends()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->for()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    return-object v0
.end method

.method public getFileToGenerate(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getFileToGenerateBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getFileToGenerateCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFileToGenerateList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->finally()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 7
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getProtoFile(I)Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$goto;

    return-object p1
.end method

.method public getProtoFileCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

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
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProtoFileOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

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
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public goto(Lcom/google/protobuf/DescriptorProtos$goto;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->switch()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public hasCompilerVersion()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParameter()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if(Ljava/lang/Iterable;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$goto;",
            ">;)",
            "Lcom/google/protobuf/compiler/PluginProtos$if$if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->switch()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$do;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public implements(Lcom/google/protobuf/compiler/PluginProtos$for$if;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->else:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->if()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$for$if;->if()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    return-object p0
.end method

.method public import(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    return-object p1
.end method

.method public instanceof(Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->else:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    return-object p0
.end method

.method public interface(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$if;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$1900(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$1900(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    .line 5
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->static()V

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$1900(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->hasParameter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    .line 11
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2000(Lcom/google/protobuf/compiler/PluginProtos$if;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_5

    .line 14
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$if;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 15
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$if;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    .line 17
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    goto :goto_1

    .line 18
    :cond_4
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->switch()V

    .line 19
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$if;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_2

    .line 21
    :cond_5
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$if;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 22
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    .line 25
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$if;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    .line 26
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    .line 27
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2400()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->abstract()Lcom/google/protobuf/v0;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    goto :goto_2

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2100(Lcom/google/protobuf/compiler/PluginProtos$if;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 30
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->hasCompilerVersion()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->getCompilerVersion()Lcom/google/protobuf/compiler/PluginProtos$for;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->continue(Lcom/google/protobuf/compiler/PluginProtos$for;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    .line 32
    :cond_9
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$if;->access$2500(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->protected(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
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
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->getProtoFileCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->getProtoFile(I)Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$goto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->strictfp(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->volatile(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->strictfp(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->strictfp(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->volatile(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->strictfp(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->protected(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->protected(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->protected(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public native()Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    .line 2
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$if;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$if;->getParameter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->for:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public new(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->static()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public package(I)Lcom/google/protobuf/DescriptorProtos$goto$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->abstract()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$goto$if;

    return-object p1
.end method

.method public private()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$goto$if;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->abstract()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final protected(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    return-object p1
.end method

.method public public()Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public return()Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->synchronized(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->synchronized(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->f(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->f(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->g(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->g(Lcom/google/protobuf/t1;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1
.end method

.method public strictfp(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/protobuf/compiler/PluginProtos$if;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$if;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->interface(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

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

    check-cast p2, Lcom/google/protobuf/compiler/PluginProtos$if;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->interface(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    .line 6
    :cond_1
    throw p1
.end method

.method public super()Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->else:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->case:Lcom/google/protobuf/compiler/PluginProtos$for;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->if()Lcom/google/protobuf/a1;

    .line 5
    :goto_0
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    return-object p0
.end method

.method public synchronized(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    return-object p1
.end method

.method public this()Lcom/google/protobuf/DescriptorProtos$goto$if;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->abstract()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$goto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$goto$if;

    return-object v0
.end method

.method public throw(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$if$if;

    return-object p1
.end method

.method public throws()Lcom/google/protobuf/compiler/PluginProtos$for$if;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->default()Lcom/google/protobuf/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/a1;->new()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$for$if;

    return-object v0
.end method

.method public transient(I)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->switch()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->static(I)V

    :goto_0
    return-object p0
.end method

.method public try(ILcom/google/protobuf/DescriptorProtos$goto$if;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->try:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->switch()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->new:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$goto$if;->implements()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$goto$if;->implements()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public volatile(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/compiler/PluginProtos$if;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$if;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$if$if;->interface(Lcom/google/protobuf/compiler/PluginProtos$if;)Lcom/google/protobuf/compiler/PluginProtos$if$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public while()Lcom/google/protobuf/compiler/PluginProtos$if$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/s;->try:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->if:Lcom/google/protobuf/LazyStringList;

    .line 2
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$if$if;->do:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method
