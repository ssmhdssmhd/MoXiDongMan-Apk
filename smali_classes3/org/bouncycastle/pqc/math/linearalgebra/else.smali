.class public Lorg/bouncycastle/pqc/math/linearalgebra/else;
.super Lorg/bouncycastle/pqc/math/linearalgebra/try;
.source "SourceFile"


# static fields
.field private static final break:I = 0x40


# instance fields
.field private case:I

.field private else:I

.field private goto:I

.field public this:[[I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/try;-><init>(Ljava/security/SecureRandom;)V

    const/4 p2, 0x3

    if-lt p1, p2, :cond_3

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    div-int/lit8 v0, p1, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->case:I

    and-int/lit8 p1, p1, 0x3f

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->else:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/16 p1, 0x40

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->else:I

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->case:I

    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/else;->this()V

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    if-ge p1, p2, :cond_2

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    const/4 p2, 0x2

    new-array v0, p2, [I

    aput p2, v0, v1

    const/4 p2, 0x0

    aput p1, v0, p2

    const-class p1, I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->this:[[I

    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->this:[[I

    aget-object v2, v0, p1

    const/4 v3, -0x1

    aput v3, v2, p2

    aget-object v0, v0, p1

    aput v3, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto()V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/else;->if()V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new:Ljava/util/Vector;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->try:Ljava/util/Vector;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nThe type of this field is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k must be at least 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private break(II)I
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    rem-int/2addr v1, v2

    if-gez v1, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-static {v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/catch;->implements(II)I

    move-result v2

    rem-int v3, v2, p1

    if-nez v3, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    div-int/2addr p1, v2

    const/4 p2, 0x2

    move v0, v1

    :goto_1
    if-gt p2, p1, :cond_3

    mul-int v0, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_2
    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    rem-int/2addr v1, v2

    if-gez v1, :cond_4

    add-int/2addr v1, v2

    goto :goto_2
.end method

.method private goto()V
    .locals 11

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    and-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_e

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    mul-int v1, v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [I

    const/4 v4, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/else;->break(II)I

    move-result v0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_1
    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    if-ge v6, v8, :cond_5

    move v9, v7

    const/4 v8, 0x0

    :goto_2
    iget v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    if-ge v8, v10, :cond_3

    aput v8, v3, v9

    shl-int/2addr v9, v2

    rem-int/2addr v9, v1

    if-gez v9, :cond_2

    add-int/2addr v9, v1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    mul-int v7, v7, v0

    rem-int/2addr v7, v1

    if-gez v7, :cond_4

    add-int/2addr v7, v1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    if-ne v8, v2, :cond_a

    const/4 v4, 0x1

    :goto_3
    add-int/lit8 v6, v1, -0x1

    if-ge v4, v6, :cond_7

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->this:[[I

    add-int/lit8 v7, v4, 0x1

    aget v8, v3, v7

    aget-object v8, v6, v8

    aget v8, v8, v5

    if-ne v8, v0, :cond_6

    aget v8, v3, v7

    aget-object v6, v6, v8

    sub-int v4, v1, v4

    aget v4, v3, v4

    aput v4, v6, v5

    goto :goto_4

    :cond_6
    aget v8, v3, v7

    aget-object v6, v6, v8

    sub-int v4, v1, v4

    aget v4, v3, v4

    aput v4, v6, v2

    :goto_4
    move v4, v7

    goto :goto_3

    :cond_7
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    shr-int/2addr v1, v2

    const/4 v3, 0x1

    :goto_5
    if-gt v3, v1, :cond_c

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->this:[[I

    add-int/lit8 v6, v3, -0x1

    aget-object v7, v4, v6

    aget v7, v7, v5

    if-ne v7, v0, :cond_8

    aget-object v7, v4, v6

    add-int v8, v1, v3

    sub-int/2addr v8, v2

    aput v8, v7, v5

    goto :goto_6

    :cond_8
    aget-object v7, v4, v6

    add-int v8, v1, v3

    sub-int/2addr v8, v2

    aput v8, v7, v2

    :goto_6
    add-int v7, v1, v3

    sub-int/2addr v7, v2

    aget-object v8, v4, v7

    aget v8, v8, v5

    if-ne v8, v0, :cond_9

    aget-object v4, v4, v7

    aput v6, v4, v5

    goto :goto_7

    :cond_9
    aget-object v4, v4, v7

    aput v6, v4, v2

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    if-ne v8, v4, :cond_d

    const/4 v4, 0x1

    :goto_8
    add-int/lit8 v6, v1, -0x1

    if-ge v4, v6, :cond_c

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->this:[[I

    add-int/lit8 v7, v4, 0x1

    aget v8, v3, v7

    aget-object v8, v6, v8

    aget v8, v8, v5

    if-ne v8, v0, :cond_b

    aget v8, v3, v7

    aget-object v6, v6, v8

    sub-int v4, v1, v4

    aget v4, v3, v4

    aput v4, v6, v5

    goto :goto_9

    :cond_b
    aget v8, v3, v7

    aget-object v6, v6, v8

    sub-int v4, v1, v4

    aget v4, v3, v4

    aput v4, v6, v2

    :goto_9
    move v4, v7

    goto :goto_8

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "only type 1 or type 2 implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bisher nur fuer Gausssche Normalbasen implementiert"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method private this()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-eq v1, v0, :cond_1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    mul-int v3, v3, v4

    add-int/2addr v3, v0

    invoke-static {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/catch;->native(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/catch;->implements(II)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    mul-int v2, v2, v3

    div-int/2addr v2, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/catch;->final(II)I

    move-result v1

    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    shl-int/2addr v1, v0

    add-int/2addr v1, v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/catch;->native(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/catch;->implements(II)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    shl-int/lit8 v3, v2, 0x1

    div-int/2addr v3, v1

    invoke-static {v3, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/catch;->final(II)I

    move-result v1

    if-ne v1, v0, :cond_2

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The extension degree is divisible by 8!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public case(Lorg/bouncycastle/pqc/math/linearalgebra/for;)Lorg/bouncycastle/pqc/math/linearalgebra/new;
    .locals 5

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/for;Lorg/bouncycastle/pqc/math/linearalgebra/try;)V

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->else()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    :cond_0
    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/case;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->do:Ljava/security/SecureRandom;

    invoke-direct {p1, p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/case;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/else;Ljava/security/SecureRandom;)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    const/4 v3, 0x2

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/case;->throw(Lorg/bouncycastle/pqc/math/linearalgebra/else;)Lorg/bouncycastle/pqc/math/linearalgebra/case;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(ILorg/bouncycastle/pqc/math/linearalgebra/new;)V

    invoke-virtual {v2, v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->super(ILorg/bouncycastle/pqc/math/linearalgebra/new;)V

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-direct {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)V

    const/4 v3, 0x1

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_1

    invoke-virtual {p1, p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->break(Lorg/bouncycastle/pqc/math/linearalgebra/goto;Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->do(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->case(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->else()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->else()I

    move-result v3

    if-eqz v2, :cond_0

    if-eq v2, v3, :cond_0

    shl-int/lit8 v1, v2, 0x1

    if-le v1, v3, :cond_2

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->catch(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/goto;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/goto;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/goto;->for(I)Lorg/bouncycastle/pqc/math/linearalgebra/new;

    move-result-object p1

    return-object p1
.end method

.method public catch()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->else:I

    return v0
.end method

.method public class()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->case:I

    return v0
.end method

.method public const([[I)[[I
    .locals 6

    const-class v0, I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v5, 0x0

    aput v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    new-array v2, v2, [I

    aput v1, v2, v4

    aput v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    if-ge v5, v0, :cond_2

    move v0, v5

    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v5

    aget-object v1, p1, v1

    aget-object v2, p1, v5

    aget v2, v2, v5

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public do(Lorg/bouncycastle/pqc/math/linearalgebra/try;)V
    .locals 8

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    if-ne v0, v1, :cond_5

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/for;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    if-ge v2, v3, :cond_0

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(I)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->case(Lorg/bouncycastle/pqc/math/linearalgebra/for;)Lorg/bouncycastle/pqc/math/linearalgebra/new;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    new-array v3, v3, [Lorg/bouncycastle/pqc/math/linearalgebra/this;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/new;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/new;

    aput-object v2, v3, v1

    const/4 v2, 0x1

    const/4 v4, 0x1

    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/new;->goto()Lorg/bouncycastle/pqc/math/linearalgebra/new;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    if-ge v4, v5, :cond_4

    const/4 v5, 0x0

    :goto_3
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    if-ge v5, v6, :cond_3

    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/new;->class(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    sub-int v7, v6, v5

    sub-int/2addr v7, v2

    aget-object v7, v0, v7

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->protected(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->try:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/try;->new:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/try;->try:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/try;->else([Lorg/bouncycastle/pqc/math/linearalgebra/for;)[Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public if()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/else;->goto:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    add-int/2addr v2, v1

    const-string v1, "ALL"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(ILjava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->for:Lorg/bouncycastle/pqc/math/linearalgebra/for;

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    add-int/2addr v2, v1

    const-string v3, "ONE"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(ILjava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/for;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    add-int/2addr v3, v1

    const-string v4, "X"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/for;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->if(Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    move-object v1, v0

    move-object v0, v2

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/try;->if:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->implements()Lorg/bouncycastle/pqc/math/linearalgebra/for;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/for;->if(Lorg/bouncycastle/pqc/math/linearalgebra/for;)V

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
