.class Lorg/bouncycastle/math/ec/custom/sec/class$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/custom/sec/class;->case([Lorg/bouncycastle/math/ec/new;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:Lorg/bouncycastle/math/ec/custom/sec/class;

.field public final synthetic if:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/custom/sec/class;I[I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/class$do;->for:Lorg/bouncycastle/math/ec/custom/sec/class;

    iput p2, p0, Lorg/bouncycastle/math/ec/custom/sec/class$do;->do:I

    iput-object p3, p0, Lorg/bouncycastle/math/ec/custom/sec/class$do;->if:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/custom/sec/class$do;->do:I

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/new;
    .locals 11

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v1

    invoke-static {v0}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lorg/bouncycastle/math/ec/custom/sec/class$do;->do:I

    if-ge v4, v6, :cond_1

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_0

    aget v8, v1, v7

    iget-object v9, p0, Lorg/bouncycastle/math/ec/custom/sec/class$do;->if:[I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x11

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x22

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/class$do;->for:Lorg/bouncycastle/math/ec/custom/sec/class;

    new-instance v0, Landroid/support/v4/yu1;

    invoke-direct {v0, v1}, Landroid/support/v4/yu1;-><init>([I)V

    new-instance v1, Landroid/support/v4/yu1;

    invoke-direct {v1, v2}, Landroid/support/v4/yu1;-><init>([I)V

    invoke-virtual {p1, v0, v1, v3}, Lorg/bouncycastle/math/ec/custom/sec/class;->break(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method
