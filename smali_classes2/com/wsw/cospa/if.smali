.class public final Lcom/wsw/cospa/if;
.super Landroid/support/v4/dn1;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static q:Lcom/wsw/cospa/if;

.field private static r:Lcom/wsw/cospa/if;

.field private static s:Lcom/wsw/cospa/if;

.field private static t:Lcom/wsw/cospa/if;

.field private static u:Lcom/wsw/cospa/if;

.field private static v:Lcom/wsw/cospa/if;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/dn1;-><init>()V

    return-void
.end method

.method public static A0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/if;->s:Lcom/wsw/cospa/if;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/if;->z0()Lcom/wsw/cospa/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/if;->x0()Lcom/wsw/cospa/if;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/if;->s:Lcom/wsw/cospa/if;

    .line 4
    :cond_0
    sget-object v0, Lcom/wsw/cospa/if;->s:Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public static C0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/if;->r:Lcom/wsw/cospa/if;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/if;->B0()Lcom/wsw/cospa/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/if;->x0()Lcom/wsw/cospa/if;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/if;->r:Lcom/wsw/cospa/if;

    .line 4
    :cond_0
    sget-object v0, Lcom/wsw/cospa/if;->r:Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public static C1(Lcom/bumptech/glide/load/Key;)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->B1(Lcom/bumptech/glide/load/Key;)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static E0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/if;->t:Lcom/wsw/cospa/if;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/if;->D0()Lcom/wsw/cospa/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/if;->x0()Lcom/wsw/cospa/if;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/if;->t:Lcom/wsw/cospa/if;

    .line 4
    :cond_0
    sget-object v0, Lcom/wsw/cospa/if;->t:Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public static E1(F)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->D1(F)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static G1(Z)Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->F1(Z)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static H0(Ljava/lang/Class;)Lcom/wsw/cospa/if;
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
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->G0(Ljava/lang/Class;)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static J1(I)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->I1(I)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static K0(Lcom/bumptech/glide/load/engine/case;)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->J0(Lcom/bumptech/glide/load/engine/case;)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static O0(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->N0(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static Q0(Landroid/graphics/Bitmap$CompressFormat;)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->P0(Landroid/graphics/Bitmap$CompressFormat;)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static S0(I)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->R0(I)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static V0(I)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->T0(I)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static W0(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->U0(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static a1()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/if;->q:Lcom/wsw/cospa/if;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/if;->Z0()Lcom/wsw/cospa/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/if;->x0()Lcom/wsw/cospa/if;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/if;->q:Lcom/wsw/cospa/if;

    .line 4
    :cond_0
    sget-object v0, Lcom/wsw/cospa/if;->q:Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public static c1(Lcom/bumptech/glide/load/if;)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->b1(Lcom/bumptech/glide/load/if;)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static e1(J)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/wsw/cospa/if;->d1(J)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static g1()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/if;->v:Lcom/wsw/cospa/if;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/if;->L0()Lcom/wsw/cospa/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/if;->x0()Lcom/wsw/cospa/if;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/if;->v:Lcom/wsw/cospa/if;

    .line 4
    :cond_0
    sget-object v0, Lcom/wsw/cospa/if;->v:Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public static h1()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/wsw/cospa/if;->u:Lcom/wsw/cospa/if;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/if;->M0()Lcom/wsw/cospa/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/if;->x0()Lcom/wsw/cospa/if;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/if;->u:Lcom/wsw/cospa/if;

    .line 4
    :cond_0
    sget-object v0, Lcom/wsw/cospa/if;->u:Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public static j1(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/wsw/cospa/if;
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
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/wsw/cospa/if;->A1(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static s1(I)Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->q1(I)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static t1(II)Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/wsw/cospa/if;->r1(II)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static w1(I)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->u1(I)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static x1(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->v1(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static y0(Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;
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
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->K1(Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method

.method public static z1(Lcom/bumptech/glide/try;)Lcom/wsw/cospa/if;
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
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/if;->y1(Lcom/bumptech/glide/try;)Lcom/wsw/cospa/if;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic A(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->u1(I)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public A1(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TY;>;TY;)",
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->v1(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public B0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->new()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public B1(Lcom/bumptech/glide/load/Key;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->I(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->y1(Lcom/bumptech/glide/try;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public D0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->try()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public D1(F)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # F
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
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->J(F)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public F0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public F1(Z)Lcom/wsw/cospa/if;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->K(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public G0(Ljava/lang/Class;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Ljava/lang/Class;
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
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->else(Ljava/lang/Class;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/if;->A1(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public H1(Landroid/content/res/Resources$Theme;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->L(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic I(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->B1(Lcom/bumptech/glide/load/Key;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public I0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->goto()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public I1(I)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->M(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic J(F)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # F
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
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->D1(F)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public J0(Lcom/bumptech/glide/load/engine/case;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/case;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic K(Z)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->F1(Z)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public K1(Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
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
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->N(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic L(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->H1(Landroid/content/res/Resources$Theme;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public L0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->break()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public L1(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/do;->Q(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic M(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->I1(I)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public M0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->catch()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public final varargs M1([Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->S([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic N(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->K1(Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public N0(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->class(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public final varargs N1([Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->T([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public O1(Z)Lcom/wsw/cospa/if;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->U(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public P0(Landroid/graphics/Bitmap$CompressFormat;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->const(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public P1(Z)Lcom/wsw/cospa/if;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->V(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic Q(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/if;->L1(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public R0(I)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # I
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
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->final(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic S([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->M1([Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->N1([Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public T0(I)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic U(Z)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->O1(Z)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public U0(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic V(Z)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->P1(Z)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public X0(I)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->while(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public Y0(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->import(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public Z0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->native()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public b1(Lcom/bumptech/glide/load/if;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->public(Lcom/bumptech/glide/load/if;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic break()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->L0()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic case()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->F0()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic catch()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->M0()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic class(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->N0(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->F0()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic const(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->P0(Landroid/graphics/Bitmap$CompressFormat;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public d1(J)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/do;->return(J)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic do(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->w0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic else(Ljava/lang/Class;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->G0(Ljava/lang/Class;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public f1()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->o()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public bridge synthetic final(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # I
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
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->R0(I)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic for()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->z0()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic goto()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->I0()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public i1(Z)Lcom/wsw/cospa/if;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->p(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic if()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->x0()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic import(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->Y0(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public k1()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->q()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public l1()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->r()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public m1()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->s()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public n1()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->t()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public bridge synthetic native()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->Z0()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic new()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->B0()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->f1()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public o1(Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
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
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->v(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic p(Z)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->i1(Z)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public p1(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/do;->x(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic public(Lcom/bumptech/glide/load/if;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->b1(Lcom/bumptech/glide/load/if;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic q()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->k1()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public q1(I)Lcom/wsw/cospa/if;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->y(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic r()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->l1()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public r1(II)Lcom/wsw/cospa/if;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/do;->z(II)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic return(J)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/if;->d1(J)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic s()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->m1()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic super(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->T0(I)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic t()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->n1()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/case;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->J0(Lcom/bumptech/glide/load/engine/case;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->U0(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic try()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/if;->D0()Lcom/wsw/cospa/if;

    move-result-object v0

    return-object v0
.end method

.method public u1(I)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic v(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->o1(Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public v1(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public w0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/do;
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
            "Lcom/bumptech/glide/request/do<",
            "*>;)",
            "Lcom/wsw/cospa/if;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->do(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic while(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->X0(I)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/if;->p1(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public x0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->if()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method

.method public bridge synthetic y(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/if;->q1(I)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public y1(Lcom/bumptech/glide/try;)Lcom/wsw/cospa/if;
    .locals 0
    .param p1    # Lcom/bumptech/glide/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/if;

    return-object p1
.end method

.method public bridge synthetic z(II)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/if;->r1(II)Lcom/wsw/cospa/if;

    move-result-object p1

    return-object p1
.end method

.method public z0()Lcom/wsw/cospa/if;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/if;

    return-object v0
.end method
