.class public Landroid/support/v4/b30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/b30$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/TransitionFactory<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:I

.field private for:Lcom/bumptech/glide/request/transition/if;

.field private final if:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/b30;->do:I

    .line 3
    iput-boolean p2, p0, Landroid/support/v4/b30;->if:Z

    return-void
.end method

.method private do()Lcom/bumptech/glide/request/transition/Transition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/b30;->for:Lcom/bumptech/glide/request/transition/if;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/bumptech/glide/request/transition/if;

    iget v1, p0, Landroid/support/v4/b30;->do:I

    iget-boolean v2, p0, Landroid/support/v4/b30;->if:Z

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/transition/if;-><init>(IZ)V

    iput-object v0, p0, Landroid/support/v4/b30;->for:Lcom/bumptech/glide/request/transition/if;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/b30;->for:Lcom/bumptech/glide/request/transition/if;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/do;Z)Lcom/bumptech/glide/request/transition/Transition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/do;",
            "Z)",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/bumptech/glide/load/do;->MEMORY_CACHE:Lcom/bumptech/glide/load/do;

    if-ne p1, p2, :cond_0

    .line 2
    invoke-static {}, Lcom/bumptech/glide/request/transition/for;->do()Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/b30;->do()Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p1

    :goto_0
    return-object p1
.end method
