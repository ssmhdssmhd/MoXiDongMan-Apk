.class public abstract Lorg/chromium/net/case;
.super Lorg/chromium/net/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/case$do;
    }
.end annotation


# static fields
.field public static final case:I = 0x3

.field public static final else:I = 0x4

.field public static final for:I = 0x0

.field public static final goto:I = 0x5

.field public static final if:I = -0x1

.field public static final new:I = 0x1

.field public static final try:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/for;-><init>()V

    return-void
.end method


# virtual methods
.method public break(Lorg/chromium/net/native$do;)V
    .locals 0

    return-void
.end method

.method public catch(Landroid/support/v4/e31;)V
    .locals 0

    return-void
.end method

.method public class(Landroid/support/v4/f31;)V
    .locals 0

    return-void
.end method

.method public const(ZZZ)V
    .locals 0

    return-void
.end method

.method public final()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract import(Ljava/lang/String;Lorg/chromium/net/if$if;Ljava/util/concurrent/Executor;)Lorg/chromium/net/try$do;
.end method

.method public abstract native(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;)Lorg/chromium/net/else$do;
.end method

.method public public(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method

.method public return(Lorg/chromium/net/native$do;)V
    .locals 0

    return-void
.end method

.method public static(Landroid/support/v4/e31;)V
    .locals 0

    return-void
.end method

.method public super()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public switch(Landroid/support/v4/f31;)V
    .locals 0

    return-void
.end method

.method public throw()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public throws(Ljava/lang/String;ZI)V
    .locals 0

    return-void
.end method

.method public bridge synthetic try(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;)Lorg/chromium/net/return$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/net/case;->native(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;)Lorg/chromium/net/else$do;

    move-result-object p1

    return-object p1
.end method

.method public while()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
