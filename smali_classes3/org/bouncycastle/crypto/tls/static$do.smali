.class Lorg/bouncycastle/crypto/tls/static$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/crypto/tls/static;->try()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/bouncycastle/crypto/tls/static;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/static;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/static$do;->do:Lorg/bouncycastle/crypto/tls/static;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedHandshakeRecord(I[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/static$do;->do:Lorg/bouncycastle/crypto/tls/static;

    const/4 v1, 0x0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/static;->do(Lorg/bouncycastle/crypto/tls/static;II[BII)Z

    return-void
.end method
