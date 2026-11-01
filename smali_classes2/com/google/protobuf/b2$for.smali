.class public final Lcom/google/protobuf/b2$for;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/google/protobuf/b2$for;",
        ">;",
        "Lcom/google/protobuf/ValueOrBuilder;"
    }
.end annotation


# instance fields
.field private do:I

.field private for:Lcom/google/protobuf/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/f1;",
            "Lcom/google/protobuf/f1$if;",
            "Lcom/google/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private if:Ljava/lang/Object;

.field private new:Lcom/google/protobuf/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/u;",
            "Lcom/google/protobuf/u$if;",
            "Lcom/google/protobuf/ListValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/b2$for;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/b2$for;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/b2$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/b2$for;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/b2$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/b2$for;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/g1;->try:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method private native()Lcom/google/protobuf/a1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/f1;",
            "Lcom/google/protobuf/f1$if;",
            "Lcom/google/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->for:Lcom/google/protobuf/a1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/f1;->getDefaultInstance()Lcom/google/protobuf/f1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 4
    :cond_0
    new-instance v0, Lcom/google/protobuf/a1;

    iget-object v2, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/f1;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/b2$for;->for:Lcom/google/protobuf/a1;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 8
    :cond_1
    iput v1, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 10
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->for:Lcom/google/protobuf/a1;

    return-object v0
.end method

.method private while()Lcom/google/protobuf/a1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a1<",
            "Lcom/google/protobuf/u;",
            "Lcom/google/protobuf/u$if;",
            "Lcom/google/protobuf/ListValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->new:Lcom/google/protobuf/a1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/u;->getDefaultInstance()Lcom/google/protobuf/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 4
    :cond_0
    new-instance v0, Lcom/google/protobuf/a1;

    iget-object v2, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/u;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/a1;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/b2$for;->new:Lcom/google/protobuf/a1;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 8
    :cond_1
    iput v1, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    .line 10
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->new:Lcom/google/protobuf/a1;

    return-object v0
.end method


# virtual methods
.method public abstract(Lcom/google/protobuf/m0;)Lcom/google/protobuf/b2$for;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/m0;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b2$for;->do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b2$for;->do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public break()Lcom/google/protobuf/b2$for;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->if()Lcom/google/protobuf/b2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->if()Lcom/google/protobuf/b2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->for()Lcom/google/protobuf/b2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->for()Lcom/google/protobuf/b2;

    move-result-object v0

    return-object v0
.end method

.method public case(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/b2$for;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2$for;

    return-object p1
.end method

.method public catch(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/b2$for;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2$for;

    return-object p1
.end method

.method public class()Lcom/google/protobuf/b2$for;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->new()Lcom/google/protobuf/b2$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->new()Lcom/google/protobuf/b2$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->new()Lcom/google/protobuf/b2$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->new()Lcom/google/protobuf/b2$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->case(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->case(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->catch(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->catch(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->catch(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->final()Lcom/google/protobuf/b2$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->final()Lcom/google/protobuf/b2$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->final()Lcom/google/protobuf/b2$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->final()Lcom/google/protobuf/b2$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->final()Lcom/google/protobuf/b2$for;

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
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->final()Lcom/google/protobuf/b2$for;

    move-result-object v0

    return-object v0
.end method

.method public const()Lcom/google/protobuf/b2$for;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->for:Lcom/google/protobuf/a1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v0, v3, :cond_2

    .line 3
    iput v2, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 4
    iput-object v1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    iget v4, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v4, v3, :cond_1

    .line 7
    iput v2, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 8
    iput-object v1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->if()Lcom/google/protobuf/a1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public continue(I)Lcom/google/protobuf/b2$for;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final default(Lcom/google/protobuf/t1;)Lcom/google/protobuf/b2$for;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2$for;

    return-object p1
.end method

.method public do(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/b2$for;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2$for;

    return-object p1
.end method

.method public else()Lcom/google/protobuf/b2$for;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public extends(Z)Lcom/google/protobuf/b2$for;
    .locals 1

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public final()Lcom/google/protobuf/b2$for;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/b2$for;

    return-object v0
.end method

.method public finally(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/b2$for;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2$for;

    return-object p1
.end method

.method public for()Lcom/google/protobuf/b2;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/b2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/b2;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/b2$do;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->access$302(Lcom/google/protobuf/b2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget v1, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->access$302(Lcom/google/protobuf/b2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget v1, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->access$302(Lcom/google/protobuf/b2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget v1, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->access$302(Lcom/google/protobuf/b2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    iget v1, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/b2$for;->for:Lcom/google/protobuf/a1;

    if-nez v1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->access$302(Lcom/google/protobuf/b2;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/a1;->do()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->access$302(Lcom/google/protobuf/b2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_5
    :goto_0
    iget v1, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/b2$for;->new:Lcom/google/protobuf/a1;

    if-nez v1, :cond_6

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->access$302(Lcom/google/protobuf/b2;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/a1;->do()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->access$302(Lcom/google/protobuf/b2;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_7
    :goto_1
    iget v1, p0, Lcom/google/protobuf/b2$for;->do:I

    invoke-static {v0, v1}, Lcom/google/protobuf/b2;->access$402(Lcom/google/protobuf/b2;I)I

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public getBoolValue()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->super()Lcom/google/protobuf/b2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->super()Lcom/google/protobuf/b2;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/g1;->try:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public getKindCase()Lcom/google/protobuf/b2$new;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    invoke-static {v0}, Lcom/google/protobuf/b2$new;->forNumber(I)Lcom/google/protobuf/b2$new;

    move-result-object v0

    return-object v0
.end method

.method public getListValue()Lcom/google/protobuf/u;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->new:Lcom/google/protobuf/a1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/protobuf/u;->getDefaultInstance()Lcom/google/protobuf/u;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget v2, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v2, v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->try()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/u;

    return-object v0

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/protobuf/u;->getDefaultInstance()Lcom/google/protobuf/u;

    move-result-object v0

    return-object v0
.end method

.method public getListValueOrBuilder()Lcom/google/protobuf/ListValueOrBuilder;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/b2$for;->new:Lcom/google/protobuf/a1;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Lcom/google/protobuf/a1;->case()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ListValueOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/protobuf/u;->getDefaultInstance()Lcom/google/protobuf/u;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Lcom/google/protobuf/m0;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/m0;->valueOf(I)Lcom/google/protobuf/m0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/google/protobuf/m0;->UNRECOGNIZED:Lcom/google/protobuf/m0;

    :cond_0
    return-object v0

    .line 6
    :cond_1
    sget-object v0, Lcom/google/protobuf/m0;->NULL_VALUE:Lcom/google/protobuf/m0;

    return-object v0
.end method

.method public getNullValueValue()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberValue()D
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 4
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget v2, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStructValue()Lcom/google/protobuf/f1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->for:Lcom/google/protobuf/a1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/f1;

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/protobuf/f1;->getDefaultInstance()Lcom/google/protobuf/f1;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget v2, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v2, v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->try()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f1;

    return-object v0

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/protobuf/f1;->getDefaultInstance()Lcom/google/protobuf/f1;

    move-result-object v0

    return-object v0
.end method

.method public getStructValueOrBuilder()Lcom/google/protobuf/StructOrBuilder;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/b2$for;->for:Lcom/google/protobuf/a1;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Lcom/google/protobuf/a1;->case()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/StructOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/f1;

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/protobuf/f1;->getDefaultInstance()Lcom/google/protobuf/f1;

    move-result-object v0

    return-object v0
.end method

.method public goto()Lcom/google/protobuf/b2$for;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->new:Lcom/google/protobuf/a1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v0, v3, :cond_2

    .line 3
    iput v2, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 4
    iput-object v1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    iget v4, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v4, v3, :cond_1

    .line 7
    iput v2, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 8
    iput-object v1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->if()Lcom/google/protobuf/a1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public hasListValue()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStructValue()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if()Lcom/google/protobuf/b2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b2$for;->for()Lcom/google/protobuf/b2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/b2;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public implements(Lcom/google/protobuf/f1;)Lcom/google/protobuf/b2$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->for:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    :goto_0
    const/4 p1, 0x5

    .line 6
    iput p1, p0, Lcom/google/protobuf/b2$for;->do:I

    return-object p0
.end method

.method public import()Lcom/google/protobuf/f1$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/b2$for;->native()Lcom/google/protobuf/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/a1;->new()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/f1$if;

    return-object v0
.end method

.method public final instanceof(Lcom/google/protobuf/t1;)Lcom/google/protobuf/b2$for;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2$for;

    return-object p1
.end method

.method public interface(Ljava/lang/String;)Lcom/google/protobuf/b2$for;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/g1;->case:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/b2;

    const-class v2, Lcom/google/protobuf/b2$for;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b2$for;->public(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->return(Lcom/google/protobuf/Message;)Lcom/google/protobuf/b2$for;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b2$for;->public(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/b2$for;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b2$for;->public(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->return(Lcom/google/protobuf/Message;)Lcom/google/protobuf/b2$for;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b2$for;->public(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->default(Lcom/google/protobuf/t1;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->default(Lcom/google/protobuf/t1;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->default(Lcom/google/protobuf/t1;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public new()Lcom/google/protobuf/b2$for;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    return-object p0
.end method

.method public package(Lcom/google/protobuf/u$if;)Lcom/google/protobuf/b2$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->new:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/u$if;->this()Lcom/google/protobuf/u;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/u$if;->this()Lcom/google/protobuf/u;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    :goto_0
    const/4 p1, 0x6

    .line 5
    iput p1, p0, Lcom/google/protobuf/b2$for;->do:I

    return-object p0
.end method

.method public private(Lcom/google/protobuf/u;)Lcom/google/protobuf/b2$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->new:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    :goto_0
    const/4 p1, 0x6

    .line 6
    iput p1, p0, Lcom/google/protobuf/b2$for;->do:I

    return-object p0
.end method

.method public protected(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/b2$for;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public public(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/b2$for;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/b2;->access$500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->static(Lcom/google/protobuf/b2;)Lcom/google/protobuf/b2$for;

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

    check-cast p2, Lcom/google/protobuf/b2;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/b2$for;->static(Lcom/google/protobuf/b2;)Lcom/google/protobuf/b2$for;

    .line 6
    :cond_1
    throw p1
.end method

.method public return(Lcom/google/protobuf/Message;)Lcom/google/protobuf/b2$for;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/b2;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/b2;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->static(Lcom/google/protobuf/b2;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b2$for;->finally(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b2$for;->finally(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/b2$for;->volatile(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/b2$for;->volatile(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->instanceof(Lcom/google/protobuf/t1;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->instanceof(Lcom/google/protobuf/t1;)Lcom/google/protobuf/b2$for;

    move-result-object p1

    return-object p1
.end method

.method public static(Lcom/google/protobuf/b2;)Lcom/google/protobuf/b2$for;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/b2;->getDefaultInstance()Lcom/google/protobuf/b2;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/google/protobuf/b2$if;->do:[I

    invoke-virtual {p1}, Lcom/google/protobuf/b2;->getKindCase()Lcom/google/protobuf/b2$new;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/b2;->getListValue()Lcom/google/protobuf/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/b2$for;->switch(Lcom/google/protobuf/u;)Lcom/google/protobuf/b2$for;

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/b2;->getStructValue()Lcom/google/protobuf/f1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/b2$for;->throws(Lcom/google/protobuf/f1;)Lcom/google/protobuf/b2$for;

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/b2;->getBoolValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/b2$for;->extends(Z)Lcom/google/protobuf/b2$for;

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 7
    invoke-static {p1}, Lcom/google/protobuf/b2;->access$300(Lcom/google/protobuf/b2;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/b2;->getNumberValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/b2$for;->strictfp(D)Lcom/google/protobuf/b2$for;

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/b2;->getNullValueValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/b2$for;->continue(I)Lcom/google/protobuf/b2$for;

    .line 11
    :goto_0
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b2$for;->default(Lcom/google/protobuf/t1;)Lcom/google/protobuf/b2$for;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public strictfp(D)Lcom/google/protobuf/b2$for;
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public super()Lcom/google/protobuf/b2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/b2;->getDefaultInstance()Lcom/google/protobuf/b2;

    move-result-object v0

    return-object v0
.end method

.method public switch(Lcom/google/protobuf/u;)Lcom/google/protobuf/b2$for;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->new:Lcom/google/protobuf/a1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/protobuf/u;->getDefaultInstance()Lcom/google/protobuf/u;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-static {v0}, Lcom/google/protobuf/u;->newBuilder(Lcom/google/protobuf/u;)Lcom/google/protobuf/u$if;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/u$if;->static(Lcom/google/protobuf/u;)Lcom/google/protobuf/u$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/u$if;->break()Lcom/google/protobuf/u;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->else(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->new:Lcom/google/protobuf/a1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 11
    :goto_1
    iput v1, p0, Lcom/google/protobuf/b2$for;->do:I

    return-object p0
.end method

.method public this()Lcom/google/protobuf/b2$for;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public throw()Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/b2$for;->while()Lcom/google/protobuf/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/a1;->new()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/u$if;

    return-object v0
.end method

.method public throws(Lcom/google/protobuf/f1;)Lcom/google/protobuf/b2$for;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->for:Lcom/google/protobuf/a1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/protobuf/f1;->getDefaultInstance()Lcom/google/protobuf/f1;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/f1;

    invoke-static {v0}, Lcom/google/protobuf/f1;->newBuilder(Lcom/google/protobuf/f1;)Lcom/google/protobuf/f1$if;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/f1$if;->super(Lcom/google/protobuf/f1;)Lcom/google/protobuf/f1$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/f1$if;->for()Lcom/google/protobuf/f1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    iget v2, p0, Lcom/google/protobuf/b2$for;->do:I

    if-ne v2, v1, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->else(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->for:Lcom/google/protobuf/a1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    .line 11
    :goto_1
    iput v1, p0, Lcom/google/protobuf/b2$for;->do:I

    return-object p0
.end method

.method public transient(Lcom/google/protobuf/f1$if;)Lcom/google/protobuf/b2$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/b2$for;->for:Lcom/google/protobuf/a1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/f1$if;->if()Lcom/google/protobuf/f1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/f1$if;->if()Lcom/google/protobuf/f1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a1;->this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;

    :goto_0
    const/4 p1, 0x5

    .line 5
    iput p1, p0, Lcom/google/protobuf/b2$for;->do:I

    return-object p0
.end method

.method public try()Lcom/google/protobuf/b2$for;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/protobuf/b2$for;->do:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/b2$for;->if:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public volatile(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/b2$for;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2$for;

    return-object p1
.end method
