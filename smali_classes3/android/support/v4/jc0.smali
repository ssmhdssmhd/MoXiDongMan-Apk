.class public Landroid/support/v4/jc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field public do:Lorg/bouncycastle/math/ec/new;

.field public for:I

.field public if:Lorg/bouncycastle/math/ec/ECLookupTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/jc0;->do:Lorg/bouncycastle/math/ec/new;

    iput-object v0, p0, Landroid/support/v4/jc0;->if:Lorg/bouncycastle/math/ec/ECLookupTable;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/jc0;->for:I

    return-void
.end method


# virtual methods
.method public case(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/jc0;->for:I

    return-void
.end method

.method public do()Lorg/bouncycastle/math/ec/ECLookupTable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jc0;->if:Lorg/bouncycastle/math/ec/ECLookupTable;

    return-object v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/jc0;->for:I

    return v0
.end method

.method public if()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jc0;->do:Lorg/bouncycastle/math/ec/new;

    return-object v0
.end method

.method public new(Lorg/bouncycastle/math/ec/ECLookupTable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/jc0;->if:Lorg/bouncycastle/math/ec/ECLookupTable;

    return-void
.end method

.method public try(Lorg/bouncycastle/math/ec/new;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/jc0;->do:Lorg/bouncycastle/math/ec/new;

    return-void
.end method
