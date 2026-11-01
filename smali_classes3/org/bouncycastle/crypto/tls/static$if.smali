.class Lorg/bouncycastle/crypto/tls/static$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/tls/static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final do:I

.field private final for:[B

.field private final if:S


# direct methods
.method private constructor <init>(IS[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/tls/static$if;->do:I

    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/static$if;->if:S

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/static$if;->for:[B

    return-void
.end method

.method public synthetic constructor <init>(IS[BLorg/bouncycastle/crypto/tls/static$do;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/static$if;-><init>(IS[B)V

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/static$if;->for:[B

    return-object v0
.end method

.method public for()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/static$if;->if:S

    return v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/static$if;->do:I

    return v0
.end method
