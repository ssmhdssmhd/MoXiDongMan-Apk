.class public Lorg/bouncycastle/jcajce/spec/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/spec/if$if;
    }
.end annotation


# static fields
.field public static final case:I = 0x10

.field public static final else:I = 0x14

.field public static final for:I = 0x4

.field public static final goto:I = 0x30

.field public static final if:I = 0x0

.field public static final new:I = 0x8

.field public static final this:I = 0x3f

.field public static final try:I = 0xc


# instance fields
.field private do:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/spec/if;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/if;->do:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lorg/bouncycastle/jcajce/spec/if$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/spec/if;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/jcajce/spec/if;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/if;->do:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public case()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/if;->do:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public else()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/if;->do:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public for()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/if;->do:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public if()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/if;->do:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public new()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/if;->do:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/if;->do:Ljava/util/Map;

    return-object v0
.end method
