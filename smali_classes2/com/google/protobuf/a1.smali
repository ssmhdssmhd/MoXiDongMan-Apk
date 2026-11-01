.class public Lcom/google/protobuf/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/AbstractMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/AbstractMessage;",
        "BType:",
        "Lcom/google/protobuf/AbstractMessage$do;",
        "IType::",
        "Lcom/google/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/AbstractMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private do:Lcom/google/protobuf/AbstractMessage$BuilderParent;

.field private for:Lcom/google/protobuf/AbstractMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMType;"
        }
    .end annotation
.end field

.field private if:Lcom/google/protobuf/AbstractMessage$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBType;"
        }
    .end annotation
.end field

.field private new:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;",
            "Lcom/google/protobuf/AbstractMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/Internal;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage;

    iput-object p1, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/a1;->do:Lcom/google/protobuf/AbstractMessage$BuilderParent;

    .line 4
    iput-boolean p3, p0, Lcom/google/protobuf/a1;->new:Z

    return-void
.end method

.method private goto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/a1;->new:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/a1;->do:Lcom/google/protobuf/AbstractMessage$BuilderParent;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/protobuf/AbstractMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/protobuf/a1;->new:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public case()Lcom/google/protobuf/MessageOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    return-object v0
.end method

.method public do()Lcom/google/protobuf/AbstractMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/protobuf/a1;->new:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/a1;->try()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    return-object v0
.end method

.method public else(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/a1<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    invoke-interface {v0}, Lcom/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/a1;->new()Lcom/google/protobuf/AbstractMessage$do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/google/protobuf/a1;->goto()V

    return-object p0
.end method

.method public for()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/protobuf/a1;->do:Lcom/google/protobuf/AbstractMessage$BuilderParent;

    return-void
.end method

.method public if()Lcom/google/protobuf/a1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a1<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    invoke-interface {v0}, Lcom/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/google/protobuf/AbstractMessage;

    iput-object v0, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage$do;->dispose()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/a1;->goto()V

    return-object p0
.end method

.method public markDirty()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/a1;->goto()V

    return-void
.end method

.method public new()Lcom/google/protobuf/AbstractMessage$do;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$do;

    iput-object v0, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessage$do;->markClean()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    return-object v0
.end method

.method public this(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/a1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/a1<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/Internal;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AbstractMessage;

    iput-object p1, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    .line 2
    iget-object p1, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessage$do;->dispose()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/a1;->goto()V

    return-object p0
.end method

.method public try()Lcom/google/protobuf/AbstractMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/a1;->if:Lcom/google/protobuf/AbstractMessage$do;

    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage;

    iput-object v0, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/a1;->for:Lcom/google/protobuf/AbstractMessage;

    return-object v0
.end method
