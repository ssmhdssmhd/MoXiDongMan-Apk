.class public Lorg/bouncycastle/math/do$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private do:Z

.field private if:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(ZLjava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/math/do$if;->do:Z

    iput-object p2, p0, Lorg/bouncycastle/math/do$if;->if:Ljava/math/BigInteger;

    return-void
.end method

.method public static synthetic do()Lorg/bouncycastle/math/do$if;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/do$if;->else()Lorg/bouncycastle/math/do$if;

    move-result-object v0

    return-object v0
.end method

.method private static else()Lorg/bouncycastle/math/do$if;
    .locals 3

    new-instance v0, Lorg/bouncycastle/math/do$if;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/do$if;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method public static synthetic for()Lorg/bouncycastle/math/do$if;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/do$if;->goto()Lorg/bouncycastle/math/do$if;

    move-result-object v0

    return-object v0
.end method

.method private static goto()Lorg/bouncycastle/math/do$if;
    .locals 3

    new-instance v0, Lorg/bouncycastle/math/do$if;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/do$if;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method public static synthetic if(Ljava/math/BigInteger;)Lorg/bouncycastle/math/do$if;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/math/do$if;->this(Ljava/math/BigInteger;)Lorg/bouncycastle/math/do$if;

    move-result-object p0

    return-object p0
.end method

.method private static this(Ljava/math/BigInteger;)Lorg/bouncycastle/math/do$if;
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/do$if;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/math/do$if;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public case()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/math/do$if;->do:Z

    return v0
.end method

.method public new()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/do$if;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public try()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/math/do$if;->do:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/do$if;->if:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
