.class public final Lkotlin/random/goto;
.super Lkotlin/random/try;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/goto$do;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0008\u0000\u0018\u0000 \u00142\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0015B9\u0008\u0000\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0010B\u0019\u0008\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0013J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016R\u0016\u0010\u0008\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\tR\u0016\u0010\u000b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\tR\u0016\u0010\u000c\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\tR\u0016\u0010\r\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\tR\u0016\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlin/random/goto;",
        "Lkotlin/random/try;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "",
        "nextInt",
        "bitCount",
        "nextBits",
        "x",
        "I",
        "y",
        "z",
        "w",
        "v",
        "addend",
        "<init>",
        "(IIIIII)V",
        "seed1",
        "seed2",
        "(II)V",
        "if",
        "do",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final if:Lkotlin/random/goto$do;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private static final serialVersionUID:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private addend:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/random/goto$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/random/goto$do;-><init>(Landroid/support/v4/rx;)V

    sput-object v0, Lkotlin/random/goto;->if:Lkotlin/random/goto$do;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    xor-int/lit8 v5, p1, -0x1

    shl-int/lit8 v0, p1, 0xa

    ushr-int/lit8 v1, p2, 0x4

    xor-int v6, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 4
    invoke-direct/range {v0 .. v6}, Lkotlin/random/goto;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/random/try;-><init>()V

    iput p1, p0, Lkotlin/random/goto;->x:I

    iput p2, p0, Lkotlin/random/goto;->y:I

    iput p3, p0, Lkotlin/random/goto;->z:I

    iput p4, p0, Lkotlin/random/goto;->w:I

    iput p5, p0, Lkotlin/random/goto;->v:I

    iput p6, p0, Lkotlin/random/goto;->addend:I

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    or-int/2addr p1, p4

    or-int/2addr p1, p5

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, 0x40

    :goto_1
    if-ge p2, p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lkotlin/random/goto;->nextInt()I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initial state must have at least one non-zero element."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public nextBits(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/random/goto;->nextInt()I

    move-result v0

    invoke-static {v0, p1}, Lkotlin/random/case;->break(II)I

    move-result p1

    return p1
.end method

.method public nextInt()I
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/random/goto;->x:I

    ushr-int/lit8 v1, v0, 0x2

    xor-int/2addr v0, v1

    .line 2
    iget v1, p0, Lkotlin/random/goto;->y:I

    iput v1, p0, Lkotlin/random/goto;->x:I

    .line 3
    iget v1, p0, Lkotlin/random/goto;->z:I

    iput v1, p0, Lkotlin/random/goto;->y:I

    .line 4
    iget v1, p0, Lkotlin/random/goto;->w:I

    iput v1, p0, Lkotlin/random/goto;->z:I

    .line 5
    iget v1, p0, Lkotlin/random/goto;->v:I

    .line 6
    iput v1, p0, Lkotlin/random/goto;->w:I

    shl-int/lit8 v2, v0, 0x1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v1, 0x4

    xor-int/2addr v0, v1

    .line 7
    iput v0, p0, Lkotlin/random/goto;->v:I

    .line 8
    iget v1, p0, Lkotlin/random/goto;->addend:I

    const v2, 0x587c5

    add-int/2addr v1, v2

    iput v1, p0, Lkotlin/random/goto;->addend:I

    add-int/2addr v0, v1

    return v0
.end method
