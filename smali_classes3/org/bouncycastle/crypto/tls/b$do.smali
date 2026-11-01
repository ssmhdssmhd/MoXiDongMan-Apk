.class Lorg/bouncycastle/crypto/tls/b$do;
.super Landroid/support/v4/cz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/tls/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/bouncycastle/crypto/tls/b;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/b;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/b$do;->do:Lorg/bouncycastle/crypto/tls/b;

    invoke-direct {p0}, Landroid/support/v4/cz1;-><init>()V

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/b$do;->do:Lorg/bouncycastle/crypto/tls/b;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/b;->do(Lorg/bouncycastle/crypto/tls/b;)Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
