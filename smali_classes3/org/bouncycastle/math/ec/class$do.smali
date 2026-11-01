.class final Lorg/bouncycastle/math/ec/class$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/class;->const(Lorg/bouncycastle/math/ec/new;IZLorg/bouncycastle/math/ec/ECPointMap;)Lorg/bouncycastle/math/ec/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/ff2;

.field public final synthetic for:Z

.field public final synthetic if:Lorg/bouncycastle/math/ec/ECPointMap;


# direct methods
.method public constructor <init>(Landroid/support/v4/ff2;Lorg/bouncycastle/math/ec/ECPointMap;Z)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/class$do;->do:Landroid/support/v4/ff2;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/class$do;->if:Lorg/bouncycastle/math/ec/ECPointMap;

    iput-boolean p3, p0, Lorg/bouncycastle/math/ec/class$do;->for:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 7

    new-instance p1, Landroid/support/v4/ff2;

    invoke-direct {p1}, Landroid/support/v4/ff2;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/class$do;->do:Landroid/support/v4/ff2;

    invoke-virtual {v0}, Landroid/support/v4/ff2;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/class$do;->if:Lorg/bouncycastle/math/ec/ECPointMap;

    invoke-interface {v1, v0}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/ff2;->case(Lorg/bouncycastle/math/ec/new;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/class$do;->do:Landroid/support/v4/ff2;

    invoke-virtual {v0}, Landroid/support/v4/ff2;->do()[Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/bouncycastle/math/ec/new;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/math/ec/class$do;->if:Lorg/bouncycastle/math/ec/ECPointMap;

    aget-object v6, v0, v4

    invoke-interface {v5, v6}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/support/v4/ff2;->new([Lorg/bouncycastle/math/ec/new;)V

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/class$do;->for:Z

    if-eqz v0, :cond_3

    new-array v0, v1, [Lorg/bouncycastle/math/ec/new;

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/new;->private()Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/support/v4/ff2;->try([Lorg/bouncycastle/math/ec/new;)V

    :cond_3
    return-object p1
.end method
