.class Lorg/bouncycastle/math/ec/new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/new;->static(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Lorg/bouncycastle/math/ec/new;

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/new;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/new$do;->for:Lorg/bouncycastle/math/ec/new;

    iput-boolean p2, p0, Lorg/bouncycastle/math/ec/new$do;->do:Z

    iput-boolean p3, p0, Lorg/bouncycastle/math/ec/new$do;->if:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/math/ec/break;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/math/ec/break;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lorg/bouncycastle/math/ec/break;

    invoke-direct {p1}, Lorg/bouncycastle/math/ec/break;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/break;->if()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/break;->do()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/new$do;->do:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new$do;->for:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->strictfp()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/break;->try()V

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/break;->new()V

    :cond_4
    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/new$do;->if:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/break;->for()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new$do;->for:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/new;->volatile()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/break;->try()V

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/break;->case()V

    :cond_6
    return-object p1
.end method
