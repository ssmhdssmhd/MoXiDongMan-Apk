.class public interface abstract Lorg/bouncycastle/crypto/tls/TlsAuthentication;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getClientCredentials(Lorg/bouncycastle/crypto/tls/catch;)Lorg/bouncycastle/crypto/tls/TlsCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract notifyServerCertificate(Lorg/bouncycastle/crypto/tls/break;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
