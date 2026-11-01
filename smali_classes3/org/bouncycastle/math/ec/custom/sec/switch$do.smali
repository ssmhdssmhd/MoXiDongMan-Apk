.class Lorg/bouncycastle/math/ec/custom/sec/switch$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/custom/sec/switch;->case([Lorg/bouncycastle/math/ec/new;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Lorg/bouncycastle/math/ec/custom/sec/switch;

.field public final synthetic if:[J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/custom/sec/switch;I[J)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/switch$do;->for:Lorg/bouncycastle/math/ec/custom/sec/switch;

    iput p2, p0, Lorg/bouncycastle/math/ec/custom/sec/switch$do;->do:I

    iput-object p3, p0, Lorg/bouncycastle/math/ec/custom/sec/switch$do;->if:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/custom/sec/switch$do;->do:I

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/new;
    .locals 13

    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object v0

    invoke-static {}, Landroid/support/v4/k21;->const()[J

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/bouncycastle/math/ec/custom/sec/switch$do;->do:I

    if-ge v3, v5, :cond_1

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x4

    if-ge v7, v8, :cond_0

    aget-wide v8, v0, v7

    iget-object v10, p0, Lorg/bouncycastle/math/ec/custom/sec/switch$do;->if:[J

    add-int v11, v4, v7

    aget-wide v11, v10, v11

    and-long/2addr v11, v5

    xor-long/2addr v8, v11

    aput-wide v8, v0, v7

    aget-wide v8, v1, v7

    add-int/lit8 v11, v4, 0x4

    add-int/2addr v11, v7

    aget-wide v11, v10, v11

    and-long/2addr v11, v5

    xor-long/2addr v8, v11

    aput-wide v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/switch$do;->for:Lorg/bouncycastle/math/ec/custom/sec/switch;

    new-instance v3, Landroid/support/v4/sv1;

    invoke-direct {v3, v0}, Landroid/support/v4/sv1;-><init>([J)V

    new-instance v0, Landroid/support/v4/sv1;

    invoke-direct {v0, v1}, Landroid/support/v4/sv1;-><init>([J)V

    invoke-virtual {p1, v3, v0, v2}, Lorg/bouncycastle/math/ec/custom/sec/switch;->break(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method
