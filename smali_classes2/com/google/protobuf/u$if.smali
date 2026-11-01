.class public final Lcom/google/protobuf/u$if;
.super Lcom/google/protobuf/GeneratedMessageV3$if;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ListValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$if<",
        "Lcom/google/protobuf/u$if;",
        ">;",
        "Lcom/google/protobuf/ListValueOrBuilder;"
    }
.end annotation


# instance fields
.field private do:I

.field private for:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/b2;",
            "Lcom/google/protobuf/b2$for;",
            "Lcom/google/protobuf/ValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/b2;",
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
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/u$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/u$if;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/u$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/u$if;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/g1;->else:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->public()Lcom/google/protobuf/v0;

    :cond_0
    return-void
.end method

.method private public()Lcom/google/protobuf/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0<",
            "Lcom/google/protobuf/b2;",
            "Lcom/google/protobuf/b2$for;",
            "Lcom/google/protobuf/ValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/protobuf/v0;

    iget-object v1, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/u$if;->do:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/v0;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method private throw()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/u$if;->do:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/u$if;->do:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/u$if;->do:I

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract(ILcom/google/protobuf/b2;)Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->throw()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

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

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u$if;->if(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u$if;->if(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public break()Lcom/google/protobuf/u;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/GeneratedMessageV3$if;Lcom/google/protobuf/u$do;)V

    .line 2
    iget v1, p0, Lcom/google/protobuf/u$if;->do:I

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v2, :cond_1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    .line 5
    iget v1, p0, Lcom/google/protobuf/u$if;->do:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/u$if;->do:I

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/u;->access$302(Lcom/google/protobuf/u;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/v0;->case()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/u;->access$302(Lcom/google/protobuf/u;Ljava/util/List;)Ljava/util/List;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->this()Lcom/google/protobuf/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->this()Lcom/google/protobuf/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->break()Lcom/google/protobuf/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->break()Lcom/google/protobuf/u;

    move-result-object v0

    return-object v0
.end method

.method public case(Lcom/google/protobuf/b2;)Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->throw()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

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

.method public catch()Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clear()Lcom/google/protobuf/GeneratedMessageV3$if;

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    .line 4
    iget v0, p0, Lcom/google/protobuf/u$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/u$if;->do:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public class(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/u$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u$if;

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->catch()Lcom/google/protobuf/u$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->catch()Lcom/google/protobuf/u$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->catch()Lcom/google/protobuf/u$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->catch()Lcom/google/protobuf/u$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->class(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->class(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->const(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->const(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->const(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->super()Lcom/google/protobuf/u$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$do;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->super()Lcom/google/protobuf/u$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->super()Lcom/google/protobuf/u$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->super()Lcom/google/protobuf/u$if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->super()Lcom/google/protobuf/u$if;

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
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->super()Lcom/google/protobuf/u$if;

    move-result-object v0

    return-object v0
.end method

.method public const(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/u$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->clearOneof(Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u$if;

    return-object p1
.end method

.method public default(I)Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->throw()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

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

.method public do(Ljava/lang/Iterable;)Lcom/google/protobuf/u$if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/b2;",
            ">;)",
            "Lcom/google/protobuf/u$if;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->throw()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

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

.method public else()Lcom/google/protobuf/b2$for;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->public()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/b2;->getDefaultInstance()Lcom/google/protobuf/b2;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->for(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/b2$for;

    return-object v0
.end method

.method public extends(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/u$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u$if;

    return-object p1
.end method

.method public final()Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    .line 3
    iget v0, p0, Lcom/google/protobuf/u$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/u$if;->do:I

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->else()V

    :goto_0
    return-object p0
.end method

.method public finally(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/u$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$if;->setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u$if;

    return-object p1
.end method

.method public for(ILcom/google/protobuf/b2$for;)Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->throw()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/b2$for;->if()Lcom/google/protobuf/b2;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/b2$for;->if()Lcom/google/protobuf/b2;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->new(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->while()Lcom/google/protobuf/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->while()Lcom/google/protobuf/u;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/g1;->else:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public getValues(I)Lcom/google/protobuf/b2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->final(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2;

    return-object p1
.end method

.method public getValuesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->const()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/b2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->throw()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValuesOrBuilder(I)Lcom/google/protobuf/ValueOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ValueOrBuilder;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->while(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ValueOrBuilder;

    return-object p1
.end method

.method public getValuesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/ValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/v0;->import()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lcom/google/protobuf/b2$for;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->public()Lcom/google/protobuf/v0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/b2;->getDefaultInstance()Lcom/google/protobuf/b2;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/v0;->if(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2$for;

    return-object p1
.end method

.method public if(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/u$if;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$if;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u$if;

    return-object p1
.end method

.method public import(I)Lcom/google/protobuf/b2$for;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->public()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->catch(I)Lcom/google/protobuf/AbstractMessage$do;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b2$for;

    return-object p1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/g1;->goto:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/u;

    const-class v2, Lcom/google/protobuf/u$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u$if;->return(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->switch(Lcom/google/protobuf/Message;)Lcom/google/protobuf/u$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u$if;->return(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/u$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u$if;->return(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->switch(Lcom/google/protobuf/Message;)Lcom/google/protobuf/u$if;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u$if;->return(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/AbstractMessage$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->throws(Lcom/google/protobuf/t1;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->throws(Lcom/google/protobuf/t1;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->throws(Lcom/google/protobuf/t1;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public native()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/b2$for;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->public()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public new(ILcom/google/protobuf/b2;)Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->throw()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

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

.method public final package(Lcom/google/protobuf/t1;)Lcom/google/protobuf/u$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u$if;

    return-object p1
.end method

.method public private(ILcom/google/protobuf/b2$for;)Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->throw()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/b2$for;->if()Lcom/google/protobuf/b2;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/b2$for;->if()Lcom/google/protobuf/b2;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0;->switch(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public return(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Lcom/google/protobuf/u$if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/u;->access$400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/implements;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u;
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->static(Lcom/google/protobuf/u;)Lcom/google/protobuf/u$if;

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

    check-cast p2, Lcom/google/protobuf/u;
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
    invoke-virtual {p0, v0}, Lcom/google/protobuf/u$if;->static(Lcom/google/protobuf/u;)Lcom/google/protobuf/u$if;

    .line 6
    :cond_1
    throw p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u$if;->extends(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u$if;->extends(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/u$if;->finally(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/u$if;->finally(Lcom/google/protobuf/Descriptors$else;ILjava/lang/Object;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->package(Lcom/google/protobuf/t1;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->package(Lcom/google/protobuf/t1;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1
.end method

.method public static(Lcom/google/protobuf/u;)Lcom/google/protobuf/u$if;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/u;->getDefaultInstance()Lcom/google/protobuf/u;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_2

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/u;->access$300(Lcom/google/protobuf/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/google/protobuf/u;->access$300(Lcom/google/protobuf/u;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    .line 6
    iget v0, p0, Lcom/google/protobuf/u$if;->do:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/u$if;->do:I

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->throw()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/u;->access$300(Lcom/google/protobuf/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/u;->access$300(Lcom/google/protobuf/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->public()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->goto()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    .line 14
    invoke-static {p1}, Lcom/google/protobuf/u;->access$300(Lcom/google/protobuf/u;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    .line 15
    iget v1, p0, Lcom/google/protobuf/u$if;->do:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protobuf/u$if;->do:I

    .line 16
    sget-boolean v1, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->public()Lcom/google/protobuf/v0;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/google/protobuf/u;->access$300(Lcom/google/protobuf/u;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v0;->do(Ljava/lang/Iterable;)Lcom/google/protobuf/v0;

    .line 19
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->throws(Lcom/google/protobuf/t1;)Lcom/google/protobuf/u$if;

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    return-object p0
.end method

.method public super()Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->clone()Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/u$if;

    return-object v0
.end method

.method public switch(Lcom/google/protobuf/Message;)Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/u;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/u;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u$if;->static(Lcom/google/protobuf/u;)Lcom/google/protobuf/u$if;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    return-object p0
.end method

.method public this()Lcom/google/protobuf/u;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u$if;->break()Lcom/google/protobuf/u;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/u;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$do;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Landroid/support/v4/sb2;

    move-result-object v0

    throw v0
.end method

.method public final throws(Lcom/google/protobuf/t1;)Lcom/google/protobuf/u$if;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$if;->mergeUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/GeneratedMessageV3$if;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u$if;

    return-object p1
.end method

.method public try(Lcom/google/protobuf/b2$for;)Lcom/google/protobuf/u$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/u$if;->for:Lcom/google/protobuf/v0;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/u$if;->throw()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/u$if;->if:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/b2$for;->if()Lcom/google/protobuf/b2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$if;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/b2$for;->if()Lcom/google/protobuf/b2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->try(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/v0;

    :goto_0
    return-object p0
.end method

.method public while()Lcom/google/protobuf/u;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/u;->getDefaultInstance()Lcom/google/protobuf/u;

    move-result-object v0

    return-object v0
.end method
