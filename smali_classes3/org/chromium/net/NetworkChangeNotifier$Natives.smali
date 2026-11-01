.class interface abstract Lorg/chromium/net/NetworkChangeNotifier$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract notifyConnectionTypeChanged(JLorg/chromium/net/NetworkChangeNotifier;IJ)V
    .annotation runtime Landroid/support/v4/r21;
        value = "NetworkChangeNotifierDelegateAndroid"
    .end annotation
.end method

.method public abstract notifyMaxBandwidthChanged(JLorg/chromium/net/NetworkChangeNotifier;I)V
    .annotation runtime Landroid/support/v4/r21;
        value = "NetworkChangeNotifierDelegateAndroid"
    .end annotation
.end method

.method public abstract notifyOfNetworkConnect(JLorg/chromium/net/NetworkChangeNotifier;JI)V
    .annotation runtime Landroid/support/v4/r21;
        value = "NetworkChangeNotifierDelegateAndroid"
    .end annotation
.end method

.method public abstract notifyOfNetworkDisconnect(JLorg/chromium/net/NetworkChangeNotifier;J)V
    .annotation runtime Landroid/support/v4/r21;
        value = "NetworkChangeNotifierDelegateAndroid"
    .end annotation
.end method

.method public abstract notifyOfNetworkSoonToDisconnect(JLorg/chromium/net/NetworkChangeNotifier;J)V
    .annotation runtime Landroid/support/v4/r21;
        value = "NetworkChangeNotifierDelegateAndroid"
    .end annotation
.end method

.method public abstract notifyPurgeActiveNetworkList(JLorg/chromium/net/NetworkChangeNotifier;[J)V
    .annotation runtime Landroid/support/v4/r21;
        value = "NetworkChangeNotifierDelegateAndroid"
    .end annotation
.end method
