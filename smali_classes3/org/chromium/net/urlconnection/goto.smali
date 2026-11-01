.class public Lorg/chromium/net/urlconnection/goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# instance fields
.field private final do:Lorg/chromium/net/case;


# direct methods
.method public constructor <init>(Lorg/chromium/net/case;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CronetEngine is null."

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lorg/chromium/net/urlconnection/goto;->do:Lorg/chromium/net/case;

    return-void
.end method


# virtual methods
.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1

    const-string v0, "http"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    :goto_0
    new-instance p1, Lorg/chromium/net/urlconnection/try;

    iget-object v0, p0, Lorg/chromium/net/urlconnection/goto;->do:Lorg/chromium/net/case;

    invoke-direct {p1, v0}, Lorg/chromium/net/urlconnection/try;-><init>(Lorg/chromium/net/case;)V

    return-object p1
.end method
