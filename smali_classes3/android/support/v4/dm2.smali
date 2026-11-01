.class public Landroid/support/v4/dm2;
.super Landroid/support/v4/pm2;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/intl/chardet/nsICharsetDetector;


# instance fields
.field public native:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/pm2;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/dm2;->native:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/pm2;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/dm2;->native:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    return-void
.end method


# virtual methods
.method public DoIt([BIZ)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/pm2;->if([BI)Z

    iget-boolean p1, p0, Landroid/support/v4/pm2;->goto:Z

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public Done()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/pm2;->do()V

    return-void
.end method

.method public Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/dm2;->native:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    return-void
.end method

.method public for(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dm2;->native:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;->Notify(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public this([BI)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
