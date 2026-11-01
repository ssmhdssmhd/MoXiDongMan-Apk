.class Lorg/bouncycastle/crypto/generators/do$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/generators/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private do:[J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/generators/do$do;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/do$if;-><init>()V

    return-void
.end method

.method private case(Lorg/bouncycastle/crypto/generators/do$if;)V
    .locals 3

    iget-object p1, p1, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private catch(Lorg/bouncycastle/crypto/generators/do$if;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    iget-object v4, p1, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    aget-wide v5, v4, v0

    xor-long/2addr v2, v5

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/do$if;->this(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V

    return-void
.end method

.method public static synthetic for(Lorg/bouncycastle/crypto/generators/do$if;)[J
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    return-object p0
.end method

.method public static synthetic if(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/do$if;->case(Lorg/bouncycastle/crypto/generators/do$if;)V

    return-void
.end method

.method public static synthetic new(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/do$if;->catch(Lorg/bouncycastle/crypto/generators/do$if;)V

    return-void
.end method

.method private this(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    aget-wide v3, v2, v0

    iget-object v2, p2, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    aget-wide v5, v2, v0

    xor-long/2addr v3, v5

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public break(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    aget-wide v3, v2, v0

    iget-object v2, p2, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    aget-wide v5, v2, v0

    xor-long/2addr v3, v5

    iget-object v2, p3, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    aget-wide v5, v2, v0

    xor-long/2addr v3, v5

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public else([B)V
    .locals 4

    array-length v0, p1

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x8

    invoke-static {p1, v2}, Landroid/support/v4/ib1;->import([BI)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input shorter than blocksize"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public goto()[B
    .locals 5

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-wide v3, v2, v1

    mul-int/lit8 v2, v1, 0x8

    invoke-static {v3, v4, v0, v2}, Landroid/support/v4/ib1;->extends(J[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Landroid/support/v4/ib1;->private(J)[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/for;->goto([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/do$if;->do:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/q3;->j([JJ)V

    return-void
.end method
