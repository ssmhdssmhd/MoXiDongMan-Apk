.class public Lorg/bouncycastle/pqc/math/linearalgebra/this;
.super Lorg/bouncycastle/pqc/math/linearalgebra/new;
.source "SourceFile"


# static fields
.field private static final new:[I


# instance fields
.field private for:Lorg/bouncycastle/pqc/math/linearalgebra/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->new:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/break;Ljava/util/Random;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/new;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(I)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->switch(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/break;Lorg/bouncycastle/pqc/math/linearalgebra/for;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/new;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->this(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/break;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/new;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(I[B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->this(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/break;[I)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/new;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(I[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->this(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/new;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    return-void
.end method

.method private default()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->class()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/break;->final()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/break;->class()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    sub-int/2addr v2, v0

    if-le v2, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->class()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    shl-int/lit8 v3, v2, 0x1

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->strictfp(II)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->extends(I)V

    return-void

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nPolynomialElement.reduce: the field polynomial is not a trinomial"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/break;->const()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/break;->break()[I

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    const/4 v3, 0x2

    aget v3, v0, v3

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->class()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    shl-int/lit8 v3, v2, 0x1

    if-le v1, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->continue(I[I)V

    return-void

    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->throws([I)V

    return-void

    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nPolynomialElement.reduce: the field polynomial is not a pentanomial"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->try()Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->volatile(Lorg/bouncycastle/pqc/math/linearalgebra/for;)Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->this(I)V

    return-void

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->class()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->this(I)V

    :cond_7
    return-void
.end method

.method private extends(I)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->class()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->p(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->p(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->p(I)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->this(I)V

    return-void
.end method

.method private import()Lorg/bouncycastle/pqc/math/linearalgebra/this;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    sub-int/2addr v3, v1

    shr-int/2addr v3, v1

    if-gt v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->catch()V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->catch()V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static super(Lorg/bouncycastle/pqc/math/linearalgebra/break;)Lorg/bouncycastle/pqc/math/linearalgebra/this;
    .locals 5

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new()I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(I[I)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/break;Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    return-object v1
.end method

.method private switch(Ljava/util/Random;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->this(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->private(Ljava/util/Random;)V

    return-void
.end method

.method public static throw(Lorg/bouncycastle/pqc/math/linearalgebra/break;)Lorg/bouncycastle/pqc/math/linearalgebra/this;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/break;Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    return-object v1
.end method

.method private throws([I)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    const/4 v1, 0x2

    aget v1, p1, v1

    sub-int v1, v0, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    sub-int v3, v0, v3

    const/4 v4, 0x0

    aget p1, p1, v4

    sub-int/2addr v0, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->class()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    if-lt p1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->p(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    sub-int v4, p1, v1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->p(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    sub-int v4, p1, v3

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->p(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    sub-int v4, p1, v0

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->p(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    sub-int v4, p1, v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->p(I)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->this(I)V

    return-void
.end method

.method private while()Lorg/bouncycastle/pqc/math/linearalgebra/for;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    return-object v0
.end method


# virtual methods
.method public abstract()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->d()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->default()V

    return-void
.end method

.method public add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->if(Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public break()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->this(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->catch()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public case()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->final()V

    return-void
.end method

.method public catch()V
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->strictfp()V

    return-void
.end method

.method public class(I)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->h(I)Z

    move-result p1

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    return-object v0
.end method

.method public const()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->h(I)Z

    move-result v0

    return v0
.end method

.method public continue()V
    .locals 5

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast v4, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    iget-object v4, v4, Lorg/bouncycastle/pqc/math/linearalgebra/break;->case:[Lorg/bouncycastle/pqc/math/linearalgebra/for;

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->n(Lorg/bouncycastle/pqc/math/linearalgebra/for;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->protected(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    return-void
.end method

.method public do()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->new()V

    return-void
.end method

.method public else()Lorg/bouncycastle/pqc/math/linearalgebra/new;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->throw(Lorg/bouncycastle/pqc/math/linearalgebra/break;)Lorg/bouncycastle/pqc/math/linearalgebra/this;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->import()Lorg/bouncycastle/pqc/math/linearalgebra/this;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/break;Ljava/util/Random;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->throw(Lorg/bouncycastle/pqc/math/linearalgebra/break;)Lorg/bouncycastle/pqc/math/linearalgebra/this;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    if-ge v4, v5, :cond_2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->catch()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->catch()V

    invoke-virtual {v3, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->goto()Lorg/bouncycastle/pqc/math/linearalgebra/new;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->try()Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->try()Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final()I
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->catch()V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->isOne()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public finally()Lorg/bouncycastle/pqc/math/linearalgebra/this;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->abstract()V

    invoke-direct {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->default()V

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/pqc/math/linearalgebra/new;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->private()Lorg/bouncycastle/pqc/math/linearalgebra/this;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public if()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->case()V

    return-void
.end method

.method public invert()Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->public()Lorg/bouncycastle/pqc/math/linearalgebra/this;

    move-result-object v0

    return-object v0
.end method

.method public isOne()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->throw()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->while()Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->catch()V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget-object v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->default(Lorg/bouncycastle/pqc/math/linearalgebra/for;)Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->default()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public native()Lorg/bouncycastle/pqc/math/linearalgebra/this;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->isZero()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    add-int/lit8 v1, v1, 0x20

    const-string v2, "ONE"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(I)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->while()Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->try()Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    :goto_0
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->throw()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->class()I

    move-result v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->class()I

    move-result v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_0

    neg-int v4, v4

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :cond_0
    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->synchronized(Lorg/bouncycastle/pqc/math/linearalgebra/for;I)V

    invoke-virtual {v0, v1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->synchronized(Lorg/bouncycastle/pqc/math/linearalgebra/for;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/break;Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public package()Lorg/bouncycastle/pqc/math/linearalgebra/this;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->continue()V

    invoke-direct {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->default()V

    return-object v0
.end method

.method public private()Lorg/bouncycastle/pqc/math/linearalgebra/this;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->strictfp()V

    invoke-direct {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->default()V

    return-object v0
.end method

.method public public()Lorg/bouncycastle/pqc/math/linearalgebra/this;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->isZero()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    const-string v2, "ONE"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(ILjava/lang/String;)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(I)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->while()Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->try()Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->h(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->c()V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->h(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->try()Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->if(Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->throw()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/break;Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    return-object v1

    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->class()I

    move-result v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->class()I

    move-result v5

    if-ge v4, v5, :cond_3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :cond_3
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->if(Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->if(Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public return()Lorg/bouncycastle/pqc/math/linearalgebra/this;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    shl-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->this(I)V

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/catch;->class(I)I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x1

    :goto_0
    if-ltz v3, :cond_2

    new-instance v5, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v5, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    const/4 v6, 0x1

    :goto_1
    if-gt v6, v4, :cond_0

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->strictfp()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    shl-int/lit8 v4, v4, 0x1

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/this;->new:[I

    aget v5, v5, v3

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->strictfp()V

    invoke-virtual {v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->strictfp()V

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static(I)Lorg/bouncycastle/pqc/math/linearalgebra/this;
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->do:Lorg/bouncycastle/pqc/math/linearalgebra/try;

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->super(Lorg/bouncycastle/pqc/math/linearalgebra/break;)Lorg/bouncycastle/pqc/math/linearalgebra/this;

    move-result-object v1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v4, v2, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    shl-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->this(I)V

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->abstract()V

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if:I

    if-ge v3, v4, :cond_3

    shl-int v4, v0, v3

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->multiplyThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)V

    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->goto()Lorg/bouncycastle/pqc/math/linearalgebra/new;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public strictfp()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->e()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->default()V

    return-void
.end method

.method public this()Lorg/bouncycastle/pqc/math/linearalgebra/new;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->break()V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->i()[B

    move-result-object v0

    return-object v0
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->j()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->l(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/this;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->l(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public try()Lorg/bouncycastle/pqc/math/linearalgebra/new;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/this;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->case()V

    return-object v0
.end method
