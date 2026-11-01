.class public final Landroid/support/v4/r9;
.super Lcom/bumptech/glide/this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/this<",
        "Landroid/support/v4/r9;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/this;-><init>()V

    return-void
.end method

.method public static const(Lcom/bumptech/glide/request/transition/TransitionFactory;)Landroid/support/v4/r9;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/support/v4/r9;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/r9;

    invoke-direct {v0}, Landroid/support/v4/r9;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/this;->case(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/this;

    move-result-object p0

    check-cast p0, Landroid/support/v4/r9;

    return-object p0
.end method

.method public static final()Landroid/support/v4/r9;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/r9;

    invoke-direct {v0}, Landroid/support/v4/r9;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/r9;->goto()Landroid/support/v4/r9;

    move-result-object v0

    return-object v0
.end method

.method public static import(Lcom/bumptech/glide/request/transition/TransitionFactory;)Landroid/support/v4/r9;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/support/v4/r9;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/r9;

    invoke-direct {v0}, Landroid/support/v4/r9;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v4/r9;->class(Lcom/bumptech/glide/request/transition/TransitionFactory;)Landroid/support/v4/r9;

    move-result-object p0

    return-object p0
.end method

.method public static super(I)Landroid/support/v4/r9;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/r9;

    invoke-direct {v0}, Landroid/support/v4/r9;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v4/r9;->this(I)Landroid/support/v4/r9;

    move-result-object p0

    return-object p0
.end method

.method public static throw(Landroid/support/v4/b30$do;)Landroid/support/v4/r9;
    .locals 1
    .param p0    # Landroid/support/v4/b30$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/r9;

    invoke-direct {v0}, Landroid/support/v4/r9;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v4/r9;->break(Landroid/support/v4/b30$do;)Landroid/support/v4/r9;

    move-result-object p0

    return-object p0
.end method

.method public static while(Landroid/support/v4/b30;)Landroid/support/v4/r9;
    .locals 1
    .param p0    # Landroid/support/v4/b30;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/r9;

    invoke-direct {v0}, Landroid/support/v4/r9;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v4/r9;->catch(Landroid/support/v4/b30;)Landroid/support/v4/r9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break(Landroid/support/v4/b30$do;)Landroid/support/v4/r9;
    .locals 0
    .param p1    # Landroid/support/v4/b30$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/b30$do;->do()Landroid/support/v4/b30;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/r9;->class(Lcom/bumptech/glide/request/transition/TransitionFactory;)Landroid/support/v4/r9;

    move-result-object p1

    return-object p1
.end method

.method public catch(Landroid/support/v4/b30;)Landroid/support/v4/r9;
    .locals 0
    .param p1    # Landroid/support/v4/b30;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/r9;->class(Lcom/bumptech/glide/request/transition/TransitionFactory;)Landroid/support/v4/r9;

    move-result-object p1

    return-object p1
.end method

.method public class(Lcom/bumptech/glide/request/transition/TransitionFactory;)Landroid/support/v4/r9;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/support/v4/r9;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/q9;

    invoke-direct {v0, p1}, Landroid/support/v4/q9;-><init>(Lcom/bumptech/glide/request/transition/TransitionFactory;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/this;->case(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/this;

    move-result-object p1

    check-cast p1, Landroid/support/v4/r9;

    return-object p1
.end method

.method public goto()Landroid/support/v4/r9;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/b30$do;

    invoke-direct {v0}, Landroid/support/v4/b30$do;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v4/r9;->break(Landroid/support/v4/b30$do;)Landroid/support/v4/r9;

    move-result-object v0

    return-object v0
.end method

.method public this(I)Landroid/support/v4/r9;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/b30$do;

    invoke-direct {v0, p1}, Landroid/support/v4/b30$do;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/v4/r9;->break(Landroid/support/v4/b30$do;)Landroid/support/v4/r9;

    move-result-object p1

    return-object p1
.end method
