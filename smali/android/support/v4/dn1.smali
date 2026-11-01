.class public Landroid/support/v4/dn1;
.super Lcom/bumptech/glide/request/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/do<",
        "Landroid/support/v4/dn1;",
        ">;"
    }
.end annotation


# static fields
.field private static i:Landroid/support/v4/dn1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static j:Landroid/support/v4/dn1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static k:Landroid/support/v4/dn1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static l:Landroid/support/v4/dn1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static m:Landroid/support/v4/dn1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static n:Landroid/support/v4/dn1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static o:Landroid/support/v4/dn1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static p:Landroid/support/v4/dn1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;-><init>()V

    return-void
.end method

.method public static W(Lcom/bumptech/glide/load/Transformation;)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/support/v4/dn1;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->N(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static X()Landroid/support/v4/dn1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dn1;->m:Landroid/support/v4/dn1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->if()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sput-object v0, Landroid/support/v4/dn1;->m:Landroid/support/v4/dn1;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/dn1;->m:Landroid/support/v4/dn1;

    return-object v0
.end method

.method public static Y()Landroid/support/v4/dn1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dn1;->l:Landroid/support/v4/dn1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->new()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->if()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sput-object v0, Landroid/support/v4/dn1;->l:Landroid/support/v4/dn1;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/dn1;->l:Landroid/support/v4/dn1;

    return-object v0
.end method

.method public static Z()Landroid/support/v4/dn1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dn1;->n:Landroid/support/v4/dn1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->try()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->if()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sput-object v0, Landroid/support/v4/dn1;->n:Landroid/support/v4/dn1;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/dn1;->n:Landroid/support/v4/dn1;

    return-object v0
.end method

.method public static a0(Ljava/lang/Class;)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/support/v4/dn1;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->else(Ljava/lang/Class;)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static b0(Lcom/bumptech/glide/load/engine/case;)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/case;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static c0(Lcom/bumptech/glide/load/resource/bitmap/try;)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/resource/bitmap/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->class(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static d0(Landroid/graphics/Bitmap$CompressFormat;)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->const(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static e0(I)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->final(I)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static f0(I)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static g0(Landroid/graphics/drawable/Drawable;)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static h0()Landroid/support/v4/dn1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dn1;->k:Landroid/support/v4/dn1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->native()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->if()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sput-object v0, Landroid/support/v4/dn1;->k:Landroid/support/v4/dn1;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/dn1;->k:Landroid/support/v4/dn1;

    return-object v0
.end method

.method public static i0(Lcom/bumptech/glide/load/if;)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->public(Lcom/bumptech/glide/load/if;)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static j0(J)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/do;->return(J)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static k0()Landroid/support/v4/dn1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dn1;->p:Landroid/support/v4/dn1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->break()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->if()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sput-object v0, Landroid/support/v4/dn1;->p:Landroid/support/v4/dn1;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/dn1;->p:Landroid/support/v4/dn1;

    return-object v0
.end method

.method public static l0()Landroid/support/v4/dn1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dn1;->o:Landroid/support/v4/dn1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->catch()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->if()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sput-object v0, Landroid/support/v4/dn1;->o:Landroid/support/v4/dn1;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/dn1;->o:Landroid/support/v4/dn1;

    return-object v0
.end method

.method public static m0(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Landroid/support/v4/dn1;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static n0(I)Landroid/support/v4/dn1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0, p0}, Landroid/support/v4/dn1;->o0(II)Landroid/support/v4/dn1;

    move-result-object p0

    return-object p0
.end method

.method public static o0(II)Landroid/support/v4/dn1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/do;->z(II)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static p0(I)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static q0(Landroid/graphics/drawable/Drawable;)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static r0(Lcom/bumptech/glide/try;)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # Lcom/bumptech/glide/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static s0(Lcom/bumptech/glide/load/Key;)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->I(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static t0(F)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->J(F)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static u0(Z)Landroid/support/v4/dn1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    sget-object p0, Landroid/support/v4/dn1;->i:Landroid/support/v4/dn1;

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Landroid/support/v4/dn1;

    invoke-direct {p0}, Landroid/support/v4/dn1;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/do;->K(Z)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->if()Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    sput-object p0, Landroid/support/v4/dn1;->i:Landroid/support/v4/dn1;

    .line 3
    :cond_0
    sget-object p0, Landroid/support/v4/dn1;->i:Landroid/support/v4/dn1;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Landroid/support/v4/dn1;->j:Landroid/support/v4/dn1;

    if-nez p0, :cond_2

    .line 5
    new-instance p0, Landroid/support/v4/dn1;

    invoke-direct {p0}, Landroid/support/v4/dn1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/do;->K(Z)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->if()Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    sput-object p0, Landroid/support/v4/dn1;->j:Landroid/support/v4/dn1;

    .line 6
    :cond_2
    sget-object p0, Landroid/support/v4/dn1;->j:Landroid/support/v4/dn1;

    return-object p0
.end method

.method public static v0(I)Landroid/support/v4/dn1;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/do;->M(I)Lcom/bumptech/glide/request/do;

    move-result-object p0

    check-cast p0, Landroid/support/v4/dn1;

    return-object p0
.end method
