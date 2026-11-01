.class public Lorg/bouncycastle/pqc/crypto/xmss/switch$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/pqc/crypto/xmss/public;

.field private for:[B

.field private if:J

.field private new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/abstract;",
            ">;"
        }
    .end annotation
.end field

.field private try:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->if:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->for:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->new:Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->try:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/pqc/crypto/xmss/switch$if;)Lorg/bouncycastle/pqc/crypto/xmss/public;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->do:Lorg/bouncycastle/pqc/crypto/xmss/public;

    return-object p0
.end method

.method public static synthetic for(Lorg/bouncycastle/pqc/crypto/xmss/switch$if;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->if:J

    return-wide v0
.end method

.method public static synthetic if(Lorg/bouncycastle/pqc/crypto/xmss/switch$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->try:[B

    return-object p0
.end method

.method public static synthetic new(Lorg/bouncycastle/pqc/crypto/xmss/switch$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->for:[B

    return-object p0
.end method

.method public static synthetic try(Lorg/bouncycastle/pqc/crypto/xmss/switch$if;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->new:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public break([B)Lorg/bouncycastle/pqc/crypto/xmss/switch$if;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->try:[B

    return-object p0
.end method

.method public case()Lorg/bouncycastle/pqc/crypto/xmss/switch;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/switch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/switch;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/switch$if;Lorg/bouncycastle/pqc/crypto/xmss/switch$do;)V

    return-object v0
.end method

.method public else(J)Lorg/bouncycastle/pqc/crypto/xmss/switch$if;
    .locals 0

    iput-wide p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->if:J

    return-object p0
.end method

.method public goto([B)Lorg/bouncycastle/pqc/crypto/xmss/switch$if;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->for:[B

    return-object p0
.end method

.method public this(Ljava/util/List;)Lorg/bouncycastle/pqc/crypto/xmss/switch$if;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/abstract;",
            ">;)",
            "Lorg/bouncycastle/pqc/crypto/xmss/switch$if;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->new:Ljava/util/List;

    return-object p0
.end method
