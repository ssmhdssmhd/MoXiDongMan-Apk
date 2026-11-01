.class public abstract Lorg/chromium/net/try$do;
.super Lorg/chromium/net/if$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/if$do;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract break(Ljava/lang/String;)Lorg/chromium/net/try$do;
.end method

.method public abstract case(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/try$do;
.end method

.method public abstract catch(I)Lorg/chromium/net/try$do;
.end method

.method public class(I)Lorg/chromium/net/try$do;
    .locals 0

    return-object p0
.end method

.method public const(I)Lorg/chromium/net/try$do;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic do(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/if$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/try$do;->case(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/try$do;

    move-result-object p1

    return-object p1
.end method

.method public else(Ljava/lang/Object;)Lorg/chromium/net/try$do;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic for(Z)Lorg/chromium/net/if$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/try$do;->this(Z)Lorg/chromium/net/try$do;

    move-result-object p1

    return-object p1
.end method

.method public abstract goto()Lorg/chromium/net/try;
.end method

.method public bridge synthetic if()Lorg/chromium/net/if;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/try$do;->goto()Lorg/chromium/net/try;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic new(Ljava/lang/String;)Lorg/chromium/net/if$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/try$do;->break(Ljava/lang/String;)Lorg/chromium/net/try$do;

    move-result-object p1

    return-object p1
.end method

.method public abstract this(Z)Lorg/chromium/net/try$do;
.end method

.method public bridge synthetic try(I)Lorg/chromium/net/if$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/try$do;->catch(I)Lorg/chromium/net/try$do;

    move-result-object p1

    return-object p1
.end method
