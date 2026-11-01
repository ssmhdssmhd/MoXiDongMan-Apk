.class public Landroid/support/v4/e40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECConstants;


# instance fields
.field private case:Ljava/math/BigInteger;

.field private do:Lorg/bouncycastle/math/ec/if;

.field private for:Lorg/bouncycastle/math/ec/new;

.field private if:[B

.field private new:Ljava/math/BigInteger;

.field private try:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)V
    .locals 6

    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/e40;->case:Ljava/math/BigInteger;

    const-string v0, "curve"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "n"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/e40;->do:Lorg/bouncycastle/math/ec/if;

    invoke-static {p1, p2}, Landroid/support/v4/e40;->else(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/e40;->for:Lorg/bouncycastle/math/ec/new;

    iput-object p3, p0, Landroid/support/v4/e40;->new:Ljava/math/BigInteger;

    iput-object p4, p0, Landroid/support/v4/e40;->try:Ljava/math/BigInteger;

    invoke-static {p5}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/e40;->if:[B

    return-void
.end method

.method public static else(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;
    .locals 0

    if-eqz p1, :cond_2

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/do;->catch(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->extends()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point not on curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point at infinity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point has null value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public case()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e40;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public do()Lorg/bouncycastle/math/ec/if;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e40;->do:Lorg/bouncycastle/math/ec/if;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/support/v4/e40;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Landroid/support/v4/e40;

    iget-object v1, p0, Landroid/support/v4/e40;->do:Lorg/bouncycastle/math/ec/if;

    iget-object v3, p1, Landroid/support/v4/e40;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/math/ec/if;->final(Lorg/bouncycastle/math/ec/if;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/e40;->for:Lorg/bouncycastle/math/ec/new;

    iget-object v3, p1, Landroid/support/v4/e40;->for:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/math/ec/new;->try(Lorg/bouncycastle/math/ec/new;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/e40;->new:Ljava/math/BigInteger;

    iget-object v3, p1, Landroid/support/v4/e40;->new:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/e40;->try:Ljava/math/BigInteger;

    iget-object p1, p1, Landroid/support/v4/e40;->try:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public for()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e40;->try:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/e40;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/e40;->for:Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/e40;->new:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/e40;->try:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public if()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e40;->for:Lorg/bouncycastle/math/ec/new;

    return-object v0
.end method

.method public declared-synchronized new()Ljava/math/BigInteger;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/e40;->case:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/e40;->try:Ljava/math/BigInteger;

    iget-object v1, p0, Landroid/support/v4/e40;->new:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/e40;->case:Ljava/math/BigInteger;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/e40;->case:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e40;->new:Ljava/math/BigInteger;

    return-object v0
.end method
