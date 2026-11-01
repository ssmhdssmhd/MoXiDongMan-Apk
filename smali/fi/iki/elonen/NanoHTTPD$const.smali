.class public final Lfi/iki/elonen/NanoHTTPD$const;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "const"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b2cc1565237327cL


# instance fields
.field private final status:Lfi/iki/elonen/NanoHTTPD$Response$for;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$for;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$const;->status:Lfi/iki/elonen/NanoHTTPD$Response$for;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$for;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$const;->status:Lfi/iki/elonen/NanoHTTPD$Response$for;

    return-void
.end method


# virtual methods
.method public getStatus()Lfi/iki/elonen/NanoHTTPD$Response$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$const;->status:Lfi/iki/elonen/NanoHTTPD$Response$for;

    return-object v0
.end method
