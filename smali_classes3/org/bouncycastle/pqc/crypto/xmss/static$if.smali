.class public Lorg/bouncycastle/pqc/crypto/xmss/static$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/pqc/crypto/xmss/public;

.field private for:[B

.field private if:[B

.field private new:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->if:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->for:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->new:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/pqc/crypto/xmss/static$if;)Lorg/bouncycastle/pqc/crypto/xmss/public;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    return-object p0
.end method

.method public static synthetic for(Lorg/bouncycastle/pqc/crypto/xmss/static$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->if:[B

    return-object p0
.end method

.method public static synthetic if(Lorg/bouncycastle/pqc/crypto/xmss/static$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->new:[B

    return-object p0
.end method

.method public static synthetic new(Lorg/bouncycastle/pqc/crypto/xmss/static$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->for:[B

    return-object p0
.end method


# virtual methods
.method public case([B)Lorg/bouncycastle/pqc/crypto/xmss/static$if;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->new:[B

    return-object p0
.end method

.method public else([B)Lorg/bouncycastle/pqc/crypto/xmss/static$if;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->for:[B

    return-object p0
.end method

.method public goto([B)Lorg/bouncycastle/pqc/crypto/xmss/static$if;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->if:[B

    return-object p0
.end method

.method public try()Lorg/bouncycastle/pqc/crypto/xmss/static;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/static;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/static;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/static$if;Lorg/bouncycastle/pqc/crypto/xmss/static$do;)V

    return-object v0
.end method
