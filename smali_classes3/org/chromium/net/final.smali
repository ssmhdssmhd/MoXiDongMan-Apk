.class final Lorg/chromium/net/final;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final do:Lorg/chromium/net/ProxyChangeListener;


# direct methods
.method public constructor <init>(Lorg/chromium/net/ProxyChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/final;->do:Lorg/chromium/net/ProxyChangeListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lorg/chromium/net/final;->do:Lorg/chromium/net/ProxyChangeListener;

    invoke-virtual {p1, p2}, Lorg/chromium/net/ProxyChangeListener;->throw(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
