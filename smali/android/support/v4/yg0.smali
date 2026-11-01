.class public final Landroid/support/v4/yg0;
.super Lcom/bumptech/glide/this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/this<",
        "Landroid/support/v4/yg0<",
        "TTranscodeType;>;TTranscodeType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/this;-><init>()V

    return-void
.end method

.method public static break(Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;)Landroid/support/v4/yg0;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;",
            ")",
            "Landroid/support/v4/yg0<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/yg0;

    invoke-direct {v0}, Landroid/support/v4/yg0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/this;->else(Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;)Lcom/bumptech/glide/this;

    move-result-object p0

    check-cast p0, Landroid/support/v4/yg0;

    return-object p0
.end method

.method public static catch()Landroid/support/v4/yg0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/support/v4/yg0<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/yg0;

    invoke-direct {v0}, Landroid/support/v4/yg0;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/this;->if()Lcom/bumptech/glide/this;

    move-result-object v0

    check-cast v0, Landroid/support/v4/yg0;

    return-object v0
.end method

.method public static goto(I)Landroid/support/v4/yg0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/support/v4/yg0<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/yg0;

    invoke-direct {v0}, Landroid/support/v4/yg0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/this;->try(I)Lcom/bumptech/glide/this;

    move-result-object p0

    check-cast p0, Landroid/support/v4/yg0;

    return-object p0
.end method

.method public static this(Lcom/bumptech/glide/request/transition/TransitionFactory;)Landroid/support/v4/yg0;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "-TTranscodeType;>;)",
            "Landroid/support/v4/yg0<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/yg0;

    invoke-direct {v0}, Landroid/support/v4/yg0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/this;->case(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/this;

    move-result-object p0

    check-cast p0, Landroid/support/v4/yg0;

    return-object p0
.end method
