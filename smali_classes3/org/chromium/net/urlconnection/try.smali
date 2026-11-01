.class Lorg/chromium/net/urlconnection/try;
.super Ljava/net/URLStreamHandler;
.source "SourceFile"


# instance fields
.field private final do:Lorg/chromium/net/case;


# direct methods
.method public constructor <init>(Lorg/chromium/net/case;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/urlconnection/try;->do:Lorg/chromium/net/case;

    return-void
.end method


# virtual methods
.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/try;->do:Lorg/chromium/net/case;

    invoke-virtual {v0, p1}, Lorg/chromium/net/for;->case(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/try;->do:Lorg/chromium/net/case;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/case;->public(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
