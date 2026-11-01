.class interface abstract Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetBidirectionalStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract createBidirectionalStream(Lorg/chromium/net/impl/CronetBidirectionalStream;JZZZIZI)J
.end method

.method public abstract destroy(JLorg/chromium/net/impl/CronetBidirectionalStream;Z)V
    .annotation runtime Landroid/support/v4/r21;
        value = "CronetBidirectionalStreamAdapter"
    .end annotation
.end method

.method public abstract readData(JLorg/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;II)Z
    .annotation runtime Landroid/support/v4/r21;
        value = "CronetBidirectionalStreamAdapter"
    .end annotation
.end method

.method public abstract sendRequestHeaders(JLorg/chromium/net/impl/CronetBidirectionalStream;)V
    .annotation runtime Landroid/support/v4/r21;
        value = "CronetBidirectionalStreamAdapter"
    .end annotation
.end method

.method public abstract start(JLorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Z)I
    .annotation runtime Landroid/support/v4/r21;
        value = "CronetBidirectionalStreamAdapter"
    .end annotation
.end method

.method public abstract writevData(JLorg/chromium/net/impl/CronetBidirectionalStream;[Ljava/nio/ByteBuffer;[I[IZ)Z
    .annotation runtime Landroid/support/v4/r21;
        value = "CronetBidirectionalStreamAdapter"
    .end annotation
.end method
