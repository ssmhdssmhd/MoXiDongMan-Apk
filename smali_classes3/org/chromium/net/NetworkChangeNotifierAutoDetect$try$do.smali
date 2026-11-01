.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:J

.field public final synthetic for:Z

.field public final synthetic if:I

.field public final synthetic new:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;


# direct methods
.method public constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;JIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->new:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    iput-wide p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->do:J

    iput p4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->if:I

    iput-boolean p5, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->for:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->new:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;->if:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->this(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->do:J

    iget v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->if:I

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onNetworkConnect(JI)V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->for:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->new:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;->if:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->this(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->if:I

    invoke-interface {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionTypeChanged(I)V

    .line 4
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->new:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;->if:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->this(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try$do;->do:J

    aput-wide v3, v1, v2

    invoke-interface {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->purgeActiveNetworkList([J)V

    :cond_0
    return-void
.end method
