.class Lorg/bouncycastle/math/ec/custom/sec/try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/custom/sec/try;->case([Lorg/bouncycastle/math/ec/new;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Lorg/bouncycastle/math/ec/custom/sec/try;

.field public final synthetic if:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/custom/sec/try;I[I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/try$do;->for:Lorg/bouncycastle/math/ec/custom/sec/try;

    iput p2, p0, Lorg/bouncycastle/math/ec/custom/sec/try$do;->do:I

    iput-object p3, p0, Lorg/bouncycastle/math/ec/custom/sec/try$do;->if:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/custom/sec/try$do;->do:I

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/new;
    .locals 10

    invoke-static {}, Landroid/support/v4/i21;->break()[I

    move-result-object v0

    invoke-static {}, Landroid/support/v4/i21;->break()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/bouncycastle/math/ec/custom/sec/try$do;->do:I

    if-ge v3, v5, :cond_1

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x6

    if-ge v6, v7, :cond_0

    aget v7, v0, v6

    iget-object v8, p0, Lorg/bouncycastle/math/ec/custom/sec/try$do;->if:[I

    add-int v9, v4, v6

    aget v9, v8, v9

    and-int/2addr v9, v5

    xor-int/2addr v7, v9

    aput v7, v0, v6

    aget v7, v1, v6

    add-int/lit8 v9, v4, 0x6

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0xc

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/try$do;->for:Lorg/bouncycastle/math/ec/custom/sec/try;

    new-instance v3, Landroid/support/v4/du1;

    invoke-direct {v3, v0}, Landroid/support/v4/du1;-><init>([I)V

    new-instance v0, Landroid/support/v4/du1;

    invoke-direct {v0, v1}, Landroid/support/v4/du1;-><init>([I)V

    invoke-virtual {p1, v3, v0, v2}, Lorg/bouncycastle/math/ec/custom/sec/try;->break(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method
