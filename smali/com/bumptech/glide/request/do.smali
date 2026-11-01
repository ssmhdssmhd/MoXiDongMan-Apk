.class public abstract Lcom/bumptech/glide/request/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bumptech/glide/request/do<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:I = 0x2000

.field private static final abstract:I = 0x8

.field private static final b:I = 0x4000

.field private static final c:I = 0x8000

.field private static final continue:I = 0x10

.field private static final d:I = 0x10000

.field private static final e:I = 0x20000

.field private static final f:I = 0x40000

.field private static final finally:I = -0x1

.field private static final g:I = 0x80000

.field private static final h:I = 0x100000

.field private static final implements:I = 0x400

.field private static final instanceof:I = 0x800

.field private static final interface:I = 0x80

.field private static final package:I = 0x2

.field private static final private:I = 0x4

.field private static final protected:I = 0x100

.field private static final strictfp:I = 0x20

.field private static final synchronized:I = 0x1000

.field private static final transient:I = 0x200

.field private static final volatile:I = 0x40


# instance fields
.field private break:I

.field private case:I

.field private catch:I

.field private class:Lcom/bumptech/glide/load/Key;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private const:Z

.field private default:Z

.field private do:I

.field private else:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private extends:Z

.field private final:Z

.field private for:Lcom/bumptech/glide/load/engine/case;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private goto:I

.field private if:F

.field private import:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation
.end field

.field private native:Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private new:Lcom/bumptech/glide/try;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private public:Z

.field private return:Landroid/content/res/Resources$Theme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static:Z

.field private super:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private switch:Z

.field private this:Z

.field private throw:I

.field private throws:Z

.field private try:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private while:Landroid/support/v4/f81;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/bumptech/glide/request/do;->if:F

    .line 3
    sget-object v0, Lcom/bumptech/glide/load/engine/case;->try:Lcom/bumptech/glide/load/engine/case;

    iput-object v0, p0, Lcom/bumptech/glide/request/do;->for:Lcom/bumptech/glide/load/engine/case;

    .line 4
    sget-object v0, Lcom/bumptech/glide/try;->NORMAL:Lcom/bumptech/glide/try;

    iput-object v0, p0, Lcom/bumptech/glide/request/do;->new:Lcom/bumptech/glide/try;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->this:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/bumptech/glide/request/do;->break:I

    .line 7
    iput v1, p0, Lcom/bumptech/glide/request/do;->catch:I

    .line 8
    invoke-static {}, Landroid/support/v4/b70;->do()Landroid/support/v4/b70;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/do;->class:Lcom/bumptech/glide/load/Key;

    .line 9
    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->final:Z

    .line 10
    new-instance v1, Landroid/support/v4/f81;

    invoke-direct {v1}, Landroid/support/v4/f81;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/do;->while:Landroid/support/v4/f81;

    .line 11
    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    .line 12
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/request/do;->native:Ljava/lang/Class;

    .line 13
    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->default:Z

    return-void
.end method

.method private D(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/try;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/do;->E(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method private E(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/try;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/do;->P(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/do;->w(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/bumptech/glide/request/do;->default:Z

    return-object p1
.end method

.method private F()Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method private G()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->public:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->F()Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/do;->do:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result p1

    return p1
.end method

.method private static i(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private u(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/try;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/do;->E(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A(I)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/do;->goto:I

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/request/do;->else:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    .line 6
    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/do;->else:Landroid/graphics/drawable/Drawable;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bumptech/glide/request/do;->goto:I

    and-int/lit16 p1, p1, -0x81

    .line 6
    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Lcom/bumptech/glide/try;
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
            "Lcom/bumptech/glide/try;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/try;

    iput-object p1, p0, Lcom/bumptech/glide/request/do;->new:Lcom/bumptech/glide/try;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;
    .locals 1
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
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->while:Landroid/support/v4/f81;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/f81;->for(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Landroid/support/v4/f81;

    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public I(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/Key;
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
            "Lcom/bumptech/glide/load/Key;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->I(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/Key;

    iput-object p1, p0, Lcom/bumptech/glide/request/do;->class:Lcom/bumptech/glide/load/Key;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public J(F)Lcom/bumptech/glide/request/do;
    .locals 1
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->J(F)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 3
    iput p1, p0, Lcom/bumptech/glide/request/do;->if:F

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K(Z)Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/do;->K(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 3
    iput-boolean p1, p0, Lcom/bumptech/glide/request/do;->this:Z

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public L(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->L(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/do;->return:Landroid/content/res/Resources$Theme;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public M(I)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/ok0;->if:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public N(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 1
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
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/request/do;->O(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public O(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/do;->O(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/else;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/else;-><init>(Lcom/bumptech/glide/load/Transformation;Z)V

    .line 4
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/bumptech/glide/request/do;->R(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    .line 5
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/bumptech/glide/request/do;->R(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    .line 6
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/else;->do()Lcom/bumptech/glide/load/Transformation;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/bumptech/glide/request/do;->R(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    .line 7
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v1, Landroid/support/v4/hh0;

    invoke-direct {v1, p1}, Landroid/support/v4/hh0;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/bumptech/glide/request/do;->R(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    .line 8
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public final P(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/try;
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
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/try;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/do;->P(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/do;->class(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/bumptech/glide/request/do;

    .line 4
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/do;->N(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public Q(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 1
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
            "TY;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/request/do;->R(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public R(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
            "TY;>;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/request/do;->R(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/bumptech/glide/request/do;->final:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->default:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    .line 10
    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 11
    iput-boolean p2, p0, Lcom/bumptech/glide/request/do;->const:Z

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public varargs S([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 2
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
            ">;)TT;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/w01;

    invoke-direct {v0, p1}, Landroid/support/v4/w01;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/do;->O(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/do;->N(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public varargs T([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 1
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
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/w01;

    invoke-direct {v0, p1}, Landroid/support/v4/w01;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/do;->O(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public U(Z)Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->U(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/do;->extends:Z

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public V(Z)Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->V(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/do;->switch:Z

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->switch:Z

    return v0
.end method

.method public final abstract()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/do;->catch:I

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    return v0
.end method

.method public break()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/ih0;->if:Lcom/bumptech/glide/load/Option;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/do;->h(I)Z

    move-result v0

    return v0
.end method

.method public case()Lcom/bumptech/glide/request/do;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/do;

    .line 2
    new-instance v1, Landroid/support/v4/f81;

    invoke-direct {v1}, Landroid/support/v4/f81;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/do;->while:Landroid/support/v4/f81;

    .line 3
    iget-object v2, p0, Lcom/bumptech/glide/request/do;->while:Landroid/support/v4/f81;

    invoke-virtual {v1, v2}, Landroid/support/v4/f81;->if(Landroid/support/v4/f81;)V

    .line 4
    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/bumptech/glide/request/do;->public:Z

    .line 7
    iput-boolean v1, v0, Lcom/bumptech/glide/request/do;->static:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public catch()Lcom/bumptech/glide/request/do;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->catch()Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget v0, p0, Lcom/bumptech/glide/request/do;->do:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/bumptech/glide/request/do;->const:Z

    const v2, -0x20001

    and-int/2addr v0, v2

    .line 6
    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 7
    iput-boolean v1, p0, Lcom/bumptech/glide/request/do;->final:Z

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->default:Z

    .line 10
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public class(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/try;
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
            "Lcom/bumptech/glide/load/resource/bitmap/try;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->goto:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

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
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public const(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
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
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/i9;->for:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public final continue()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->else:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->public:Z

    return v0
.end method

.method public final default()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->super:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public do(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/request/do;
    .locals 4
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
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->do(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p1, Lcom/bumptech/glide/request/do;->if:F

    iput v0, p0, Lcom/bumptech/glide/request/do;->if:F

    .line 5
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p1, Lcom/bumptech/glide/request/do;->switch:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->switch:Z

    .line 7
    :cond_2
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p1, Lcom/bumptech/glide/request/do;->extends:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->extends:Z

    .line 9
    :cond_3
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p1, Lcom/bumptech/glide/request/do;->for:Lcom/bumptech/glide/load/engine/case;

    iput-object v0, p0, Lcom/bumptech/glide/request/do;->for:Lcom/bumptech/glide/load/engine/case;

    .line 11
    :cond_4
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p1, Lcom/bumptech/glide/request/do;->new:Lcom/bumptech/glide/try;

    iput-object v0, p0, Lcom/bumptech/glide/request/do;->new:Lcom/bumptech/glide/try;

    .line 13
    :cond_5
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p1, Lcom/bumptech/glide/request/do;->try:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/do;->try:Landroid/graphics/drawable/Drawable;

    .line 15
    iput v1, p0, Lcom/bumptech/glide/request/do;->case:I

    .line 16
    iget v0, p0, Lcom/bumptech/glide/request/do;->do:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 17
    :cond_6
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 18
    iget v0, p1, Lcom/bumptech/glide/request/do;->case:I

    iput v0, p0, Lcom/bumptech/glide/request/do;->case:I

    .line 19
    iput-object v2, p0, Lcom/bumptech/glide/request/do;->try:Landroid/graphics/drawable/Drawable;

    .line 20
    iget v0, p0, Lcom/bumptech/glide/request/do;->do:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 21
    :cond_7
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p1, Lcom/bumptech/glide/request/do;->else:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/do;->else:Landroid/graphics/drawable/Drawable;

    .line 23
    iput v1, p0, Lcom/bumptech/glide/request/do;->goto:I

    .line 24
    iget v0, p0, Lcom/bumptech/glide/request/do;->do:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 25
    :cond_8
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    iget v0, p1, Lcom/bumptech/glide/request/do;->goto:I

    iput v0, p0, Lcom/bumptech/glide/request/do;->goto:I

    .line 27
    iput-object v2, p0, Lcom/bumptech/glide/request/do;->else:Landroid/graphics/drawable/Drawable;

    .line 28
    iget v0, p0, Lcom/bumptech/glide/request/do;->do:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 29
    :cond_9
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-boolean v0, p1, Lcom/bumptech/glide/request/do;->this:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->this:Z

    .line 31
    :cond_a
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    iget v0, p1, Lcom/bumptech/glide/request/do;->catch:I

    iput v0, p0, Lcom/bumptech/glide/request/do;->catch:I

    .line 33
    iget v0, p1, Lcom/bumptech/glide/request/do;->break:I

    iput v0, p0, Lcom/bumptech/glide/request/do;->break:I

    .line 34
    :cond_b
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    iget-object v0, p1, Lcom/bumptech/glide/request/do;->class:Lcom/bumptech/glide/load/Key;

    iput-object v0, p0, Lcom/bumptech/glide/request/do;->class:Lcom/bumptech/glide/load/Key;

    .line 36
    :cond_c
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p1, Lcom/bumptech/glide/request/do;->native:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/do;->native:Ljava/lang/Class;

    .line 38
    :cond_d
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p1, Lcom/bumptech/glide/request/do;->super:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/do;->super:Landroid/graphics/drawable/Drawable;

    .line 40
    iput v1, p0, Lcom/bumptech/glide/request/do;->throw:I

    .line 41
    iget v0, p0, Lcom/bumptech/glide/request/do;->do:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 42
    :cond_e
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    iget v0, p1, Lcom/bumptech/glide/request/do;->throw:I

    iput v0, p0, Lcom/bumptech/glide/request/do;->throw:I

    .line 44
    iput-object v2, p0, Lcom/bumptech/glide/request/do;->super:Landroid/graphics/drawable/Drawable;

    .line 45
    iget v0, p0, Lcom/bumptech/glide/request/do;->do:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 46
    :cond_f
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p1, Lcom/bumptech/glide/request/do;->return:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/request/do;->return:Landroid/content/res/Resources$Theme;

    .line 48
    :cond_10
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    iget-boolean v0, p1, Lcom/bumptech/glide/request/do;->final:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->final:Z

    .line 50
    :cond_11
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    iget-boolean v0, p1, Lcom/bumptech/glide/request/do;->const:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->const:Z

    .line 52
    :cond_12
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    iget-boolean v0, p1, Lcom/bumptech/glide/request/do;->default:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->default:Z

    .line 55
    :cond_13
    iget v0, p1, Lcom/bumptech/glide/request/do;->do:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/do;->i(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 56
    iget-boolean v0, p1, Lcom/bumptech/glide/request/do;->throws:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->throws:Z

    .line 57
    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->final:Z

    if-nez v0, :cond_15

    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget v0, p0, Lcom/bumptech/glide/request/do;->do:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 60
    iput-boolean v1, p0, Lcom/bumptech/glide/request/do;->const:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    .line 61
    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->default:Z

    .line 63
    :cond_15
    iget v0, p0, Lcom/bumptech/glide/request/do;->do:I

    iget v1, p1, Lcom/bumptech/glide/request/do;->do:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->while:Landroid/support/v4/f81;

    iget-object p1, p1, Lcom/bumptech/glide/request/do;->while:Landroid/support/v4/f81;

    invoke-virtual {v0, p1}, Landroid/support/v4/f81;->if(Landroid/support/v4/f81;)V

    .line 65
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->this:Z

    return v0
.end method

.method public else(Ljava/lang/Class;)Lcom/bumptech/glide/request/do;
    .locals 1
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
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->else(Ljava/lang/Class;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/bumptech/glide/request/do;->native:Ljava/lang/Class;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/request/do;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/bumptech/glide/request/do;

    .line 3
    iget v0, p1, Lcom/bumptech/glide/request/do;->if:F

    iget v2, p0, Lcom/bumptech/glide/request/do;->if:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/do;->case:I

    iget v2, p1, Lcom/bumptech/glide/request/do;->case:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/do;->try:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/do;->try:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/case;->new(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/do;->goto:I

    iget v2, p1, Lcom/bumptech/glide/request/do;->goto:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/do;->else:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/do;->else:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/case;->new(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/do;->throw:I

    iget v2, p1, Lcom/bumptech/glide/request/do;->throw:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/do;->super:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/do;->super:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/case;->new(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->this:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/do;->this:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/do;->break:I

    iget v2, p1, Lcom/bumptech/glide/request/do;->break:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/do;->catch:I

    iget v2, p1, Lcom/bumptech/glide/request/do;->catch:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->const:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/do;->const:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->final:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/do;->final:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->switch:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/do;->switch:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->throws:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/do;->throws:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/do;->for:Lcom/bumptech/glide/load/engine/case;

    iget-object v2, p1, Lcom/bumptech/glide/request/do;->for:Lcom/bumptech/glide/load/engine/case;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/do;->new:Lcom/bumptech/glide/try;

    iget-object v2, p1, Lcom/bumptech/glide/request/do;->new:Lcom/bumptech/glide/try;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/do;->while:Landroid/support/v4/f81;

    iget-object v2, p1, Lcom/bumptech/glide/request/do;->while:Landroid/support/v4/f81;

    .line 8
    invoke-virtual {v0, v2}, Landroid/support/v4/f81;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/do;->native:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/do;->native:Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/do;->class:Lcom/bumptech/glide/load/Key;

    iget-object v2, p1, Lcom/bumptech/glide/request/do;->class:Lcom/bumptech/glide/load/Key;

    .line 11
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/case;->new(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/do;->return:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/bumptech/glide/request/do;->return:Landroid/content/res/Resources$Theme;

    .line 12
    invoke-static {v0, p1}, Lcom/bumptech/glide/util/case;->new(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final extends()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/do;->throw:I

    return v0
.end method

.method public final f()Z
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/do;->h(I)Z

    move-result v0

    return v0
.end method

.method public final(I)Lcom/bumptech/glide/request/do;
    .locals 1
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/i9;->if:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public final finally()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->throws:Z

    return v0
.end method

.method public for()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->try:Lcom/bumptech/glide/load/resource/bitmap/try;

    new-instance v1, Landroid/support/v4/uf;

    invoke-direct {v1}, Landroid/support/v4/uf;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/do;->P(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->default:Z

    return v0
.end method

.method public goto()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->catch:Lcom/bumptech/glide/load/Option;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/do;->if:F

    invoke-static {v0}, Lcom/bumptech/glide/util/case;->class(F)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/bumptech/glide/request/do;->case:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->super(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/request/do;->try:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->throw(Ljava/lang/Object;I)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/bumptech/glide/request/do;->goto:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->super(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/request/do;->else:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->throw(Ljava/lang/Object;I)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/bumptech/glide/request/do;->throw:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->super(II)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/request/do;->super:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->throw(Ljava/lang/Object;I)I

    move-result v0

    .line 8
    iget-boolean v1, p0, Lcom/bumptech/glide/request/do;->this:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->import(ZI)I

    move-result v0

    .line 9
    iget v1, p0, Lcom/bumptech/glide/request/do;->break:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->super(II)I

    move-result v0

    .line 10
    iget v1, p0, Lcom/bumptech/glide/request/do;->catch:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->super(II)I

    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/bumptech/glide/request/do;->const:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->import(ZI)I

    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/bumptech/glide/request/do;->final:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->import(ZI)I

    move-result v0

    .line 13
    iget-boolean v1, p0, Lcom/bumptech/glide/request/do;->switch:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->import(ZI)I

    move-result v0

    .line 14
    iget-boolean v1, p0, Lcom/bumptech/glide/request/do;->throws:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->import(ZI)I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/bumptech/glide/request/do;->for:Lcom/bumptech/glide/load/engine/case;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->throw(Ljava/lang/Object;I)I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/bumptech/glide/request/do;->new:Lcom/bumptech/glide/try;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->throw(Ljava/lang/Object;I)I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/request/do;->while:Landroid/support/v4/f81;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->throw(Ljava/lang/Object;I)I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->throw(Ljava/lang/Object;I)I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/request/do;->native:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->throw(Ljava/lang/Object;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/bumptech/glide/request/do;->class:Lcom/bumptech/glide/load/Key;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->throw(Ljava/lang/Object;I)I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/request/do;->return:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->throw(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public if()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->public:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    .line 4
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->o()Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public final implements()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->return:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public import(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->import(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/do;->super:Landroid/graphics/drawable/Drawable;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bumptech/glide/request/do;->throw:I

    and-int/lit16 p1, p1, -0x4001

    .line 6
    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public final instanceof()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->import:Ljava/util/Map;

    return-object v0
.end method

.method public final interface()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->native:Ljava/lang/Class;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/do;->h(I)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->final:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->const:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/do;->h(I)Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/do;->catch:I

    iget v1, p0, Lcom/bumptech/glide/request/do;->break:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/case;->static(II)Z

    move-result v0

    return v0
.end method

.method public native()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->for:Lcom/bumptech/glide/load/resource/bitmap/try;

    new-instance v1, Landroid/support/v4/hc0;

    invoke-direct {v1}, Landroid/support/v4/hc0;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/do;->D(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public new()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->new:Lcom/bumptech/glide/load/resource/bitmap/try;

    new-instance v1, Landroid/support/v4/vf;

    invoke-direct {v1}, Landroid/support/v4/vf;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/do;->D(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/bumptech/glide/request/do;->public:Z

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->F()Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public p(Z)Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->p(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/request/do;->throws:Z

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public final package()Landroid/support/v4/f81;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->while:Landroid/support/v4/f81;

    return-object v0
.end method

.method public final private()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/do;->break:I

    return v0
.end method

.method public final protected()Lcom/bumptech/glide/load/Key;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->class:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method

.method public public(Lcom/bumptech/glide/load/if;)Lcom/bumptech/glide/request/do;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/if;
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
            "Lcom/bumptech/glide/load/if;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->else:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    sget-object v1, Landroid/support/v4/ih0;->do:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public q()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->try:Lcom/bumptech/glide/load/resource/bitmap/try;

    new-instance v1, Landroid/support/v4/uf;

    invoke-direct {v1}, Landroid/support/v4/uf;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/do;->w(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->new:Lcom/bumptech/glide/load/resource/bitmap/try;

    new-instance v1, Landroid/support/v4/vf;

    invoke-direct {v1}, Landroid/support/v4/vf;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/do;->u(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public return(J)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->else:Lcom/bumptech/glide/load/Option;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public s()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->try:Lcom/bumptech/glide/load/resource/bitmap/try;

    new-instance v1, Landroid/support/v4/yl;

    invoke-direct {v1}, Landroid/support/v4/yl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/do;->w(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public final static()Lcom/bumptech/glide/load/engine/case;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->for:Lcom/bumptech/glide/load/engine/case;

    return-object v0
.end method

.method public final strictfp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/do;->goto:I

    return v0
.end method

.method public super(I)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/do;->case:I

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/request/do;->try:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x11

    .line 6
    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public final switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/do;->case:I

    return v0
.end method

.method public final synchronized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->extends:Z

    return v0
.end method

.method public t()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->for:Lcom/bumptech/glide/load/resource/bitmap/try;

    new-instance v1, Landroid/support/v4/hc0;

    invoke-direct {v1}, Landroid/support/v4/hc0;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/do;->u(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/case;
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
            "Lcom/bumptech/glide/load/engine/case;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/support/v4/cf1;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/case;

    iput-object p1, p0, Lcom/bumptech/glide/request/do;->for:Lcom/bumptech/glide/load/engine/case;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/request/do;->try:Landroid/graphics/drawable/Drawable;

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bumptech/glide/request/do;->case:I

    and-int/lit8 p1, p1, -0x21

    .line 6
    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public final throws()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->try:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final transient()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/do;->if:F

    return v0
.end method

.method public try()Lcom/bumptech/glide/request/do;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->new:Lcom/bumptech/glide/load/resource/bitmap/try;

    new-instance v1, Landroid/support/v4/yl;

    invoke-direct {v1}, Landroid/support/v4/yl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/do;->P(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    return-object v0
.end method

.method public v(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 1
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
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/request/do;->O(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public final volatile()Lcom/bumptech/glide/try;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/do;->new:Lcom/bumptech/glide/try;

    return-object v0
.end method

.method public final w(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/try;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/do;->w(Lcom/bumptech/glide/load/resource/bitmap/try;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/do;->class(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/bumptech/glide/request/do;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/bumptech/glide/request/do;->O(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public while(I)Lcom/bumptech/glide/request/do;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->while(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/do;->throw:I

    .line 4
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/request/do;->super:Landroid/graphics/drawable/Drawable;

    and-int/lit16 p1, p1, -0x2001

    .line 6
    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 1
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
            "TY;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/request/do;->R(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public y(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/request/do;->z(II)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method

.method public z(II)Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/do;->static:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/do;->z(II)Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/do;->catch:I

    .line 4
    iput p2, p0, Lcom/bumptech/glide/request/do;->break:I

    .line 5
    iget p1, p0, Lcom/bumptech/glide/request/do;->do:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/bumptech/glide/request/do;->do:I

    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/request/do;->G()Lcom/bumptech/glide/request/do;

    move-result-object p1

    return-object p1
.end method
