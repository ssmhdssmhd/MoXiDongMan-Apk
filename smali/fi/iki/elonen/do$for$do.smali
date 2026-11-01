.class Lfi/iki/elonen/do$for$do;
.super Lfi/iki/elonen/NanoHTTPD$Response;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/do$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic catch:Lfi/iki/elonen/do$for;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/do$for;Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 6

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/do$for$do;->catch:Lfi/iki/elonen/do$for;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method public catch(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$for$do;->catch:Lfi/iki/elonen/do$for;

    invoke-static {v0, p1}, Lfi/iki/elonen/do$for;->access$002(Lfi/iki/elonen/do$for;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 2
    iget-object v0, p0, Lfi/iki/elonen/do$for$do;->catch:Lfi/iki/elonen/do$for;

    sget-object v1, Lfi/iki/elonen/do$if;->CONNECTING:Lfi/iki/elonen/do$if;

    invoke-static {v0, v1}, Lfi/iki/elonen/do$for;->access$102(Lfi/iki/elonen/do$for;Lfi/iki/elonen/do$if;)Lfi/iki/elonen/do$if;

    .line 3
    invoke-super {p0, p1}, Lfi/iki/elonen/NanoHTTPD$Response;->catch(Ljava/io/OutputStream;)V

    .line 4
    iget-object p1, p0, Lfi/iki/elonen/do$for$do;->catch:Lfi/iki/elonen/do$for;

    sget-object v0, Lfi/iki/elonen/do$if;->OPEN:Lfi/iki/elonen/do$if;

    invoke-static {p1, v0}, Lfi/iki/elonen/do$for;->access$102(Lfi/iki/elonen/do$for;Lfi/iki/elonen/do$if;)Lfi/iki/elonen/do$if;

    .line 5
    iget-object p1, p0, Lfi/iki/elonen/do$for$do;->catch:Lfi/iki/elonen/do$for;

    invoke-virtual {p1}, Lfi/iki/elonen/do$for;->onOpen()V

    .line 6
    iget-object p1, p0, Lfi/iki/elonen/do$for$do;->catch:Lfi/iki/elonen/do$for;

    invoke-static {p1}, Lfi/iki/elonen/do$for;->access$200(Lfi/iki/elonen/do$for;)V

    return-void
.end method
