.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$case;
.super Lorg/chromium/net/public;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "case"
.end annotation


# instance fields
.field private final do:Lorg/chromium/net/public;


# direct methods
.method public constructor <init>(Lorg/chromium/net/public;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/public;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$case;->do:Lorg/chromium/net/public;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$case;->do:Lorg/chromium/net/public;

    invoke-virtual {v0}, Lorg/chromium/net/public;->close()V

    return-void
.end method

.method public do()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$case;->do:Lorg/chromium/net/public;

    invoke-virtual {v0}, Lorg/chromium/net/public;->do()J

    move-result-wide v0

    return-wide v0
.end method

.method public for(Landroid/support/v4/yc2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$case;->do:Lorg/chromium/net/public;

    invoke-virtual {v0, p1}, Lorg/chromium/net/public;->for(Landroid/support/v4/yc2;)V

    return-void
.end method

.method public if(Landroid/support/v4/yc2;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$case;->do:Lorg/chromium/net/public;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/public;->if(Landroid/support/v4/yc2;Ljava/nio/ByteBuffer;)V

    return-void
.end method
