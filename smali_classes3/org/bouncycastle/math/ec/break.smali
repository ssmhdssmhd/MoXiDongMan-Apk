.class Lorg/bouncycastle/math/ec/break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompInfo;


# static fields
.field public static final new:Ljava/lang/String; = "bc_validity"


# instance fields
.field private do:Z

.field private for:Z

.field private if:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/break;->do:Z

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/break;->if:Z

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/break;->for:Z

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/break;->for:Z

    return-void
.end method

.method public do()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/break;->if:Z

    return v0
.end method

.method public for()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/break;->for:Z

    return v0
.end method

.method public if()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/break;->do:Z

    return v0
.end method

.method public new()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/break;->if:Z

    return-void
.end method

.method public try()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/break;->do:Z

    return-void
.end method
