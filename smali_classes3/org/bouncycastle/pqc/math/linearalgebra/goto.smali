.class public Lorg/bouncycastle/pqc/math/linearalgebra/goto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

.field private if:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    new-array p1, p1, [Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/pqc/math/linearalgebra/new;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    new-array p1, p1, [Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/new;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/for;Lorg/bouncycastle/pqc/math/linearalgebra/try;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    instance-of v0, p2, Lorg/bouncycastle/pqc/math/linearalgebra/else;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/else;

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/case;->super(Lorg/bouncycastle/pqc/math/linearalgebra/else;)Lorg/bouncycastle/pqc/math/linearalgebra/case;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/else;

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/case;->throw(Lorg/bouncycastle/pqc/math/linearalgebra/else;)Lorg/bouncycastle/pqc/math/linearalgebra/case;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    if-eqz v0, :cond_4

    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->super(Lorg/bouncycastle/pqc/math/linearalgebra/break;)Lorg/bouncycastle/pqc/math/linearalgebra/this;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->throw(Lorg/bouncycastle/pqc/math/linearalgebra/break;)Lorg/bouncycastle/pqc/math/linearalgebra/this;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PolynomialGF2n(Bitstring, GF2nField): B1 must be an instance of GF2nONBField or GF2nPolynomialField!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    new-array v1, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/new;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final break(Lorg/bouncycastle/pqc/math/linearalgebra/goto;Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->this(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->class(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object p1

    return-object p1
.end method

.method public final case(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->import()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->import()V

    move-object p1, v0

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->goto()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->const(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->else()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->invert()Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->final(Lorg/bouncycastle/pqc/math/linearalgebra/new;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object p1

    return-object p1
.end method

.method public final catch(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->new(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)[Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method public final class(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->const(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object p1

    return-object p1
.end method

.method public final const(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->new(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)[Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1
.end method

.method public final do(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(I)V

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result p1

    if-ge v2, p1, :cond_3

    iget-object p1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v1, v1, v2

    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(I)V

    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v1

    if-ge v2, v1, :cond_3

    iget-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public final else()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->else()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->else()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public final final(Lorg/bouncycastle/pqc/math/linearalgebra/new;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final for(I)Lorg/bouncycastle/pqc/math/linearalgebra/new;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final goto()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->else()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final if()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/new;->if()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final import()V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    if-ge v0, v1, :cond_1

    new-array v1, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    :cond_1
    return-void
.end method

.method public final native()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    return v0
.end method

.method public final new(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)[Lorg/bouncycastle/pqc/math/linearalgebra/goto;
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->import()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->else()I

    move-result v2

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->invert()Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->else()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v4, v2, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)V

    aput-object p1, v0, v6

    aget-object p1, v0, v6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if()V

    aget-object p1, v0, v6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->import()V

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)V

    aput-object p1, v0, v5

    aget-object p1, v0, v5

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->import()V

    return-object v0

    :cond_0
    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-direct {v4, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)V

    aput-object v4, v0, v6

    aget-object v4, v0, v6

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if()V

    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->else()I

    move-result v4

    sub-int/2addr v4, v2

    if-ltz v4, :cond_1

    iget-object v7, v1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->else()I

    move-result v8

    aget-object v7, v7, v8

    invoke-interface {v7, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    invoke-virtual {p1, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->final(Lorg/bouncycastle/pqc/math/linearalgebra/new;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->while(I)V

    invoke-virtual {v1, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->import()V

    aget-object v8, v0, v6

    iget-object v8, v8, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/linearalgebra/new;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aput-object v7, v8, v4

    goto :goto_1

    :cond_1
    aput-object v1, v0, v5

    aget-object p1, v0, v6

    goto :goto_0
.end method

.method public final super(ILorg/bouncycastle/pqc/math/linearalgebra/new;)V
    .locals 1

    instance-of v0, p2, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/pqc/math/linearalgebra/case;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PolynomialGF2n.set f must be an instance of either GF2nPolynomialElement or GF2nONBElement!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/new;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aput-object p2, v0, p1

    return-void
.end method

.method public final this(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;
    .locals 9

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v1

    if-ne v0, v1, :cond_3

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->native()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    add-int v5, v2, v3

    aget-object v6, v4, v5

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v6, v6, v2

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v7, v7, v3

    invoke-interface {v6, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aput-object v6, v4, v5

    goto :goto_2

    :cond_0
    aget-object v6, v4, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v7, v7, v2

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v8, v8, v3

    invoke-interface {v7, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aput-object v6, v4, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PolynomialGF2n.multiply: this and b must have the same size!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final throw(I)Lorg/bouncycastle/pqc/math/linearalgebra/goto;
    .locals 5

    if-gtz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(ILorg/bouncycastle/pqc/math/linearalgebra/new;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if()V

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    if-ge v3, v1, :cond_1

    iget-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    add-int v2, v3, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v4, v4, v3

    aput-object v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final try(I)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-array v1, p1, [Lorg/bouncycastle/pqc/math/linearalgebra/new;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/new;->new()Lorg/bouncycastle/pqc/math/linearalgebra/try;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v4, v2, v3

    instance-of v4, v4, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    if-eqz v4, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    :goto_0
    if-ge v2, p1, :cond_2

    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-static {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->throw(Lorg/bouncycastle/pqc/math/linearalgebra/break;)Lorg/bouncycastle/pqc/math/linearalgebra/this;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, v2, v3

    instance-of v2, v2, Lorg/bouncycastle/pqc/math/linearalgebra/case;

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    :goto_1
    if-ge v2, p1, :cond_2

    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/pqc/math/linearalgebra/else;

    invoke-static {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/case;->throw(Lorg/bouncycastle/pqc/math/linearalgebra/else;)Lorg/bouncycastle/pqc/math/linearalgebra/case;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    return-void
.end method

.method public final while(I)V
    .locals 6

    if-lez p1, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/new;->new()Lorg/bouncycastle/pqc/math/linearalgebra/try;

    move-result-object v1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->if:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->try(I)V

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    add-int v4, v0, p1

    aget-object v5, v3, v0

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aget-object v3, v0, v2

    instance-of v3, v3, Lorg/bouncycastle/pqc/math/linearalgebra/this;

    if-eqz v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/break;

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/this;->throw(Lorg/bouncycastle/pqc/math/linearalgebra/break;)Lorg/bouncycastle/pqc/math/linearalgebra/this;

    move-result-object v2

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/case;

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do:[Lorg/bouncycastle/pqc/math/linearalgebra/new;

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/else;

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/case;->throw(Lorg/bouncycastle/pqc/math/linearalgebra/else;)Lorg/bouncycastle/pqc/math/linearalgebra/case;

    move-result-object v2

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method
