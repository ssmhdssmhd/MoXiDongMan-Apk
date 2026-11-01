.class public Lcom/google/protobuf/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/google/protobuf/GeneratedMessage$case;",
        "IType::",
        "Lcom/google/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private do:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

.field private for:Lcom/google/protobuf/GeneratedMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMType;"
        }
    .end annotation
.end field

.field private if:Lcom/google/protobuf/GeneratedMessage$case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBType;"
        }
    .end annotation
.end field

.field private new:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;",
            "Lcom/google/protobuf/GeneratedMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/Internal;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage;

    iput-object p1, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/z0;->do:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .line 4
    iput-boolean p3, p0, Lcom/google/protobuf/z0;->new:Z

    return-void
.end method

.method private goto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/z0;->new:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/z0;->do:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/protobuf/AbstractMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/protobuf/z0;->new:Z

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
    iget-object v0, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    return-object v0
.end method

.method public do()Lcom/google/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/protobuf/z0;->new:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/z0;->try()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    return-object v0
.end method

.method public else(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/z0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/z0<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    invoke-interface {v0}, Lcom/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/z0;->new()Lcom/google/protobuf/GeneratedMessage$case;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/google/protobuf/z0;->goto()V

    return-object p0
.end method

.method public for()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/protobuf/z0;->do:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method public if()Lcom/google/protobuf/z0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/z0<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    invoke-interface {v0}, Lcom/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/google/protobuf/GeneratedMessage;

    iput-object v0, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage$case;->dispose()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/z0;->goto()V

    return-object p0
.end method

.method public markDirty()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/z0;->goto()V

    return-void
.end method

.method public new()Lcom/google/protobuf/GeneratedMessage$case;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessage$case;

    iput-object v0, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$do;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$do;

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage$case;->markClean()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    return-object v0
.end method

.method public this(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/z0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/z0<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/Internal;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage;

    iput-object p1, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    .line 2
    iget-object p1, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$case;->dispose()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/z0;->goto()V

    return-object p0
.end method

.method public try()Lcom/google/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/z0;->if:Lcom/google/protobuf/GeneratedMessage$case;

    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessage;

    iput-object v0, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/z0;->for:Lcom/google/protobuf/GeneratedMessage;

    return-object v0
.end method
