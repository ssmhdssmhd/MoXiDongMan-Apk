.class Lorg/chromium/net/do$if;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private do:Landroid/telephony/ServiceState;
    .annotation runtime Landroid/support/v4/el;
    .end annotation
.end field

.field public final synthetic if:Lorg/chromium/net/do;


# direct methods
.method private constructor <init>(Lorg/chromium/net/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/do$if;->if:Lorg/chromium/net/do;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/net/do;Lorg/chromium/net/do$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/net/do$if;-><init>(Lorg/chromium/net/do;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/do$if;->do:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iput-object p1, p0, Lorg/chromium/net/do$if;->do:Landroid/telephony/ServiceState;

    .line 3
    iget-object p1, p0, Lorg/chromium/net/do$if;->if:Lorg/chromium/net/do;

    invoke-static {}, Lorg/chromium/net/do;->if()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/net/do;->for(Lorg/chromium/net/do;Landroid/telephony/TelephonyManager;)V

    :cond_1
    return-void
.end method
