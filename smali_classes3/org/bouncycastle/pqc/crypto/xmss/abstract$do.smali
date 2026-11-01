.class public Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/abstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

.field private for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/default;",
            ">;"
        }
    .end annotation
.end field

.field private if:Lorg/bouncycastle/pqc/crypto/xmss/final;

.field private new:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->if:Lorg/bouncycastle/pqc/crypto/xmss/final;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->for:Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->new:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;)Lorg/bouncycastle/pqc/crypto/xmss/finally;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-object p0
.end method

.method public static synthetic for(Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;)Lorg/bouncycastle/pqc/crypto/xmss/final;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->if:Lorg/bouncycastle/pqc/crypto/xmss/final;

    return-object p0
.end method

.method public static synthetic if(Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->new:[B

    return-object p0
.end method

.method public static synthetic new(Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->for:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public case(Ljava/util/List;)Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/default;",
            ">;)",
            "Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->for:Ljava/util/List;

    return-object p0
.end method

.method public else([B)Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->new:[B

    return-object p0
.end method

.method public goto(Lorg/bouncycastle/pqc/crypto/xmss/final;)Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->if:Lorg/bouncycastle/pqc/crypto/xmss/final;

    return-object p0
.end method

.method public try()Lorg/bouncycastle/pqc/crypto/xmss/abstract;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;)V

    return-object v0
.end method
