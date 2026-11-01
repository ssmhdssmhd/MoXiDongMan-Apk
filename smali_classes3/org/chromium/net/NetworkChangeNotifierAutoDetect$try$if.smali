.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:J

.field public final synthetic for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;JI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$if;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    iput-wide p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$if;->do:J

    iput p4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$if;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$if;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;->if:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->this(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$if;->do:J

    iget v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$if;->if:I

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onNetworkConnect(JI)V

    return-void
.end method
