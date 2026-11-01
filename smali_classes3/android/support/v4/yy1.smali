.class public Landroid/support/v4/yy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECLookupTable;


# instance fields
.field private final do:[Lorg/bouncycastle/math/ec/new;


# direct methods
.method public constructor <init>([Lorg/bouncycastle/math/ec/new;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Landroid/support/v4/yy1;->do([Lorg/bouncycastle/math/ec/new;II)[Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/yy1;->do:[Lorg/bouncycastle/math/ec/new;

    return-void
.end method

.method private static do([Lorg/bouncycastle/math/ec/new;II)[Lorg/bouncycastle/math/ec/new;
    .locals 3

    new-array v0, p2, [Lorg/bouncycastle/math/ec/new;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-object v2, p0, v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yy1;->do:[Lorg/bouncycastle/math/ec/new;

    array-length v0, v0

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yy1;->do:[Lorg/bouncycastle/math/ec/new;

    aget-object p1, v0, p1

    return-object p1
.end method
