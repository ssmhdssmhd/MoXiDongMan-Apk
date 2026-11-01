.class public Lorg/bouncycastle/math/ec/if$try;
.super Lorg/bouncycastle/math/ec/if$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# static fields
.field private static final switch:I = 0x6


# instance fields
.field private import:I

.field private native:I

.field private public:I

.field private return:I

.field private static:Lorg/bouncycastle/math/ec/new$new;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/if$try;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/if$if;-><init>(IIII)V

    iput p1, p0, Lorg/bouncycastle/math/ec/if$try;->import:I

    iput p2, p0, Lorg/bouncycastle/math/ec/if$try;->native:I

    iput p3, p0, Lorg/bouncycastle/math/ec/if$try;->public:I

    iput p4, p0, Lorg/bouncycastle/math/ec/if$try;->return:I

    iput-object p7, p0, Lorg/bouncycastle/math/ec/if;->new:Ljava/math/BigInteger;

    iput-object p8, p0, Lorg/bouncycastle/math/ec/if;->try:Ljava/math/BigInteger;

    new-instance p1, Lorg/bouncycastle/math/ec/new$new;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p2, p3}, Lorg/bouncycastle/math/ec/new$new;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if$try;->static:Lorg/bouncycastle/math/ec/new$new;

    invoke-virtual {p0, p5}, Lorg/bouncycastle/math/ec/if$try;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if;->if:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {p0, p6}, Lorg/bouncycastle/math/ec/if$try;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if;->for:Lorg/bouncycastle/math/ec/for;

    const/4 p1, 0x6

    iput p1, p0, Lorg/bouncycastle/math/ec/if;->case:I

    return-void
.end method

.method public constructor <init>(IIIILorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/if$if;-><init>(IIII)V

    iput p1, p0, Lorg/bouncycastle/math/ec/if$try;->import:I

    iput p2, p0, Lorg/bouncycastle/math/ec/if$try;->native:I

    iput p3, p0, Lorg/bouncycastle/math/ec/if$try;->public:I

    iput p4, p0, Lorg/bouncycastle/math/ec/if$try;->return:I

    iput-object p7, p0, Lorg/bouncycastle/math/ec/if;->new:Ljava/math/BigInteger;

    iput-object p8, p0, Lorg/bouncycastle/math/ec/if;->try:Ljava/math/BigInteger;

    new-instance p1, Lorg/bouncycastle/math/ec/new$new;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p2, p3}, Lorg/bouncycastle/math/ec/new$new;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if$try;->static:Lorg/bouncycastle/math/ec/new$new;

    iput-object p5, p0, Lorg/bouncycastle/math/ec/if;->if:Lorg/bouncycastle/math/ec/for;

    iput-object p6, p0, Lorg/bouncycastle/math/ec/if;->for:Lorg/bouncycastle/math/ec/for;

    const/4 p1, 0x6

    iput p1, p0, Lorg/bouncycastle/math/ec/if;->case:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/if$try;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/if$try;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public static synthetic b(Lorg/bouncycastle/math/ec/if$try;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/math/ec/if$try;->import:I

    return p0
.end method


# virtual methods
.method public break(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;
    .locals 1

    new-instance v0, Lorg/bouncycastle/math/ec/new$new;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/new$new;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/if$try;->native:I

    return v0
.end method

.method public case([Lorg/bouncycastle/math/ec/new;II)Lorg/bouncycastle/math/ec/ECLookupTable;
    .locals 7

    iget v0, p0, Lorg/bouncycastle/math/ec/if$try;->import:I

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v4, v0, 0x6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if$try;->g()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [I

    iget v2, p0, Lorg/bouncycastle/math/ec/if$try;->native:I

    aput v2, v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v5, p0, Lorg/bouncycastle/math/ec/if$try;->native:I

    aput v5, v0, v3

    iget v5, p0, Lorg/bouncycastle/math/ec/if$try;->public:I

    aput v5, v0, v2

    iget v2, p0, Lorg/bouncycastle/math/ec/if$try;->return:I

    aput v2, v0, v1

    :goto_0
    move-object v6, v0

    mul-int v0, p3, v4

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [J

    const/4 v0, 0x0

    :goto_1
    if-ge v3, p3, :cond_1

    add-int v1, p2, v3

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/math/ec/for$for;

    iget-object v2, v2, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v2, v5, v0}, Lorg/bouncycastle/math/ec/case;->break([JI)V

    add-int/2addr v0, v4

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/for$for;

    iget-object v1, v1, Lorg/bouncycastle/math/ec/for$for;->new:Lorg/bouncycastle/math/ec/case;

    invoke-virtual {v1, v5, v0}, Lorg/bouncycastle/math/ec/case;->break([JI)V

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/math/ec/if$try$do;

    move-object v1, p1

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/if$try$do;-><init>(Lorg/bouncycastle/math/ec/if$try;II[J[I)V

    return-object p1
.end method

.method public catch(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;
    .locals 7

    new-instance v6, Lorg/bouncycastle/math/ec/new$new;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/new$new;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V

    return-object v6
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/if$try;->public:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/if$try;->return:I

    return v0
.end method

.method public else()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if$if;->synchronized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/math/ec/const;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/const;-><init>()V

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/math/ec/if;->else()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/if$try;->import:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/if$try;->public:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/math/ec/if$try;->return:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public new()Lorg/bouncycastle/math/ec/if;
    .locals 10

    new-instance v9, Lorg/bouncycastle/math/ec/if$try;

    iget v1, p0, Lorg/bouncycastle/math/ec/if$try;->import:I

    iget v2, p0, Lorg/bouncycastle/math/ec/if$try;->native:I

    iget v3, p0, Lorg/bouncycastle/math/ec/if$try;->public:I

    iget v4, p0, Lorg/bouncycastle/math/ec/if$try;->return:I

    iget-object v5, p0, Lorg/bouncycastle/math/ec/if;->if:Lorg/bouncycastle/math/ec/for;

    iget-object v6, p0, Lorg/bouncycastle/math/ec/if;->for:Lorg/bouncycastle/math/ec/for;

    iget-object v7, p0, Lorg/bouncycastle/math/ec/if;->new:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/math/ec/if;->try:Ljava/math/BigInteger;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/if$try;-><init>(IIIILorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method public super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;
    .locals 7

    new-instance v6, Lorg/bouncycastle/math/ec/for$for;

    iget v1, p0, Lorg/bouncycastle/math/ec/if$try;->import:I

    iget v2, p0, Lorg/bouncycastle/math/ec/if$try;->native:I

    iget v3, p0, Lorg/bouncycastle/math/ec/if$try;->public:I

    iget v4, p0, Lorg/bouncycastle/math/ec/if$try;->return:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/for$for;-><init>(IIIILjava/math/BigInteger;)V

    return-object v6
.end method

.method public switch()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/if$try;->import:I

    return v0
.end method

.method public throws()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/if$try;->static:Lorg/bouncycastle/math/ec/new$new;

    return-object v0
.end method

.method public volatile(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
